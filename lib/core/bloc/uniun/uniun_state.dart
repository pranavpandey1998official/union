


import 'package:equatable/equatable.dart';
import 'package:uniun/common/emuns/font_scale.dart';
import 'package:uniun/core/enum/custom_theme_type.dart';
import 'package:uniun/core/enum/theme_type.dart';

enum UniunStatus { initial, loading, refreshing, success, failure }

class UniunState extends Equatable {
  const UniunState({
    this.status = UniunStatus.initial,
    this.themeType = ThemeType.system,
    this.selectedTheme = CustomThemeType.deepBlue,
    this.useDarkTheme = false,
    this.useMaterialYouTheme = false,
    this.reduceAnimations = false,
    this.hideNsfwPosts = false,
    this.hideNsfwPreviews = true,
    // Font Scale
    this.titleFontSizeScale = FontScale.base,
    this.contentFontSizeScale = FontScale.base,
    this.commentFontSizeScale = FontScale.base,
    this.metadataFontSizeScale = FontScale.base,

    this.appLanguageCode = 'en',

    this.scrapeMissingPreviews = true,
    this.showSaveAction = true,

    this.enablePostsFab = true,
    this.isFabOpen = false,
    this.isFabSummoned = false
  });

  final UniunStatus status;

  // Theming options
  final ThemeType themeType;
  final CustomThemeType selectedTheme;
  final bool useDarkTheme;
  final bool useMaterialYouTheme;
  final bool reduceAnimations;

  // Font Scale
  final FontScale titleFontSizeScale;
  final FontScale contentFontSizeScale;
  final FontScale commentFontSizeScale;
  final FontScale metadataFontSizeScale;

  // NSFW Settings
  final bool hideNsfwPosts;
  final bool hideNsfwPreviews;

  final String? appLanguageCode;

  final bool scrapeMissingPreviews;
  final bool showSaveAction;
  
  final bool enablePostsFab;

  /// --------------------------------- UI Events ---------------------------------
  // Expand/Close FAB event
  final bool isFabOpen;

  // Expand/Close FAB event
  final bool isFabSummoned;

  UniunState copyWith({
    UniunStatus? status,
    ThemeType? themeType,
    CustomThemeType? selectedTheme,
    bool? useDarkTheme,
    bool? useMaterialYouTheme,
    bool? reduceAnimations,

    // Font Scale
    FontScale? titleFontSizeScale,
    FontScale? contentFontSizeScale,
    FontScale? commentFontSizeScale,
    FontScale? metadataFontSizeScale,

    // NSFW Settings
    bool? hideNsfwPosts,
    bool? hideNsfwPreviews,

    String? appLanguageCode = 'en',
    bool? isFabOpen,
    bool? isFabSummoned
  }) {
    return UniunState(
      status: status ?? this.status,
      themeType: themeType ?? ThemeType.system,
      selectedTheme: selectedTheme ?? this.selectedTheme,
      useDarkTheme: useDarkTheme ?? false,
      useMaterialYouTheme: useMaterialYouTheme ?? false,
      reduceAnimations: reduceAnimations ?? false,

      // Font Scale
      titleFontSizeScale: titleFontSizeScale ?? this.titleFontSizeScale,
      contentFontSizeScale: contentFontSizeScale ?? this.contentFontSizeScale,
      commentFontSizeScale: commentFontSizeScale ?? this.commentFontSizeScale,
      metadataFontSizeScale: metadataFontSizeScale ?? this.metadataFontSizeScale,
      
      // NSFW Settings
      hideNsfwPosts: hideNsfwPosts ?? this.hideNsfwPosts,
      hideNsfwPreviews: hideNsfwPreviews ?? this.hideNsfwPreviews,

      appLanguageCode: appLanguageCode ?? this.appLanguageCode,
      isFabOpen: isFabOpen ?? this.isFabOpen,
      isFabSummoned: isFabSummoned ?? this.isFabSummoned,

    );
  }

  @override
  List<Object?> get props => [
    status, 
    themeType, 
    selectedTheme,
    useDarkTheme, 
    useMaterialYouTheme, 
    reduceAnimations, 
    
    titleFontSizeScale, 
    contentFontSizeScale, 
    commentFontSizeScale,
    metadataFontSizeScale,
    hideNsfwPosts,
    hideNsfwPreviews
    ];
}