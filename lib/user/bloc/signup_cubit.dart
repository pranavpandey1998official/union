

import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:uniun/domain/inputs/user_input.dart';
import 'package:uniun/domain/usecases/user_usecase.dart';
import 'package:uniun/user/bloc/signup_state.dart';


@injectable
class SignUpCubit extends Cubit<SignUpState> {
  SignUpUserUseCase signUpUserUseCase;

  SignUpCubit(this.signUpUserUseCase) : super(SignUpState(formKey: GlobalKey<FormState>()));

  String? validateEmail(String? email) {
    if(email == null || email!.isEmpty) {
      return 'Email cannot be empty';
    }
    var isValidEmail = RegExp(r"^[A-Za-z0-9\._%+\-]+@[A-Za-z0-9\.\-]+\.[A-Za-z]{2,}").hasMatch(email);
    if(!isValidEmail) {
      return 'Invalid email address';
    }
    return null;
  }

  void updateEmail(String email) {
    emit(state.copyWith(email: email));
  }

  String? validatePassword(String? password) {
    if(password == null || password!.isEmpty) {
      return 'Password cannot be empty';
    }
    return null;
  }

  void updatePassword(String password) {
    emit(state.copyWith(password: password));
  }

  String? validateConfirmPassword(String? confirmPassword) {
    if(confirmPassword == null || confirmPassword!.isEmpty) {
      return 'Confirm Password cannot be empty';
    }
    if(confirmPassword != state.password) {
      return 'Confirm Password does not match Password';
    }
    return null;
  }

  void updateConfirmPassword(String confirmPassword) {
    emit(state.copyWith(confirmPassword:  confirmPassword));
  }

  String? validateUsername(String? username) {
    if(username ==  null || username!.isEmpty) {
      return 'Username cannot be empty';
    }
    //TODO check for username already used
    return null;
  }

  void updateUsername(String username) {
    emit(state.copyWith(username: username));
  }

  String? validateName(String? name) {
    if(name == null || name!.isEmpty) {
      return 'Name cannot be empty';
    }
    return null;
  }

  void updateName(String name) {
    emit(state.copyWith(name: name));
  }

  void signUp() async {
    emit(state.copyWith(status: SignUpStatus.loading, errorMessage: null));
    if(state.formKey.currentState!.validate()) {
      var response = await signUpUserUseCase.call(SignUpUserInput(
        email: state.email,
        password: state.password,
        name: state.name,
        username: state.username
      ));
      response.fold((l) => emit(state.copyWith(status: SignUpStatus.error, errorMessage: l.message)), (r) => emit(state.copyWith(status: SignUpStatus.success, authUserEntity: r)));
    } else {
      emit(state.copyWith(status: SignUpStatus.initial));
    }

  }
}