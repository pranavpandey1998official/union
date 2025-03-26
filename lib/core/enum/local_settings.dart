import 'package:uniun/flutter_gen/gen_l10n/app_localizations.dart';

enum LocalSettingsCategories {
  general('General'),
  filters('Filters'),
  posts('Posts'),
  comments('Comments'),
  gestures('Gestures'),
  floatingActionButton('floatingActionButton'),
  accessibility('Accessibility'),
  account('Account'),
  about('About'),
  debug('Debug'),
  theming('Theming');

  final String value;

  const LocalSettingsCategories(this.value);

  factory LocalSettingsCategories.fromJson(String value) => values.firstWhere((e) => e.value == value);

  String toJson() => value;

  @override
  String toString() => value;
}

enum LocalSettingsSubCategories {
  feedTypeAndSorts('feedTypeAndSorts'),
  general('general'),
  feed('feed'),
  posts('posts'),
  comments('comments'),
  linksBehaviourSettings('linksBehaviourSettings'),
  advanced('advanced'),
  notifications('notifications'),
  importExportSettings('importExportSettings'),
  filters('filters'),
  themes('theme'),
  fonts('fonts'),
  profiles('Profiles'),
  blockedCommunities('blockedCommunities'),
  animations('animations'),
  theme('Theme'),
  sidebar('Sidebar'),
  cardView('cardView'),
  navigation('navigation');

  final String value;

  const LocalSettingsSubCategories(this.value);

  factory LocalSettingsSubCategories.fromJson(String value) => values.firstWhere((e) => e.value == value);

  String toJson() => value;

  @override
  String toString() => value;
}

enum LocalSettings {
  /// -------------------------- Feed Related Settings --------------------------
  // Default Listing/Sort Settings

  defaultFeedListingType(name: 'setting_general_default_listing_type', key: 'defaultFeedType', category: LocalSettingsCategories.general, subCategory: LocalSettingsSubCategories.feedTypeAndSorts),
  defaultFeedSortType(name: 'setting_general_default_sort_type', key: 'defaultFeedSortType', category: LocalSettingsCategories.general, subCategory: LocalSettingsSubCategories.feedTypeAndSorts),

  // NSFW Settings
  hideNsfwPosts(name: 'setting_general_hide_nsfw_posts', key: 'hideNsfwPostsFromFeed', category: LocalSettingsCategories.general, subCategory: LocalSettingsSubCategories.feed),
  hideNsfwPreviews(name: 'setting_general_hide_nsfw_previews', key: 'hideNsfwPreviews', category: LocalSettingsCategories.posts, subCategory: LocalSettingsSubCategories.general),

  // Tablet Settings
  useTabletMode(name: 'setting_post_tablet_mode', key: 'tabletMode', category: LocalSettingsCategories.general, subCategory: LocalSettingsSubCategories.feed),

  // General Settings

  scrapeMissingPreviews(
      name: 'setting_general_scrape_missing_previews', key: 'scrapeMissingLinkPreviews', category: LocalSettingsCategories.general, subCategory: LocalSettingsSubCategories.linksBehaviourSettings),
  openLinksInExternalBrowser(
      name: 'setting_links_open_in_external_browser', key: 'openLinksInExternalBrowser', category: LocalSettingsCategories.general, subCategory: LocalSettingsSubCategories.linksBehaviourSettings),
  openLinksInReaderMode(
      name: 'setting_links_open_in_reader_mode', key: 'openLinksInReaderMode', category: LocalSettingsCategories.general, subCategory: LocalSettingsSubCategories.linksBehaviourSettings),
  useDisplayNamesForUsers(name: 'setting_use_display_names_for_users', key: 'showUserDisplayNames', category: LocalSettingsCategories.posts, subCategory: LocalSettingsSubCategories.general),
  markPostAsReadOnMediaView(
      name: 'setting_general_mark_post_read_on_media_view', key: 'markPostAsReadOnMediaView', category: LocalSettingsCategories.general, subCategory: LocalSettingsSubCategories.feed),
  showInAppUpdateNotification(
      name: 'setting_notifications_show_inapp_update', key: 'showInAppUpdateNotifications', category: LocalSettingsCategories.general, subCategory: LocalSettingsSubCategories.notifications),
  scoreCounters(name: 'setting_score_counters', key: "showScoreCounters", category: LocalSettingsCategories.general, subCategory: LocalSettingsSubCategories.feed),
  appLanguageCode(name: 'setting_app_language_code', key: 'appLanguage', category: LocalSettingsCategories.general, subCategory: LocalSettingsSubCategories.feedTypeAndSorts),
  enableInboxNotifications(
      name: 'setting_enable_inbox_notifications', key: 'enableInboxNotifications', category: LocalSettingsCategories.general, subCategory: LocalSettingsSubCategories.notifications),

