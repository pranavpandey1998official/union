// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:isar/isar.dart' as _i6;

import '../community/bloc/community_cubit.dart' as _i21;
import '../community/bloc/community_feed_cubit.dart' as _i22;
import '../community/bloc/craete_community_cubit.dart' as _i23;
import '../community/cubit/create_post_cubit.dart' as _i29;
import '../core/api/api_consumer.dart' as _i3;
import '../core/api/dio_consumer.dart' as _i4;
import '../core/bloc/uniun/uniun_bloc.dart' as _i9;
import '../data/datasources/local_datasource.dart' as _i7;
import '../data/datasources/remote_datasource.dart' as _i8;
import '../data/repositories/comment_repository_impl.dart' as _i13;
import '../data/repositories/community_repository_impl.dart' as _i15;
import '../data/repositories/post_repository_imp.dart' as _i20;
import '../data/repositories/user_repository_impl.dart' as _i11;
import '../domain/repositories/comment_repository.dart' as _i12;
import '../domain/repositories/community_repository.dart' as _i14;
import '../domain/repositories/post_repository.dart' as _i19;
import '../domain/repositories/user_repository.dart' as _i10;
import '../domain/usecases/comment_usecase.dart' as _i17;
import '../domain/usecases/community_usecase.dart' as _i16;
import '../domain/usecases/post_usecase.dart' as _i24;
import '../domain/usecases/user_usecase.dart' as _i18;
import '../posts/bloc/post_bloc.dart' as _i26;
import '../search/bloc/search_bloc.dart' as _i27;
import '../user/bloc/login_cubit.dart' as _i25;
import '../user/bloc/signup_cubit.dart' as _i28;
import 'injectable_singleton_module.dart' as _i30;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i1.GetIt> init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final injectableSingletonModule = _$InjectableSingletonModule();
    final isarModule = _$IsarModule();
    gh.lazySingleton<_i3.ApiConsumer>(() => _i4.DioConsumer());
    gh.factoryAsync<_i5.Dio>(() => injectableSingletonModule.getDio());
    await gh.singletonAsync<_i6.Isar>(
      () => isarModule.createIsar(),
      preResolve: true,
    );
    gh.singleton<_i7.LocalDataSource>(
        _i7.LocalDataSourceImp(isar: gh<_i6.Isar>()));
    gh.lazySingleton<_i8.RemoteDataSource>(
        () => _i8.RemoteDataSourceImpl(apiConsumer: gh<_i3.ApiConsumer>()));
    gh.factory<_i9.UniunBloc>(() => _i9.UniunBloc());
    gh.factory<_i10.UserRepository>(
        () => _i11.UserRepositoryImpl(gh<_i8.RemoteDataSource>()));
    gh.factory<_i12.CommentRepository>(
        () => _i13.CommentRepositoryImpl(gh<_i8.RemoteDataSource>()));
    gh.factory<_i14.CommunityRepository>(() => _i15.CommunityRepositoryImpl(
          remoteDataSource: gh<_i8.RemoteDataSource>(),
          localDataSource: gh<_i7.LocalDataSource>(),
        ));
    gh.factory<_i16.CreateCommunityUseCase>(
        () => _i16.CreateCommunityUseCase(gh<_i14.CommunityRepository>()));
    gh.factory<_i17.GetCommentUserCase>(
        () => _i17.GetCommentUserCase(gh<_i12.CommentRepository>()));
    gh.factory<_i16.GetCommunityFeedUseCase>(
        () => _i16.GetCommunityFeedUseCase(gh<_i14.CommunityRepository>()));
    gh.factory<_i16.GetCommunityUseCase>(
        () => _i16.GetCommunityUseCase(gh<_i14.CommunityRepository>()));
    gh.factory<_i17.GetSubCommentsUseCase>(
        () => _i17.GetSubCommentsUseCase(gh<_i12.CommentRepository>()));
    gh.factory<_i16.GetTrendingCommunitiesUseCase>(() =>
        _i16.GetTrendingCommunitiesUseCase(gh<_i14.CommunityRepository>()));
    gh.factory<_i16.JoinCommunityUseCase>(
        () => _i16.JoinCommunityUseCase(gh<_i14.CommunityRepository>()));
    gh.factory<_i16.LeaveCommunityUseCase>(
        () => _i16.LeaveCommunityUseCase(gh<_i14.CommunityRepository>()));
    gh.factory<_i18.LoginUserUseCase>(
        () => _i18.LoginUserUseCase(gh<_i10.UserRepository>()));
    gh.factory<_i19.PostRepository>(
        () => _i20.PostRepositoryImpl(gh<_i8.RemoteDataSource>()));
    gh.factory<_i16.SearchCommunityUseCase>(
        () => _i16.SearchCommunityUseCase(gh<_i14.CommunityRepository>()));
    gh.factory<_i18.SignUpUserUseCase>(
        () => _i18.SignUpUserUseCase(gh<_i10.UserRepository>()));
    gh.factory<_i16.UnblockUserFromCommunityUseCase>(() =>
        _i16.UnblockUserFromCommunityUseCase(gh<_i14.CommunityRepository>()));
    gh.factory<_i16.BlockUserFromCommunityUseCase>(() =>
        _i16.BlockUserFromCommunityUseCase(gh<_i14.CommunityRepository>()));
    gh.factoryParam<_i21.CommunityCubit, int?, dynamic>((
      communityID,
      _,
    ) =>
        _i21.CommunityCubit(
          getCommunityUseCase: gh<_i16.GetCommunityUseCase>(),
          joinCommunityUseCase: gh<_i16.JoinCommunityUseCase>(),
          leaveCommunityUseCase: gh<_i16.LeaveCommunityUseCase>(),
          communityID: communityID,
        ));
    gh.factoryParam<_i22.CommunityFeedCubit, int?, dynamic>((
      communityID,
      _,
    ) =>
        _i22.CommunityFeedCubit(
          getCommunityFeedUseCase: gh<_i16.GetCommunityFeedUseCase>(),
          communityID: communityID,
        ));
    gh.factory<_i23.CreateCommunityCubit>(
        () => _i23.CreateCommunityCubit(gh<_i16.CreateCommunityUseCase>()));
    gh.factory<_i24.CreatePostUseCase>(
        () => _i24.CreatePostUseCase(gh<_i19.PostRepository>()));
    gh.factory<_i24.GetAllCommentsForPost>(
        () => _i24.GetAllCommentsForPost(gh<_i19.PostRepository>()));
    gh.factory<_i24.GetPostUseCase>(
        () => _i24.GetPostUseCase(gh<_i19.PostRepository>()));
    gh.factory<_i25.LoginCubit>(
        () => _i25.LoginCubit(gh<_i18.LoginUserUseCase>()));
    gh.factory<_i26.PostBloc>(() => _i26.PostBloc(
          gh<_i24.GetPostUseCase>(),
          gh<_i17.GetCommentUserCase>(),
          gh<_i24.GetAllCommentsForPost>(),
        ));
    gh.factory<_i27.SearchBloc>(() => _i27.SearchBloc(
          gh<_i16.SearchCommunityUseCase>(),
          gh<_i16.JoinCommunityUseCase>(),
          gh<_i16.LeaveCommunityUseCase>(),
          gh<_i16.GetTrendingCommunitiesUseCase>(),
        ));
    gh.factory<_i28.SignUpCubit>(
        () => _i28.SignUpCubit(gh<_i18.SignUpUserUseCase>()));
    gh.factory<_i29.CreatePostCubit>(() => _i29.CreatePostCubit(
          gh<_i16.GetCommunityUseCase>(),
          gh<_i24.CreatePostUseCase>(),
        ));
    return this;
  }
}

class _$InjectableSingletonModule extends _i30.InjectableSingletonModule {}

class _$IsarModule extends _i7.IsarModule {}
