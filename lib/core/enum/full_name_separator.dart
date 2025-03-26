import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uniun/core/bloc/thunder/thunder_bloc.dart';

enum FullNameSeparator {
  dot('name · instance.tld'),
  at('name@instance.tld');

  final String label;

  const FullNameSeparator(this.label);
}

String generateUserFullName(BuildContext? context, name, instance, {FullNameSeparator? userSeparator}) {
  assert(context != null || userSeparator != null);
  userSeparator ??= context!.read<ThunderBloc>().state.userSeparator;
  return switch (userSeparator) {
    FullNameSeparator.dot => '$name · $instance',
    FullNameSeparator.at => '$name@$instance',
  };
}

String generateUserFullNameSuffix(BuildContext? context, instance, {FullNameSeparator? userSeparator}) {
  assert(context != null || userSeparator != null);
  userSeparator ??= context!.read<ThunderBloc>().state.userSeparator;
  return switch (userSeparator) {
    FullNameSeparator.dot => ' · $instance',
    FullNameSeparator.at => '@$instance',
  };
}

String generateCommunityFullName(BuildContext? context, name, instance, {FullNameSeparator? communitySeparator}) {
  assert(context != null || communitySeparator != null);
  communitySeparator ??= context!.read<ThunderBloc>().state.communitySeparator;
  return switch (communitySeparator) {
    FullNameSeparator.dot => '$name · $instance',
    FullNameSeparator.at => '$name@$instance',
  };
}