  /// -------------------------- Feed Post Related Settings --------------------------
  // Compact Related Settings
  useCompactView(name: 'setting_general_use_compact_view', key: 'compactView', category: LocalSettingsCategories.posts, subCategory: LocalSettingsSubCategories.posts),
  showPostTitleFirst(name: 'setting_general_show_title_first', key: 'showPostTitleFirst', category: LocalSettingsCategories.posts, subCategory: LocalSettingsSubCategories.posts),
  showThumbnailPreviewOnRight(
      name: 'setting_compact_show_thumbnail_on_right', key: 'showThumbnailPreviewOnRight', category: LocalSettingsCategories.posts, subCategory: LocalSettingsSubCategories.posts),
  showTextPostIndicator(name: 'setting_compact_show_text_post_indicator', key: 'showTextPostIndicator', category: LocalSettingsCategories.posts, subCategory: LocalSettingsSubCategories.posts),
  tappableAuthorCommunity(name: 'setting_compact_tappable_author_community', key: 'tappableAuthorCommunity', category: LocalSettingsCategories.general, subCategory: LocalSettingsSubCategories.feed),
  postBodyViewType(name: 'setting_general_post_body_view_type', key: 'postBodyViewType', category: LocalSettingsCategories.posts, subCategory: LocalSettingsSubCategories.general),

  // General Settings
  showPostVoteActions(name: 'setting_general_show_vote_actions', key: 'showPostVoteActions', category: LocalSettingsCategories.posts, subCategory: LocalSettingsSubCategories.cardView),
  showPostSaveAction(name: 'setting_general_show_save_action', key: 'showPostSaveAction', category: LocalSettingsCategories.posts, subCategory: LocalSettingsSubCategories.cardView),
  showPostCommunityIcons(name: 'setting_general_show_community_icons', key: 'showPostCommunityIcons', category: LocalSettingsCategories.posts, subCategory: LocalSettingsSubCategories.cardView),
  showPostFullHeightImages(name: 'setting_general_show_full_height_images', key: 'showFullHeightImages', category: LocalSettingsCategories.posts, subCategory: LocalSettingsSubCategories.cardView),
  showPostEdgeToEdgeImages(name: 'setting_general_show_edge_to_edge_images', key: 'showEdgeToEdgeImages', category: LocalSettingsCategories.posts, subCategory: LocalSettingsSubCategories.cardView),
  showPostTextContentPreview(name: 'setting_general_show_text_content', key: 'showPostTextContentPreview', category: LocalSettingsCategories.posts, subCategory: LocalSettingsSubCategories.cardView),
  showPostAuthor(name: 'setting_general_show_post_author', key: 'showPostAuthor', category: LocalSettingsCategories.posts, subCategory: LocalSettingsSubCategories.general),
  dimReadPosts(name: 'setting_dim_read_posts', key: 'dimReadPosts', category: LocalSettingsCategories.posts, subCategory: LocalSettingsSubCategories.general),
  useAdvancedShareSheet(name: 'setting_use_advanced_share_sheet', key: 'useAdvancedShareSheet', category: LocalSettingsCategories.general, subCategory: LocalSettingsSubCategories.posts),
  showCrossPosts(name: 'setting_show_cross_posts', key: 'showCrossPosts', category: LocalSettingsCategories.posts, subCategory: LocalSettingsSubCategories.general),
  keywordFilters(name: 'setting_general_keyword_filters', key: 'keywordFilters', category: LocalSettingsCategories.filters, subCategory: LocalSettingsSubCategories.filters),
  hideTopBarOnScroll(name: 'setting_general_hide_topbar_on_scroll', key: 'hideTopBarOnScroll', category: LocalSettingsCategories.general, subCategory: LocalSettingsSubCategories.feed),

