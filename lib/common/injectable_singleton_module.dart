import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:injectable/injectable.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:uniun/core/bloc/user/user_bloc.dart';
import 'package:uniun/core/preferences.dart';

@module
abstract class InjectableSingletonModule {

  @FactoryMethod(preResolve: true)
  Future<Dio> getDio() async {
    SharedPreferences prefs = (await UserPreferences.instance).sharedPreferences;
    String token = prefs.getString(PREF_USER_TOKEN) ?? '';
    return Dio(BaseOptions(
        baseUrl: 'http://127.0.0.1:3001/',
        headers: <String, dynamic>{
          'x-access-token': token,
        }))
      ..interceptors.add(PrettyDioLogger(
          requestHeader: false,
          requestBody: true,
          responseBody: true,
          responseHeader: false,
          error: true,
          compact: true));
  }
}
