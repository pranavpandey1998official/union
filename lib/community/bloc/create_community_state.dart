import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:uniun/core/form/form_item.dart';
import 'package:uniun/domain/entities/community/community_entity.dart';
import 'package:uniun/domain/entities/user/user_entity.dart';

enum CreateCommunityStatus {
  initial,
  loading,
  success,
  error,
}

class CreateCommunityState extends Equatable {
  const CreateCommunityState({
    required this.formKey,
    this.name = '',
    this.about = '',
    this.status = CreateCommunityStatus.initial,
    this.errorMessage,
    this.communityEntity,
  });


  CreateCommunityState copyWith({
    String? name,
    String? about,
    CreateCommunityStatus? status,
    String? errorMessage,
    CommunityEntity? communityEntity,

  }) {
    return CreateCommunityState(
      name: name ?? this.name,
      about: about ?? this.about,
      formKey: formKey,
      status: status ?? this.status,
      errorMessage: errorMessage,
      communityEntity: communityEntity,
    );
  }


  final GlobalKey<FormState> formKey;
  final String name;
  final String about;
  final CreateCommunityStatus status;
  final String? errorMessage;
  final CommunityEntity? communityEntity;

  @override
  List<Object?> get props => [name, about, status, errorMessage, communityEntity, formKey];
}