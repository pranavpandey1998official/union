import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:stream_transform/stream_transform.dart';
import 'package:uniun/core/extensions/extensions.dart';
import 'package:uniun/core/preferences.dart';
import 'package:uniun/core/widgets/error_message.dart';
import 'package:uniun/domain/entities/user/user_entity.dart';
part 'user_event.dart';
part 'user_state.dart';


const throttleDuration = Duration(seconds: 1);
const timeout = Duration(seconds: 5);

EventTransformer<E> throttleDroppable<E>(Duration duration) {
  return (events, mapper) => droppable<E>().call(events.throttle(duration), mapper);
}

const PREF_USER_NAME = 'PREF_USER_NAME';
const PREF_USER_EMAIL = 'PREF_USER_EMAIL';
const PREF_USER_ID = 'PREF_USER_ID';
const PREF_USER_TOKEN = 'PREF_USER_TOKEN';
const PREF_USER_WALLET_ID = 'PREF_USER_WALLET_ID';
const PREF_USER_USERNAME = 'PREF_USER_USERNAME';

class UserBloc extends Bloc<UserEvent, UserState> {
  UserBloc() : super(const UserState()) {
    on<CheckAuth>(
      _checkAuthEvent,
      transformer: throttleDroppable(throttleDuration),
    );
    on<UserSetUserEvent>(
      _setUserEvent,
      transformer: throttleDroppable(throttleDuration),
    );
  }

  Future<void> _checkAuthEvent(CheckAuth event, Emitter<UserState> emit) async {
    emit(state.copyWith(status: UserStatus.loading));
    SharedPreferences prefs = (await UserPreferences.instance).sharedPreferences;
    var token = prefs.getString(PREF_USER_TOKEN);
    if (token == null) {
      emit(state.copyWith(status: UserStatus.empty));
      return;
    } else {
      final authUser = await getUserFromPref();
      emit(state.copyWith(
        status: UserStatus.success,
        isLoggedIn: true,
        user: authUser.user,
        userId: authUser.user?.userID,
      ));
    }
  }

  Future<void> _setUserEvent(UserSetUserEvent event, Emitter<UserState> emit) async {
    await saveUserToPref(event.authUser);
    emit(state.copyWith(
      status: UserStatus.success,
      isLoggedIn: true,
      user: event.authUser.user,
      userId: event.authUser.user?.userID,
    ));
  }

  Future<void> removeUserFromPref() async {
    SharedPreferences prefs = (await UserPreferences.instance).sharedPreferences;
    prefs.remove(PREF_USER_NAME);
    prefs.remove(PREF_USER_EMAIL);
    prefs.remove(PREF_USER_ID);
    prefs.remove(PREF_USER_TOKEN);
    prefs.remove(PREF_USER_WALLET_ID);
    prefs.remove(PREF_USER_USERNAME);
  }

  Future<AuthUserEntity> getUserFromPref() async {
    SharedPreferences prefs = (await UserPreferences.instance).sharedPreferences;
    return AuthUserEntity(
      user: UserEntity(
        name: prefs.getString(PREF_USER_NAME) ?? '',
        email: prefs.getString(PREF_USER_EMAIL) ?? '',
        userID: prefs.getInt(PREF_USER_ID) ?? 0,
        walletID: prefs.getInt(PREF_USER_WALLET_ID) ?? 0,
        username: prefs.getString(PREF_USER_USERNAME) ?? '',
      ),
      token: prefs.getString(PREF_USER_TOKEN) ?? '',
    );
  }

  Future<void> saveUserToPref(AuthUserEntity authUserEntity) async {
    SharedPreferences prefs = (await UserPreferences.instance).sharedPreferences;
    prefs.setString(PREF_USER_NAME, authUserEntity.user?.name ?? '');
    prefs.setString(PREF_USER_EMAIL, authUserEntity.user?.email ?? '');
    prefs.setInt(PREF_USER_ID, authUserEntity.user?.userID ?? 0);
    prefs.setString(PREF_USER_TOKEN, authUserEntity.token ?? '');
    prefs.setInt(PREF_USER_WALLET_ID, authUserEntity.user?.walletID ?? 0);
    prefs.setString(PREF_USER_USERNAME, authUserEntity.user?.username ?? '');
  }
}