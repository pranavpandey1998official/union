import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:uniun/domain/inputs/user_input.dart';
import 'package:uniun/domain/usecases/user_usecase.dart';
import 'package:uniun/user/bloc/login_state.dart';

@injectable
class LoginCubit extends Cubit<LoginState> {
  LoginUserUseCase loginUserUseCase;

  LoginCubit(this.loginUserUseCase) : super(LoginState(formKey: GlobalKey<FormState>()));

  String? validateEmail(String? email) {
    if(email == null || email.isEmpty) {
      return 'Email cannot be empty';
    }
    var isValidEmail = RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(email);
    if(!isValidEmail) {
      return 'Invalid email address';
    }
    return null;
  }

  void updateEmail(String? email) {
    emit(state.copyWith(email: email));
  }

  String? validatePassword(String? password) {
    String? error;
    if(password == null || password.isEmpty) {
      error = 'Email cannot be empty';
    }
    return error;
  }

  void updatePassword(String? password) {
    emit(state.copyWith(password: password));
  }

  void login() async {
    emit(state.copyWith(status: LoginStatus.loading, errorMessage: null));
    if(state.formKey.currentState!.validate()) {
      var response = await loginUserUseCase.call(LoginUserInput(password: state.password, email: state.email));
      print(response);
      response.fold(
        (l) => emit(state.copyWith(status: LoginStatus.error, errorMessage: l.message)), 
        (r) => emit(state.copyWith(status: LoginStatus.success, authUserEntity: r)));
    } else {
      emit(state.copyWith(status: LoginStatus.initial));
    }
  }
}