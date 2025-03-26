import 'package:injectable/injectable.dart';
import 'package:uniun/common/constants.dart';
import 'package:uniun/core/api/api_consumer.dart';

import 'package:uniun/core/api_response/api_base_response.dart';
import 'package:uniun/core/constants/constants.dart';
import 'package:uniun/core/dio_response/dio_response.dart';
import 'package:uniun/core/error/error_exception.dart';
import 'package:uniun/core/error_reponse/error_response.dart';
import 'package:uniun/data/models/common_response.dart';
import 'package:uniun/data/models/community_model.dart';
import 'package:uniun/data/models/post_metadata_model.dart';
import 'package:uniun/data/models/user_model.dart';

abstract class RemoteDataSource {
  // Future<ApiResponse<LoginEntity>> login(Map<String, dynamic>? params);
  // Future<ApiResponse<SignUpEntity>> signUp(Map<String, dynamic>? params);
  // Future<ApiResponse<ForgotPasswordEntity>> forgotPassword(Map<String, dynamic>? params);

  // //WEATHER
  // Future<ApiResponse<List<LocationEntity>>> location(String? params);
  // Future<ApiResponse<ForecastEntity>> forecastById(Map<String, dynamic>? params);
  Future<ApiResponse<CommunityModel>> getCommunity(int communityId);
  Future<ApiResponse<SuccessObject>> joinCommunity(int communityId);
  Future<ApiResponse<SuccessObject>> leaveCommunity(int communityId);
  Future<ApiResponse<SuccessObject>> evictUserFromCommunity(int communityId, int userIdToRemove);
  Future<ApiResponse<SuccessObject>> blockUserFromCommunity(int communityId, int userIdToBlock);
  Future<ApiResponse<SuccessObject>> unblockUserFromCommunity(int communityId, int userIdToUnblock);
  Future<ApiResponse<CommunityModel>> createCommunity(String name, String about);
  Future<ApiResponse<List<CommunityModel>>> searchCommunity(String query);
  Future<ApiResponse<List<CommunityModel>>> getTrendingCommunities();

  Future<ApiResponse<List<PostModel>>> getAllPosts(int communityID, OrderBy orderBy, SortBy sortBy);
  Future<ApiResponse<PostModel>> getPost(int postID);

  Future<ApiResponse<AuthUserModel>> loginUser(String email, String password);
  Future<ApiResponse<AuthUserModel>> signUpUser(String email, String password, String name, String username);

  Future<ApiResponse<PostModel>> createPost(int communityID, String title, String type, bool isNSFW, String body);

}


@LazySingleton(as: RemoteDataSource)
class RemoteDataSourceImpl implements RemoteDataSource {
  final ApiConsumer apiConsumer;

  RemoteDataSourceImpl({required this.apiConsumer});
  
  @override
  Future<ApiResponse<CommunityModel>> getCommunity(int communityId) async {
    final response = await apiConsumer.get(url: '/community', params: {'communityID': communityId});
    if (response.statusCode != StatusCodeConstant.statusCodeOk200) {
      var errorResponse = ErrorResponse.fromJson(response.data);
      throw ErrorException(message: errorResponse.error.message);
    }
    return ApiResponse(data: CommunityModel.fromJson(response.data));
  }
  
  @override
  Future<ApiResponse<SuccessObject>> joinCommunity(int communityId) async {
    final response = await apiConsumer.post(url: '/community/join', data: {'communityID': communityId});
    if (response.statusCode != StatusCodeConstant.statusCodeOk200) {
      var errorResponse = ErrorResponse.fromJson(response.data);
      throw ErrorException(message: errorResponse.error.message);
    }
    return const ApiResponse(data: SuccessObject(success: true));
  } 

  @override
  Future<ApiResponse<SuccessObject>> leaveCommunity(int communityId) async{
    final response = await apiConsumer.post(url: '/community/leave', data: {'communityID': communityId});
    if (response.statusCode != StatusCodeConstant.statusCodeOk200) {
      var errorResponse = ErrorResponse.fromJson(response.data);
      throw ErrorException(message: errorResponse.error.message);
    }
    return const ApiResponse(data: SuccessObject(success: true));
  } 

  @override
  Future<ApiResponse<SuccessObject>> evictUserFromCommunity(int communityId, int userIdToRemove) async{
    final response = await apiConsumer.post(url: '/community/evict', data: {'communityID': communityId, 'userIdToRemove': userIdToRemove });
    if (response.statusCode != StatusCodeConstant.statusCodeOk200) {
      var errorResponse = ErrorResponse.fromJson(response.data);
      throw ErrorException(message: errorResponse.error.message);
    }
    return const ApiResponse(data: SuccessObject(success: true));
  } 

