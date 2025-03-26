import 'dart:io';

import 'package:flutter/foundation.dart';

enum FontScale {
  small,
  base,
  medium,
  large,
  extraLarge,
}

extension FontScaleExtension on FontScale {
  double get textScaleFactor {
    switch (this) {
      case FontScale.small:
        if (!kIsWeb && Platform.isIOS) return 0.9;
        return 0.9;
      case FontScale.base:
        if (!kIsWeb && Platform.isIOS) return 1;
        return 0.95;
      case FontScale.medium:
        if (!kIsWeb && Platform.isIOS) return 1.1;
        return 1.05;
      case FontScale.large:
        if (!kIsWeb && Platform.isIOS) return 1.15;
        return 1.2;
      case FontScale.extraLarge:
        if (!kIsWeb && Platform.isIOS) return 1.35;
        return 1.4;
    }
  }

  String get label {
    // final l10n = AppLocalizations.of(GlobalContext.context)!;

    switch (this) {
      case FontScale.small:
        return 'small';
      case FontScale.base:
        return 'base';
      case FontScale.medium:
        return 'medium';
      case FontScale.large:
        return 'large';
      case FontScale.extraLarge:
        return 'extralarge';
    }
  }
}