  // Advanced Settings
  userFormat(name: 'user_format', key: 'userFormat', category: LocalSettingsCategories.general, subCategory: LocalSettingsSubCategories.advanced),
  communityFormat(name: 'community_format', key: 'communityFormat', category: LocalSettingsCategories.general, subCategory: LocalSettingsSubCategories.advanced),

  /// -------------------------- Post Page Related Settings --------------------------
  // Comment Related Settings
  defaultCommentSortType(
      name: 'setting_post_default_comment_sort_type', key: 'defaultCommentSortType', category: LocalSettingsCategories.general, subCategory: LocalSettingsSubCategories.feedTypeAndSorts),
  collapseParentCommentBodyOnGesture(
      name: 'setting_comments_collapse_parent_comment_on_gesture',
      key: 'collapseParentCommentBodyOnGesture',
      category: LocalSettingsCategories.comments,
      subCategory: LocalSettingsSubCategories.general),
  showCommentActionButtons(
      name: 'setting_general_show_comment_button_actions', key: 'showCommentActionButtons', category: LocalSettingsCategories.comments, subCategory: LocalSettingsSubCategories.general),
  commentShowUserInstance(name: 'settings_comment_show_user_instance', key: 'showUserInstance', category: LocalSettingsCategories.comments, subCategory: LocalSettingsSubCategories.comments),
  combineCommentScores(name: 'setting_general_combine_comment_scores', key: 'combineCommentScores', category: LocalSettingsCategories.comments, subCategory: LocalSettingsSubCategories.comments),
  nestedCommentIndicatorStyle(
      name: 'setting_general_nested_comment_indicator_style', key: 'nestedCommentIndicatorStyle', category: LocalSettingsCategories.comments, subCategory: LocalSettingsSubCategories.comments),
  nestedCommentIndicatorColor(
      name: 'setting_general_nested_comment_indicator_color', key: 'nestedCommentIndicatorColor', category: LocalSettingsCategories.comments, subCategory: LocalSettingsSubCategories.comments),

  /// -------------------------- Accessibility Related Settings --------------------------
  reduceAnimations(name: 'setting_accessibility_reduce_animations', key: 'reduceAnimations', category: LocalSettingsCategories.accessibility, subCategory: LocalSettingsSubCategories.animations),

  /// -------------------------- Theme Related Settings --------------------------
  // Theme Settings
  appTheme(name: 'setting_theme_app_theme', key: 'theme', category: LocalSettingsCategories.theming, subCategory: LocalSettingsSubCategories.theme),
  appThemeAccentColor(name: 'setting_theme_custom_app_theme', key: 'themeAccentColor', category: LocalSettingsCategories.theming, subCategory: LocalSettingsSubCategories.theme),
  useMaterialYouTheme(name: 'setting_theme_use_material_you', key: 'useMaterialYouTheme', category: LocalSettingsCategories.theming, subCategory: LocalSettingsSubCategories.theme),

  // Font Settings
  titleFontSizeScale(name: 'setting_theme_title_font_size_scale', key: 'postTitleFontScale', category: LocalSettingsCategories.theming, subCategory: LocalSettingsSubCategories.fonts),
  contentFontSizeScale(name: 'setting_theme_content_font_size_scale', key: 'postContentFontScale', category: LocalSettingsCategories.theming, subCategory: LocalSettingsSubCategories.fonts),
  commentFontSizeScale(name: 'setting_theme_comment_font_size_scale', key: 'commentFontScale', category: LocalSettingsCategories.theming, subCategory: LocalSettingsSubCategories.fonts),
  metadataFontSizeScale(name: 'setting_theme_metadata_font_size_scale', key: 'metadataFontScale', category: LocalSettingsCategories.theming, subCategory: LocalSettingsSubCategories.fonts),

  /// -------------------------- Gesture Related Settings --------------------------
  // Sidebar Gesture Settings
  sidebarBottomNavBarSwipeGesture(
      name: 'setting_general_enable_swipe_gestures', key: 'navbarSwipeGestures', category: LocalSettingsCategories.gestures, subCategory: LocalSettingsSubCategories.sidebar),
  sidebarBottomNavBarDoubleTapGesture(
      name: 'setting_general_enable_doubletap_gestures', key: 'navbarDoubleTapGestures', category: LocalSettingsCategories.gestures, subCategory: LocalSettingsSubCategories.sidebar),

