// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:isar_community/isar.dart' as _i214;

import '../community/bloc/community_cubit.dart' as _i744;
import '../community/bloc/community_feed_cubit.dart' as _i832;
import '../community/bloc/craete_community_cubit.dart' as _i329;
import '../community/cubit/create_post_cubit.dart' as _i571;
import '../core/api/api_consumer.dart' as _i114;
import '../core/api/dio_consumer.dart' as _i84;
import '../core/bloc/uniun/uniun_bloc.dart' as _i624;
import '../data/datasources/local_datasource.dart' as _i2;
import '../data/datasources/remote_datasource.dart' as _i79;
import '../data/repositories/community_repository_impl.dart' as _i46;
import '../data/repositories/note_repository_impl.dart' as _i498;
import '../data/repositories/user_repository_impl.dart' as _i223;
import '../domain/repositories/community_repository.dart' as _i248;
import '../domain/repositories/note_repository.dart' as _i116;
import '../domain/repositories/user_repository.dart' as _i544;
import '../domain/usecases/community_usecase.dart' as _i659;
import '../domain/usecases/user_usecase.dart' as _i622;
import '../posts/bloc/post_bloc.dart' as _i450;
import '../search/bloc/search_bloc.dart' as _i995;
import '../user/bloc/login_cubit.dart' as _i78;
import '../user/bloc/signup_cubit.dart' as _i846;
import 'injectable_singleton_module.dart' as _i327;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i174.GetIt> init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final injectableSingletonModule = _$InjectableSingletonModule();
    final isarModule = _$IsarModule();
    gh.factoryAsync<_i361.Dio>(() => injectableSingletonModule.getDio());
    gh.factory<_i624.UniunBloc>(() => _i624.UniunBloc());
    await gh.singletonAsync<_i214.Isar>(
      () => isarModule.createIsar(),
      preResolve: true,
    );
    gh.lazySingleton<_i114.ApiConsumer>(() => _i84.DioConsumer());
    gh.factory<_i450.PostBloc>(() => _i450.PostBloc(
          gh<InvalidType>(),
          gh<InvalidType>(),
          gh<InvalidType>(),
        ));
    gh.lazySingleton<_i79.RemoteDataSource>(
        () => _i79.RemoteDataSourceImpl(apiConsumer: gh<_i114.ApiConsumer>()));
    gh.factory<_i116.NoteRepository>(
        () => _i498.NoteRepositoryImpl(isar: gh<_i214.Isar>()));
    gh.singleton<_i2.LocalDataSource>(
        () => _i2.LocalDataSourceImp(isar: gh<_i214.Isar>()));
    gh.factory<_i544.UserRepository>(
        () => _i223.UserRepositoryImpl(gh<_i79.RemoteDataSource>()));
    gh.factory<_i248.CommunityRepository>(() => _i46.CommunityRepositoryImpl(
          remoteDataSource: gh<_i79.RemoteDataSource>(),
          localDataSource: gh<_i2.LocalDataSource>(),
        ));
    gh.factory<_i622.LoginUserUseCase>(
        () => _i622.LoginUserUseCase(gh<_i544.UserRepository>()));
    gh.factory<_i622.SignUpUserUseCase>(
        () => _i622.SignUpUserUseCase(gh<_i544.UserRepository>()));
    gh.factory<_i659.GetCommunityUseCase>(
        () => _i659.GetCommunityUseCase(gh<_i248.CommunityRepository>()));
    gh.factory<_i659.JoinCommunityUseCase>(
        () => _i659.JoinCommunityUseCase(gh<_i248.CommunityRepository>()));
    gh.factory<_i659.LeaveCommunityUseCase>(
        () => _i659.LeaveCommunityUseCase(gh<_i248.CommunityRepository>()));
    gh.factory<_i659.GetCommunityFeedUseCase>(
        () => _i659.GetCommunityFeedUseCase(gh<_i248.CommunityRepository>()));
    gh.factory<_i659.BlockUserFromCommunityUseCase>(() =>
        _i659.BlockUserFromCommunityUseCase(gh<_i248.CommunityRepository>()));
    gh.factory<_i659.UnblockUserFromCommunityUseCase>(() =>
        _i659.UnblockUserFromCommunityUseCase(gh<_i248.CommunityRepository>()));
    gh.factory<_i659.CreateCommunityUseCase>(
        () => _i659.CreateCommunityUseCase(gh<_i248.CommunityRepository>()));
    gh.factory<_i659.SearchCommunityUseCase>(
        () => _i659.SearchCommunityUseCase(gh<_i248.CommunityRepository>()));
    gh.factory<_i659.GetTrendingCommunitiesUseCase>(() =>
        _i659.GetTrendingCommunitiesUseCase(gh<_i248.CommunityRepository>()));
    gh.factory<_i329.CreateCommunityCubit>(
        () => _i329.CreateCommunityCubit(gh<_i659.CreateCommunityUseCase>()));
    gh.factory<_i571.CreatePostCubit>(() => _i571.CreatePostCubit(
          gh<_i659.GetCommunityUseCase>(),
          gh<InvalidType>(),
        ));
    gh.factory<_i846.SignUpCubit>(
        () => _i846.SignUpCubit(gh<_i622.SignUpUserUseCase>()));
    gh.factory<_i78.LoginCubit>(
        () => _i78.LoginCubit(gh<_i622.LoginUserUseCase>()));
    gh.factoryParam<_i744.CommunityCubit, int?, dynamic>((
      communityID,
      _,
    ) =>
        _i744.CommunityCubit(
          getCommunityUseCase: gh<_i659.GetCommunityUseCase>(),
          joinCommunityUseCase: gh<_i659.JoinCommunityUseCase>(),
          leaveCommunityUseCase: gh<_i659.LeaveCommunityUseCase>(),
          communityID: communityID,
        ));
    gh.factoryParam<_i832.CommunityFeedCubit, int?, dynamic>((
      communityID,
      _,
    ) =>
        _i832.CommunityFeedCubit(
          getCommunityFeedUseCase: gh<_i659.GetCommunityFeedUseCase>(),
          communityID: communityID,
        ));
    gh.factory<_i995.SearchBloc>(() => _i995.SearchBloc(
          gh<_i659.SearchCommunityUseCase>(),
          gh<_i659.JoinCommunityUseCase>(),
          gh<_i659.LeaveCommunityUseCase>(),
          gh<_i659.GetTrendingCommunitiesUseCase>(),
        ));
    return this;
  }
}

class _$InjectableSingletonModule extends _i327.InjectableSingletonModule {}

class _$IsarModule extends _i2.IsarModule {}