  @override
  Future<ApiResponse<SuccessObject>> blockUserFromCommunity(int communityId, int userIdToBlock) async{
    final response = await apiConsumer.post(url: '/community/block', data: {'communityID': communityId, 'useIdToBlock': userIdToBlock });
    if (response.statusCode != StatusCodeConstant.statusCodeOk200) {
      var errorResponse = ErrorResponse.fromJson(response.data);
      throw ErrorException(message: errorResponse.error.message);
    }
    return const ApiResponse(data: SuccessObject(success: true));
  }
  
  @override
  Future<ApiResponse<SuccessObject>> unblockUserFromCommunity(int communityId, int userIdToUnblock) async {
    final response = await apiConsumer.post(url: '/community/unblock', data: {'communityID': communityId, 'userIdToUnblock': userIdToUnblock });
    if (response.statusCode != StatusCodeConstant.statusCodeOk200) {
      var errorResponse = ErrorResponse.fromJson(response.data);
      throw ErrorException(message: errorResponse.error.message);
    }
    return const ApiResponse(data: SuccessObject(success: true));
  }
  
  @override
  Future<ApiResponse<List<PostModel>>> getAllPosts(int communityID, OrderBy orderBy, SortBy sortBy) async {
    final response = await apiConsumer.get(url: '/community/all_posts', params: {'communityID': communityID });
    if (response.statusCode != StatusCodeConstant.statusCodeOk200) {
      var errorResponse = ErrorResponse.fromJson(response.data);
      throw ErrorException(message: errorResponse.error.message);
    }
    final data = response.data.map<PostModel>((data) => PostModel.fromJson(data)).toList();
    return ApiResponse(data: data);
  }
  
  @override
  Future<ApiResponse<PostModel>> getPost(int postID) async {
    final response = await apiConsumer.get(url: '/post', params: {'postID': postID});
    if (response.statusCode != StatusCodeConstant.statusCodeOk200) {
      var errorResponse = ErrorResponse.fromJson(response.data);
      throw ErrorException(message: errorResponse.error.message);
    }
    return ApiResponse(data: PostModel.fromJson(response.data));
  }
  
  @override
  Future<ApiResponse<AuthUserModel>> loginUser(String email, String password) async {
    final response = await apiConsumer.post(url: '/user/login', data: {'email': email, 'password': password});
    if (response.statusCode != StatusCodeConstant.statusCodeOk200) {
      var errorResponse = ErrorResponse.fromJson(response.data);
      throw ErrorException(message: errorResponse.error.message);
    }
    return ApiResponse(data: AuthUserModel.fromJson(response.data));
  }
  
  @override
  Future<ApiResponse<AuthUserModel>> signUpUser(String email, String password, String name, String username) async {
    final response = await apiConsumer.post(url: '/user/signup', data: {'email': email, 'password': password, 'name': name, 'username': username});
    if (response.statusCode != StatusCodeConstant.statusCodeOk200) {
      var errorResponse = ErrorResponse.fromJson(response.data);
      throw ErrorException(message: errorResponse.error.message);
    }
    return ApiResponse(data: AuthUserModel.fromJson(response.data));
  }
  
  @override
  Future<ApiResponse<CommunityModel>> createCommunity(String name, String about) async {
    final response = await apiConsumer.post(url: '/community', data: {'name': name, 'about': about});
    if (response.statusCode != StatusCodeConstant.statusCodeOk200) {
      var errorResponse = ErrorResponse.fromJson(response.data);
      throw ErrorException(message: errorResponse.error.message);
    }
    return ApiResponse(data: CommunityModel.fromJson(response.data));
  }
  
  @override
  Future<ApiResponse<List<CommunityModel>>> searchCommunity(String query) async {
    final response = await apiConsumer.get(url: '/community/search', params: {'qstr': query});
    if (response.statusCode != StatusCodeConstant.statusCodeOk200) {
      var errorResponse = ErrorResponse.fromJson(response.data);
      throw ErrorException(message: errorResponse.error.message);
    }
    final data = response.data.map<CommunityModel>((data) => CommunityModel.fromJson(data)).toList();
    return ApiResponse(data: data);
  }
  
  @override
  Future<ApiResponse<List<CommunityModel>>> getTrendingCommunities() async {
    final response = await apiConsumer.get(url: '/community/trending');
    if (response.statusCode != StatusCodeConstant.statusCodeOk200) {
      var errorResponse = ErrorResponse.fromJson(response.data);
      throw ErrorException(message: errorResponse.error.message);
    }
    final data = response.data.map<CommunityModel>((data) => CommunityModel.fromJson(data)).toList();
    return ApiResponse(data: data);
  }
  
  @override
  Future<ApiResponse<PostModel>> createPost(int communityID, String title, String type, bool isNSFW, String body) async {
    final response = await apiConsumer.post(url: '/post', data: {'communityID': communityID, 'title': title, 'body': body, 'nsfw': isNSFW, 'type': type});
    if (response.statusCode != StatusCodeConstant.statusCodeOk200) {
      var errorResponse = ErrorResponse.fromJson(response.data);
      throw ErrorException(message: errorResponse.error.message);
    }
    return ApiResponse(data: PostModel.fromJson(response.data));
  }
}