  // Post Gesture Settings
  enablePostGestures(name: 'setting_gesture_enable_post_gestures', key: 'postSwipeActions', category: LocalSettingsCategories.gestures, subCategory: LocalSettingsSubCategories.posts),
  postGestureLeftPrimary(name: 'setting_gesture_post_left_primary_gesture', key: 'leftShortSwipe', category: LocalSettingsCategories.gestures, subCategory: LocalSettingsSubCategories.posts),
  postGestureLeftSecondary(name: 'setting_gesture_post_left_secondary_gesture', key: 'leftLongSwipe', category: LocalSettingsCategories.gestures, subCategory: LocalSettingsSubCategories.posts),
  postGestureRightPrimary(name: 'setting_gesture_post_right_primary_gesture', key: 'rightShortSwipe', category: LocalSettingsCategories.gestures, subCategory: LocalSettingsSubCategories.posts),
  postGestureRightSecondary(name: 'setting_gesture_post_right_secondary_gesture', key: 'rightLongSwipe', category: LocalSettingsCategories.gestures, subCategory: LocalSettingsSubCategories.posts),

  // Comment Gesture Settings
  enableCommentGestures(name: 'setting_gesture_enable_comment_gestures', key: 'commentSwipeActions', category: LocalSettingsCategories.gestures, subCategory: LocalSettingsSubCategories.comments),
  commentGestureLeftPrimary(name: 'setting_gesture_comment_left_primary_gesture', key: 'leftShortSwipe', category: LocalSettingsCategories.gestures, subCategory: LocalSettingsSubCategories.comments),
  commentGestureLeftSecondary(
      name: 'setting_gesture_comment_left_secondary_gesture', key: 'leftLongSwipe', category: LocalSettingsCategories.gestures, subCategory: LocalSettingsSubCategories.comments),
  commentGestureRightPrimary(
      name: 'setting_gesture_comment_right_primary_gesture', key: 'rightShortSwipe', category: LocalSettingsCategories.gestures, subCategory: LocalSettingsSubCategories.comments),
  commentGestureRightSecondary(
      name: 'setting_gesture_comment_right_secondary_gesture', key: 'rightLongSwipe', category: LocalSettingsCategories.gestures, subCategory: LocalSettingsSubCategories.comments),

  enableFullScreenSwipeNavigationGesture(
      name: 'setting_gesture_enable_fullscreen_navigation_gesture', key: 'fullscreenSwipeGestures', category: LocalSettingsCategories.gestures, subCategory: LocalSettingsSubCategories.navigation),

