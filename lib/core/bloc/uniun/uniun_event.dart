import 'package:equatable/equatable.dart';

abstract class UniunEvent extends Equatable {
  const UniunEvent();

  @override
  List<Object> get props => [];
}

class UserPreferencesChangeEvent extends UniunEvent {}

class InitializeAppEvent extends UniunEvent {}

class OnScrollToTopEvent extends UniunEvent {}

class OnFabToggle extends UniunEvent {
  final bool isFabOpen;
  const OnFabToggle(this.isFabOpen);
}

class OnFabSummonToggle extends UniunEvent {
  final bool isFabSummoned;
  const OnFabSummonToggle(this.isFabSummoned);
}