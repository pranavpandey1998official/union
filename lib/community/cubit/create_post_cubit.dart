import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import 'package:uniun/domain/entities/community/community_entity.dart';
import 'package:uniun/domain/entities/post/post_entity.dart';
import 'package:uniun/domain/inputs/comment_input.dart';
import 'package:uniun/domain/inputs/community_input.dart';
import 'package:uniun/domain/inputs/post_input.dart';
import 'package:uniun/domain/usecases/comment_usecase.dart';
import 'package:uniun/domain/usecases/community_usecase.dart';
import 'package:uniun/domain/usecases/post_usecase.dart';
import '../../core/models/post_view_media.dart';

part 'create_post_state.dart';

@injectable
class CreatePostCubit extends Cubit<CreatePostState> {
  GetCommunityUseCase getCommunityUseCase;
  CreatePostUseCase createPostUseCase;

  CreatePostCubit(this.getCommunityUseCase, this.createPostUseCase) : super(const CreatePostState(status: CreatePostStatus.uninitialized));

  Future<void> clearMessage() async {
    
    emit(state.copyWith(status: CreatePostStatus.initial, message: null));
  }

  Future<void> initial(int communityID) async {
    final result = await getCommunityUseCase.call(GetCommunityInput(communityID: communityID), cached: true);
    result.fold(
      (failure) {
        emit(state.copyWith(status: CreatePostStatus.error, message: failure.message));
      },
      (community) {
        emit(state.copyWith(status: CreatePostStatus.initial, community: community));
      },
    );
  }

  Future<void> uploadImage(String imageFile, {bool isPostImage = false}) async {
  }

  /// Creates or edits a post. When successful, it emits the newly created/updated post in the form of a [PostViewMedia]
  /// and returns the newly created post id.
  Future<void> createPost({required int communityId, required String title, required  int type, required  bool isNSFW, required String body  }) async {
   emit(state.copyWith(status: CreatePostStatus.submitting));
   String? stringType = null; 
   if (type == 0) {
      stringType = "TEXT";
    } else if(type == 1) {
      stringType = "LINK";
    } else if(type == 2) {
      stringType= "IMAGE";
    }
    else {
      print("Invalid type");
      return;
    }
   final result = await createPostUseCase.call(CreatePostInput(communityID: communityId, title: title, type: stringType, isNSFW: isNSFW, body: body)); 
   result.fold(
     (failure) {
       emit(state.copyWith(status: CreatePostStatus.error, message: failure.message));
     },
     (post) {
       emit(state.copyWith(status: CreatePostStatus.success, postEntity: post));
     },
   );

  }
}