  /// -------------------------- FAB Related Settings --------------------------
  enableFeedsFab(name: 'setting_enable_feed_fab', key: 'enableFloatingButtonOnFeeds', category: LocalSettingsCategories.floatingActionButton, subCategory: LocalSettingsSubCategories.feed),
  enablePostsFab(name: 'setting_enable_post_fab', key: 'enableFloatingButtonOnPosts', category: LocalSettingsCategories.floatingActionButton, subCategory: LocalSettingsSubCategories.feed),
  enableBackToTop(name: 'setting_enable_back_to_top_fab', key: 'backToTop', category: LocalSettingsCategories.floatingActionButton, subCategory: LocalSettingsSubCategories.feed),
  enableSubscriptions(name: 'setting_enable_subscribed_fab', key: 'subscriptions', category: LocalSettingsCategories.floatingActionButton, subCategory: LocalSettingsSubCategories.feed),
  enableRefresh(name: 'setting_enable_refresh_fab', key: 'refresh', category: LocalSettingsCategories.floatingActionButton, subCategory: LocalSettingsSubCategories.feed),
  enableDismissRead(name: 'setting_enable_dismiss_read_fab', key: 'dismissRead', category: LocalSettingsCategories.floatingActionButton, subCategory: LocalSettingsSubCategories.feed),
  enableChangeSort(name: 'setting_enable_change_sort_fab', key: 'changeSort', category: LocalSettingsCategories.floatingActionButton, subCategory: LocalSettingsSubCategories.feed),
  enableNewPost(name: 'setting_enable_new_post_fab', key: 'newPost', category: LocalSettingsCategories.floatingActionButton, subCategory: LocalSettingsSubCategories.feed),
  postFabEnableBackToTop(name: 'setting_post_fab_enable_back_to_top', key: 'backToTop', category: LocalSettingsCategories.floatingActionButton, subCategory: LocalSettingsSubCategories.posts),
  postFabEnableChangeSort(name: 'setting_post_fab_enable_change_sort', key: 'changeSort', category: LocalSettingsCategories.floatingActionButton, subCategory: LocalSettingsSubCategories.posts),
  postFabEnableReplyToPost(name: 'setting_post_fab_enable_reply_to_post', key: 'replyToPost', category: LocalSettingsCategories.floatingActionButton, subCategory: LocalSettingsSubCategories.posts),
  postFabEnableRefresh(name: 'setting_post_fab_enable_refresh', key: 'refresh', category: LocalSettingsCategories.floatingActionButton, subCategory: LocalSettingsSubCategories.posts),
  postFabEnableSearch(name: 'setting_post_fab_enable_search', key: 'search', category: LocalSettingsCategories.floatingActionButton, subCategory: LocalSettingsSubCategories.posts),
  feedFabSinglePressAction(name: 'settings_feed_fab_single_press_action', key: '', category: LocalSettingsCategories.floatingActionButton, subCategory: LocalSettingsSubCategories.feed),
  feedFabLongPressAction(name: 'settings_feed_fab_long_press_action', key: '', category: LocalSettingsCategories.floatingActionButton, subCategory: LocalSettingsSubCategories.feed),
  postFabSinglePressAction(name: 'settings_post_fab_single_press_action', key: '', category: LocalSettingsCategories.floatingActionButton, subCategory: LocalSettingsSubCategories.posts),
  postFabLongPressAction(name: 'settings_post_fab_long_press_action', key: '', category: LocalSettingsCategories.floatingActionButton, subCategory: LocalSettingsSubCategories.posts),
  enableCommentNavigation(name: 'setting_enable_comment_navigation', key: 'enableCommentNavigation', category: LocalSettingsCategories.general, subCategory: LocalSettingsSubCategories.comments),
  combineNavAndFab(name: 'setting_combine_nav_and_fab', key: 'combineNavAndFab', category: LocalSettingsCategories.general, subCategory: LocalSettingsSubCategories.comments),

  draftsCache(name: 'drafts_cache', key: ''),

  anonymousInstances(name: 'setting_anonymous_instances', key: ''),
  currentAnonymousInstance(name: 'setting_current_anonymous_instance', key: ''),

  advancedShareOptions(name: 'advanced_share_options', key: ''),
  // import export settings
  importExportSettings(name: 'import_export_settings', key: 'importExportSettings', category: LocalSettingsCategories.general, subCategory: LocalSettingsSubCategories.importExportSettings);

  const LocalSettings({
    required this.name,
    this.category,
    this.subCategory,
    required this.key,
  });

  /// The name of the setting as stored in local preferences
  final String name;

  /// Describes the key to be used to determine the localized label
  final String key;

  /// Represents the category to which the settings belong and indicates
  /// where it appears in the settings interface.
  final LocalSettingsCategories? category;

  /// Represents a key used to uniquely identify the settings subcategory.
  /// This key is essential for organizing and managing specific settings.
  final LocalSettingsSubCategories? subCategory;

  /// Defines the settings that are excluded from import/export
  static List<LocalSettings> importExportExcludedSettings = [
    LocalSettings.draftsCache,
    LocalSettings.anonymousInstances,
    LocalSettings.currentAnonymousInstance,
    LocalSettings.advancedShareOptions,
  ];
}

