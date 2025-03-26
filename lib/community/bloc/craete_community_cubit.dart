import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:uniun/community/bloc/create_community_state.dart';
import 'package:uniun/domain/inputs/community_input.dart';
import 'package:uniun/domain/inputs/user_input.dart';
import 'package:uniun/domain/usecases/community_usecase.dart';
import 'package:uniun/domain/usecases/user_usecase.dart';
import 'package:uniun/user/bloc/login_state.dart';

@injectable
class CreateCommunityCubit extends Cubit<CreateCommunityState> {
  CreateCommunityUseCase createCommunityUseCase;

  CreateCommunityCubit(this.createCommunityUseCase) : super(CreateCommunityState(formKey: GlobalKey<FormState>()));

  String? validateName(String? name) {
    if(name == null || name.isEmpty) {
      return 'Name cannot be empty';
    }
    var isValidName = RegExp(r"\w*\d+\w*").hasMatch(name);
    if(!isValidName) {
      return 'Name should contain at least one number';
    }
    return null;
  }

  void updateName(String? name) {
    emit(state.copyWith(name: name));
  }

  String? validateAbout(String? about) {
    if(about == null || about.length < 50) {
      return 'about should be at least 50 characters long';
    }

    if(about.length > 1000) {
      return 'about should be at most 1000 characters long';
    }

    return null ;
  }

  void updateAbout(String? about) {
    emit(state.copyWith(about: about));
  }

  void resetForm() async {
    emit(CreateCommunityState(formKey: state.formKey));
    state.formKey?.currentState?.reset();
  }


  void login() async {
    emit(state.copyWith(status: CreateCommunityStatus.loading, errorMessage: null));
    if(state.formKey.currentState!.validate()) {
      var response = await createCommunityUseCase.call(CreateCommunityInput(about: state.about, name: state.name));
      response.fold(
        (l) => emit(state.copyWith(status: CreateCommunityStatus.error, errorMessage: l.message)), 
        (r) => emit(state.copyWith(status: CreateCommunityStatus.success, communityEntity: r)));
    } else {
      emit(state.copyWith(status: CreateCommunityStatus.initial));
    }
  }
}