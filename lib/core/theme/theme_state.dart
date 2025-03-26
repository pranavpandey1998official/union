

import 'package:equatable/equatable.dart';

import 'package:uniun/utils/styles/dimens.dart';

enum ThemeStatus { initial, loading, refreshing, success, failure }
enum FontSize {
  small('Small', TextDimens.pt15),
  regular('Regular', TextDimens.pt16),
  large('Large', TextDimens.pt17),
  xlarge('XLarge', TextDimens.pt18),
  xxlarge('XXLarge', TextDimens.pt19);

  const FontSize(this.description, this.fontSize);

  final String description;
  final double fontSize;
}


class ThemeState extends Equatable {
  const ThemeState({
    required this.fontSize
  });

  final FontSize fontSize;
  
  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}