extension LocalizationExt on AppLocalizations {
  String getLocalSettingLocalization(String key) {
    Map<String, String> localizationMap = {
      'defaultFeedType': defaultFeedType,
      'defaultFeedSortType': defaultFeedSortType,
      'hideNsfwPostsFromFeed': hideNsfwPostsFromFeed,
      'hideNsfwPreviews': hideNsfwPreviews,
      'tabletMode': tabletMode,
      'scrapeMissingLinkPreviews': scrapeMissingLinkPreviews,
      'openLinksInExternalBrowser': openLinksInExternalBrowser,
      'openLinksInReaderMode': openLinksInReaderMode,
      'showUserDisplayNames': showUserDisplayNames,
      'markPostAsReadOnMediaView': markPostAsReadOnMediaView,
      'showInAppUpdateNotifications': showInAppUpdateNotifications,
      'enableInboxNotifications': enableInboxNotifications,
      'showScoreCounters': showScoreCounters,
      'appLanguage': appLanguage,
      'compactView': compactView,
      'showPostTitleFirst': showPostTitleFirst,
      'showThumbnailPreviewOnRight': showThumbnailPreviewOnRight,
      'showTextPostIndicator': showTextPostIndicator,
      'tappableAuthorCommunity': tappableAuthorCommunity,
      'postBodyViewType': postBodyViewType,
      'showPostVoteActions': showPostVoteActions,
      'showPostSaveAction': showPostSaveAction,
      'showPostCommunityIcons': showPostCommunityIcons,
      'showFullHeightImages': showFullHeightImages,
      'showEdgeToEdgeImages': showEdgeToEdgeImages,
      'showPostTextContentPreview': showPostTextContentPreview,
      'showPostAuthor': showPostAuthor,
      'dimReadPosts': dimReadPosts,
      'useAdvancedShareSheet': useAdvancedShareSheet,
      'showCrossPosts': showCrossPosts,
      'keywordFilters': keywordFilters,
      'hideTopBarOnScroll': hideTopBarOnScroll,
      'userFormat': userFormat,
      'communityFormat': communityFormat,
      'defaultCommentSortType': defaultCommentSortType,
      'collapseParentCommentBodyOnGesture': collapseParentCommentBodyOnGesture,
      'showCommentActionButtons': showCommentActionButtons,
      'showUserInstance': showUserInstance,
      'combineCommentScores': combineCommentScores,
      'nestedCommentIndicatorStyle': nestedCommentIndicatorStyle,
      'nestedCommentIndicatorColor': nestedCommentIndicatorColor,
      'reduceAnimations': reduceAnimations,
      'theme': theme,
      'themeAccentColor': themeAccentColor,
      'useMaterialYouTheme': useMaterialYouTheme,
      'postTitleFontScale': postTitleFontScale,
      'postContentFontScale': postContentFontScale,
      'commentFontScale': commentFontScale,
      'metadataFontScale': metadataFontScale,
      'navbarSwipeGestures': navbarSwipeGestures,
      'navbarDoubleTapGestures': navbarDoubleTapGestures,
      'postSwipeActions': postSwipeActions,
      'leftShortSwipe': leftShortSwipe,
      'leftLongSwipe': leftLongSwipe,
      'rightShortSwipe': rightShortSwipe,
      'rightLongSwipe': rightLongSwipe,
      'commentSwipeActions': commentSwipeActions,
      'fullscreenSwipeGestures': fullscreenSwipeGestures,
      'enableFloatingButtonOnFeeds': enableFloatingButtonOnFeeds,
      'enableFloatingButtonOnPosts': enableFloatingButtonOnPosts,
      'backToTop': backToTop,
      'subscriptions': subscriptions,
      'refresh': refresh,
      'dismissRead': dismissRead,
      'changeSort': changeSort,
      'newPost': newPost,
      'replyToPost': replyToPost,
      'search': search,
      'enableCommentNavigation': enableCommentNavigation,
      'combineNavAndFab': combineNavAndFab,
      'floatingActionButton': floatingActionButton,
      'general': general,
      'feed': feed,
      'posts': posts,
      'comments': comments,
      'linksBehaviourSettings': linksBehaviourSettings,
      'importExportSettings': importExportSettings,
      'advanced': advanced,
      'notifications': notifications(1),
      'sidebar': sidebar,
      'cardView': cardView,
      'navigation': navigation,
      'fonts': fonts,
      'filters': filters,
      'blockedCommunities': blockedCommunities,
      'feedTypeAndSorts': feedTypeAndSorts,
      'profiles': profiles,
      'animations': animations,
    };

    if (localizationMap.containsKey(key)) {
      return localizationMap[key]!;
    } else {
      return key;
    }
  }
}
