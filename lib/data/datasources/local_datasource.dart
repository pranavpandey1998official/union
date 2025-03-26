

import 'package:injectable/injectable.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'package:uniun/core/error/error_exception.dart';
import 'package:uniun/data/models/community_model.dart';

abstract class LocalDataSource {
  Future<CommunityModel?> getCommunity(int id);
  Future<CommunityModel> saveCommunity(CommunityModel community);
  Future<CommunityModel?> joinCommunity(int id);
}

@module
abstract class IsarModule {
  @singleton
  @preResolve
  Future<Isar> createIsar() async {
    final dir = await getApplicationDocumentsDirectory();
    final isar = await Isar.open(
      [CommunityModelSchema],
      directory: dir.path,
    );
    return isar;
  }
}

const COMMUNITY_CACHE_TIMEOUT = 60 * 60 * 1000; // 1 hour

@Singleton(as: LocalDataSource)
class LocalDataSourceImp extends LocalDataSource {
  final Isar isar;
  LocalDataSourceImp ({required this.isar});

  Future<CommunityModel?> getCommunity(int id)  async {
    final community = await isar.communityModels.get(id);
    if (community == null) {
      return null;
    }
    if(community.updated != null && DateTime.now().millisecondsSinceEpoch - community.updated!.millisecondsSinceEpoch > COMMUNITY_CACHE_TIMEOUT) {
      await isar.writeTxn(() async {
        isar.communityModels.delete(id);
        return null;
      });
    }
    return community;
  }

  Future<CommunityModel> saveCommunity(CommunityModel community) async {
    community.updated = DateTime.now();
    await isar.writeTxn(() async {
      await isar.communityModels.put(community);
    });
    return community;
  }
  
  @override
  Future<CommunityModel?> joinCommunity(int id) async {
    final community = await isar.communityModels.get(id);
    if (community != null) {
      community.isMember = true;
      community.memberCount = (community.memberCount ?? 0) + 1;
      await isar.communityModels.put(community);
    }
    return community;
  }
 
}