

import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:stream_transform/stream_transform.dart';
import 'package:uniun/common/emuns/font_scale.dart';
import 'package:uniun/core/bloc/uniun/uniun_event.dart';
import 'package:uniun/core/bloc/uniun/uniun_state.dart';
import 'package:uniun/core/enum/custom_theme_type.dart';
import 'package:uniun/core/enum/theme_type.dart';

const throttleDuration = Duration(milliseconds: 300);

EventTransformer<E> throttleDroppable<E>(Duration duration) {
  return (events, mapper) => droppable<E>().call(events.throttle(duration), mapper);
}

enum PREFS {
  
  hideNsfwPreviews(name: 'setting_general_hide_nsfw_previews', key: 'hideNsfwPreviews'),
  appTheme(name: 'setting_theme_app_theme', key: 'theme'),
  appThemeAccentColor(name: 'setting_theme_custom_app_theme', key: 'themeAccentColor'),
  useMaterialYouTheme(name: 'setting_theme_use_material_you', key: 'useMaterialYouTheme'),
  titleFontSizeScale(name: 'setting_theme_title_font_size_scale', key: 'postTitleFontScale'),
  contentFontSizeScale(name: 'setting_theme_content_font_size_scale', key: 'postContentFontScale'),
  commentFontSizeScale(name: 'setting_theme_comment_font_size_scale', key: 'commentFontScale'),
  metadataFontSizeScale(name: 'setting_theme_metadata_font_size_scale', key: 'metadataFontScale'),
  appLanguageCode(name: 'setting_app_language_code', key: 'appLanguage'),
  hideNsfwPosts(name: 'setting_general_hide_nsfw_posts', key: 'hideNsfwPostsFromFeed');
  

  const PREFS({
    required this.name,
    required this.key,
  });

  /// The name of the setting as stored in local preferences
  final String name;

  /// Describes the key to be used to determine the localized label
  final String key;
}

@injectable
class UniunBloc extends Bloc<UniunEvent, UniunState> {

  UniunBloc(): super(const UniunState()) {
    on<InitializeAppEvent>(_initializeAppEvent, transformer: throttleDroppable(throttleDuration));
    on<UserPreferencesChangeEvent>(
      _userPreferencesChangeEvent,
      transformer: throttleDroppable(throttleDuration),
    );
    on<OnFabToggle>(
      _onFabToggle,
      transformer: throttleDroppable(throttleDuration),
    );
    on<OnFabSummonToggle>(
      _onFabSummonToggle,
      transformer: throttleDroppable(throttleDuration),
    );

  }

  Future<void> _initializeAppEvent(InitializeAppEvent event, Emitter<UniunState> emit) async {
    emit(state.copyWith(status: UniunStatus.loading));
    add(UserPreferencesChangeEvent());
  }

  Future<void> _userPreferencesChangeEvent(UserPreferencesChangeEvent event, Emitter<UniunState> emit) async {
    emit(state.copyWith(status: UniunStatus.refreshing));
    SharedPreferences prefs = await SharedPreferences.getInstance();

    bool hideNsfwPosts = prefs.getBool(PREFS.hideNsfwPosts.name) ?? false;
    bool hideNsfwPreviews = prefs.getBool(PREFS.hideNsfwPreviews.name) ?? true;
    ThemeType themeType = ThemeType.values[prefs.getInt(PREFS.appTheme.name) ?? ThemeType.system.index];
    CustomThemeType selectedTheme = CustomThemeType.values.byName(prefs.getString(PREFS.appThemeAccentColor.name) ?? CustomThemeType.deepBlue.name);
    bool useMaterialYouTheme = prefs.getBool(PREFS.useMaterialYouTheme.name) ?? false;
    
    FontScale titleFontSizeScale = FontScale.values.byName(prefs.getString(PREFS.titleFontSizeScale.name) ?? FontScale.base.name);
    FontScale contentFontSizeScale = FontScale.values.byName(prefs.getString(PREFS.contentFontSizeScale.name) ?? FontScale.base.name);
    FontScale commentFontSizeScale = FontScale.values.byName(prefs.getString(PREFS.commentFontSizeScale.name) ?? FontScale.base.name);
    FontScale metadataFontSizeScale = FontScale.values.byName(prefs.getString(PREFS.metadataFontSizeScale.name) ?? FontScale.base.name);

    String? appLanguageCode = prefs.getString(PREFS.appLanguageCode.name) ?? 'en';

    return emit(state.copyWith(
      status: UniunStatus.success,
      hideNsfwPosts: hideNsfwPosts,
      hideNsfwPreviews: hideNsfwPreviews,
      
      themeType: themeType,
      selectedTheme: selectedTheme,
      
      useMaterialYouTheme: useMaterialYouTheme,
      titleFontSizeScale: titleFontSizeScale,
      contentFontSizeScale: contentFontSizeScale,
      commentFontSizeScale: commentFontSizeScale,
      metadataFontSizeScale: metadataFontSizeScale,

      appLanguageCode: appLanguageCode,
    )
    );
  }
  void _onFabToggle(OnFabToggle event, Emitter<UniunState> emit) {
    emit(state.copyWith(isFabOpen: !state.isFabOpen));
  }

  void _onFabSummonToggle(OnFabSummonToggle event, Emitter<UniunState> emit) {
    emit(state.copyWith(isFabSummoned: !state.isFabSummoned));
  }

}
