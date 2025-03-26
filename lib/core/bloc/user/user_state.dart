

part of 'user_bloc.dart';

enum UserStatus { initial, loading, refreshing, success, empty, failure, failedToBlock }

class UserState extends Equatable {
  const UserState({
    this.status = UserStatus.initial,
    this.isLoggedIn = false,
    this.userId,
    this.user,
    this.errorMessage
  });

  final UserStatus status;
  final bool isLoggedIn;
  final int? userId;
  final UserEntity? user;
  final String? errorMessage;

  UserState copyWith({
    required UserStatus status,
    bool? isLoggedIn,
    int? userId,
    UserEntity? user,
    String? errorMessage
  }) {
    return UserState(
      status: status,
      isLoggedIn: isLoggedIn ?? this.isLoggedIn,
      userId: userId ?? this.userId,
      user: user,
      errorMessage: errorMessage
    );
  }

  @override
  List<Object?> get props => [
        status,
        isLoggedIn,
        user,
        errorMessage,
        userId];
}