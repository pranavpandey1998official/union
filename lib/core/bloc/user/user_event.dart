part of 'user_bloc.dart';

abstract class UserEvent extends Equatable {
  const UserEvent();
  @override
  List<Object> get props => [];
}

class UserLoginEvent extends UserEvent {
  final String email;
  final String password;

  const UserLoginEvent({required this.email, required this.password});
}

class UserSetUserEvent extends UserEvent {
  final AuthUserEntity authUser;

  const UserSetUserEvent({required this.authUser});
}

class UserSignupEvent extends UserEvent {
  final String email;
  final String password;
  final String confirmPassword;
  final String username;
  final String name;

  const UserSignupEvent({
    required this.email,
    required this.password,
    required this.confirmPassword,
    required this.username,
    required this.name,
  });
}

/// The [CheckAuth] event should be triggered whenever the app starts.
/// This is responsible for checking the authentication status of the user on app initialization.
class CheckAuth extends UserEvent {}