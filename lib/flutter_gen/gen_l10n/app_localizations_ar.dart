import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

/// The translations for Arabic (`ar`).
class AppLocalizationsAr extends AppLocalizations {
  AppLocalizationsAr([String locale = 'ar']) : super(locale);

  @override
  String get about => 'About';

  @override
  String get accessibility => 'Accessibility';

  @override
  String get accessibilityProfilesDescription => 'Accessibility profiles allows applying several settings at once to accommodate a particular accessibility requirement.';

  @override
  String account(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Accounts',
      one: 'Account',
      zero: 'Account',
    );
    return '$_temp0 ';
  }

  @override
  String get accountSettings => 'Account Settings';

  @override
  String get actions => 'Actions';

  @override
  String get active => 'Active';

  @override
  String get add => 'Add';

  @override
  String get addAccount => 'Add Account';

  @override
  String get addAccountToSeeProfile => 'Log in to see your account.';

  @override
  String get addAnonymousInstance => 'Add Anonymous Instance';

  @override
  String get addKeywordFilter => 'Add Keyword';

  @override
  String get addToFavorites => 'Add to favorites';

  @override
  String get addedCommunityToSubscriptions => 'Subscribed to community';

  @override
  String get advanced => 'Advanced';

  @override
  String get all => 'All';

  @override
  String get allPosts => 'All Posts';

  @override
  String get allowOpenSupportedLinks => 'Allow app to open supported links.';

  @override
  String get alreadyPostedTo => 'Already posted to';

  @override
  String andXMore(Object count) {
    return 'and $count more';
  }

  @override
  String get animations => 'Animations';

  @override
  String get anonymous => 'Anonymous';

  @override
  String get appLanguage => 'App Language';

  @override
  String get appearance => 'Appearance';

  @override
  String get applied => 'Applied';

  @override
  String get apply => 'Apply';

  @override
  String get back => 'Back';

  @override
  String get backButton => 'Back button';

  @override
  String get backToTop => 'Back To Top';

  @override
  String get backgroundCheckWarning => 'Note that notification checks will consume additional battery';

  @override
  String get base => 'Base';

  @override
  String get blockCommunity => 'Block Community';

  @override
  String get blockInstance => 'Block Instance';

  @override
  String get blockUser => 'Block User';

  @override
  String get blockedCommunities => 'Blocked Communities';

  @override
  String get blockedInstances => 'Blocked Instances';

  @override
  String get blockedUsers => 'Blocked Users';

  @override
  String browsingAnonymously(Object instance) {
    return 'You are currently browsing $instance anonymously.';
  }

  @override
  String get cancel => 'Cancel';

  @override
  String get cannotReportOwnComment => 'You may not submit a report for your own comment.';

  @override
  String get cantBlockAdmin => 'You may not block an instance administrator.';

  @override
  String get cantBlockYourself => 'You may not block yourself.';

  @override
  String get cardView => 'Card View';

  @override
  String get cardViewDescription => 'Enable card view to adjust settings';

  @override
  String get cardViewSettings => 'Card View Settings';

  @override
  String get changeSort => 'Change Sort';

  @override
  String clearCache(Object cacheSize) {
    return 'Clear Cache ($cacheSize)';
  }

  @override
  String get clearDatabase => 'Clear Database';

  @override
  String get clearPreferences => 'Clear Preferences';

  @override
  String get clearSearch => 'Clear Search';

  @override
  String get clearedCache => 'Cleared cache successfully.';

  @override
  String get clearedDatabase => 'Local database cleared. Restart Thunder for new changes to take effect.';

  @override
  String get clearedUserPreferences => 'Cleared all user preferences';

  @override
  String get close => 'Close';

  @override
  String get collapseCommentPreview => 'Collapse Comment Preview';

  @override
  String get collapseInformation => 'Collapse Information';

  @override
  String get collapseParentCommentBodyOnGesture => 'Hide Parent Comment when Collapsed';

  @override
  String get collapsePost => 'Collapse post';

  @override
  String get collapsePostPreview => 'Collapse Post Preview';

  @override
  String get collapseSpoiler => 'Collapse Spoiler';

  @override
  String get combineCommentScores => 'Combine Comment Scores';

  @override
  String get combineCommentScoresLabel => 'Combine Comment Scores';

  @override
  String get combineNavAndFab => 'Combine FAB and Navigation Buttons';

  @override
  String get combineNavAndFabDescription => 'Floating Action Button will be shown between navigation buttons.';

  @override
  String get comment => 'Comment';

  @override
  String get commentBehaviourSettings => 'Comments';

  @override
  String get commentFontScale => 'Comment Content Font Scale';

  @override
  String get commentPreview => 'Show a preview of the comments with the given settings';

  @override
  String get commentReported => 'The comment has been marked for review.';

  @override
  String get commentSavedAsDraft => 'Comment saved as draft';

  @override
  String get commentShowUserInstance => 'Show User Instance';

  @override
  String get commentSortType => 'Comment Sort Type';

  @override
  String get commentSwipeActions => 'Comment Swipe Actions';

  @override
  String get commentSwipeGesturesHint => 'Looking to use buttons instead? Enable them in the comments section in general settings.';

  @override
  String get comments => 'Comments';

  @override
  String get communities => 'Communities';

  @override
  String get community => 'Community';

  @override
  String get communityFormat => 'Community Format';

  @override
  String get compactView => 'Compact View';

  @override
  String get compactViewDescription => 'Enable compact view to adjust settings';

  @override
  String get compactViewSettings => 'Compact View Settings';

  @override
  String get condensed => 'Condensed';

  @override
  String get confirm => 'Confirm';

  @override
  String get confirmLogOutBody => 'Are you sure you want to log out?';

  @override
  String get confirmLogOutTitle => 'Log Out?';

  @override
  String get confirmMarkAllAsReadBody => 'Are you sure you want to mark all messages as read?';

  @override
  String get confirmMarkAllAsReadTitle => 'Mark All As Read?';

  @override
  String get confirmResetCommentPreferences => 'This will reset all comment preferences. Are you sure you want to proceed?';

  @override
  String get confirmResetPostPreferences => 'This will reset all post preferences. Are you sure you want to proceed?';

  @override
  String get controversial => 'Controversial';

  @override
  String get copiedToClipboard => 'Copied to clipboard';

  @override
  String get copy => 'Copy';

  @override
  String get copyText => 'Copy Text';

  @override
  String get couldNotDetermineCommentDelete => 'Error: Could not determine post to delete the comment.';

  @override
  String get couldNotDeterminePostComment => 'Error: Could not determine post to comment to.';

  @override
  String get couldntCreateReport => 'Your comment report could not be submitted at this time. Please try again later';

  @override
  String countSubscribers(Object count) {
    return '$count subscribers';
  }

  @override
  String countUsers(Object count) {
    return '$count users';
  }

  @override
  String get createAccount => 'Create Account';

  @override
  String get createComment => 'Create Comment';

  @override
  String get createNewCrossPost => 'Create new cross-post';

  @override
  String get createPost => 'Create Post';

  @override
  String get creator => 'Creator';

  @override
  String crossPostedFrom(Object postUrl) {
    return 'cross-posted from:  $postUrl';
  }

  @override
  String get crossPostedTo => 'Cross-posted to';

  @override
  String get currentLongPress => 'Currently set as long press';

  @override
  String get currentSinglePress => 'Currently set as single press';

  @override
  String get customizeSwipeActions => 'Customize swipe actions (tap to change)';

  @override
  String get dangerZone => 'Danger Zone';

  @override
  String get dark => 'Dark';

  @override
  String get debug => 'Debug';

  @override
  String get debugDescription => 'The following debug settings should only be used for troubleshooting purposes.';

  @override
  String get defaultCommentSortType => 'Default Comment Sort Type';

  @override
  String get defaultFeedSortType => 'Default Feed Sort Type';

  @override
  String get defaultFeedType => 'Default Feed Type';

  @override
  String get delete => 'Delete';

  @override
  String get deleteAccount => 'Delete Account';

  @override
  String get deleteAccountDescription => 'To permanently delete your account, you will be redirected to your instance site. \n\nAre you sure you want to continue?';

  @override
  String get deleteLocalDatabase => 'Delete Local Database';

  @override
  String get deleteLocalDatabaseDescription => 'This action will remove the local database and will log you out of all your accounts.\n\nAre you sure you want to continue?';

  @override
  String get deleteLocalPreferences => 'Delete Local Preferences';

  @override
  String get deleteLocalPreferencesDescription => 'This will clear all your user preferences and settings in Thunder.\n\nDo you want to continue?';

  @override
  String get dimReadPosts => 'Dim Read Posts';

  @override
  String get disable => 'Disable';

  @override
  String get dismissRead => 'Dismiss Read';

  @override
  String get displayUserScore => 'Display User Scores (Karma).';

  @override
  String get downloadingMedia => 'Downloading media to share…';

  @override
  String get downvote => 'Downvote';

  @override
  String get downvotesDisabled => 'Downvotes are turned off on this instance.';

  @override
  String get edit => 'Edit';

  @override
  String get editComment => 'Edit Comment';

  @override
  String get editPost => 'Edit Post';

  @override
  String get empty => 'Empty';

  @override
  String get emptyInbox => 'Empty Inbox';

  @override
  String get emptyUri => 'The link is empty. Please provide a valid dynamic link to proceed.';

  @override
  String get enableCommentNavigation => 'Enable Comment Navigation';

  @override
  String get enableFeedFab => 'Enable Floating Button on Feeds';

  @override
  String get enableFloatingButtonOnFeeds => 'Enable Floating Button On Feeds';

  @override
  String get enableFloatingButtonOnPosts => 'Enable Floating Button On Posts';

  @override
  String get enableInboxNotifications => 'Enable Inbox Notifications (Experimental)';

  @override
  String get enablePostFab => 'Enable Floating Button on Posts';

  @override
  String get endSearch => 'End Search';

  @override
  String errorDownloadingMedia(Object errorMessage) {
    return 'Could not download the media file to share: $errorMessage';
  }

  @override
  String get exceptionProcessingUri => 'An error occurred while processing the link. It may not be available on your instance.';

  @override
  String get expandCommentPreview => 'Expand Comment Preview';

  @override
  String get expandInformation => 'Expand Information';

  @override
  String get expandOptions => 'Expand options';

  @override
  String get expandPost => 'Expand post';

  @override
  String get expandPostPreview => 'Expand Post Preview';

  @override
  String get expandSpoiler => 'Expand Spoiler';

  @override
  String get expanded => 'Expanded';

  @override
  String get extraLarge => 'Extra Large';

  @override
  String failedToBlock(Object errorMessage) {
    return 'Failed to block: $errorMessage';
  }

  @override
  String failedToLoadBlocks(Object errorMessage) {
    return 'Could not load blocks: $errorMessage';
  }

  @override
  String failedToUnblock(Object errorMessage) {
    return 'Could not unblock: $errorMessage';
  }

  @override
  String get favorites => 'Favorites';

  @override
  String get feed => 'Feed';

  @override
  String get feedBehaviourSettings => 'Feed';

  @override
  String get feedTypeAndSorts => 'Default Feed Type and Sorting';

  @override
  String get fetchAccountError => 'Could not determine account';

  @override
  String filteringBy(Object entity) {
    return 'Filtering by $entity';
  }

  @override
  String get filters => 'Filters';

  @override
  String get floatingActionButton => 'Floating Action Button';

  @override
  String get floatingActionButtonInformation => 'Thunder has a fully customizable FAB experience that supports a few gestures.\n- Swipe up to reveal additional FAB actions\n- Swipe down/up to hide or reveal the FAB\n\nTo customize the main and secondary actions for the FAB, long press on one of the actions below.';

  @override
  String get floatingActionButtonLongPressDescription => 'denotes the FAB\'s long-press action.';

  @override
  String get floatingActionButtonSinglePressDescription => 'denotes the FAB\'s single-press action.';

  @override
  String get fonts => 'Fonts';

  @override
  String get fullScreenNavigationSwipeDescription => 'Swipe anywhere to go back when left-to-right gestures are disabled';

  @override
  String get fullscreenSwipeGestures => 'Fullscreen Swipe Gestures';

  @override
  String get general => 'General';

  @override
  String get generalSettings => 'General Settings';

  @override
  String get gestures => 'Gestures';

  @override
  String get gettingStarted => 'Getting Started';

  @override
  String get hideNsfwPostsFromFeed => 'Hide NSFW Posts from Feed';

  @override
  String get hideNsfwPreviews => 'Hide NSFW Previews';

  @override
  String get hidePassword => 'Hide Password';

  @override
  String get hideTopBarOnScroll => 'Hide Top Bar on Scroll';

  @override
  String get hot => 'Hot';

  @override
  String get image => 'Image';

  @override
  String get importExportSettings => 'Import/Export Settings';

  @override
  String get importSettings => 'Import Settings';

  @override
  String inReplyTo(Object community, Object post) {
    return 'In reply to $post in $community';
  }

  @override
  String get inbox => 'Inbox';

  @override
  String get includeCommunity => 'Include Community';

  @override
  String get includeExternalLink => 'Include External Link';

  @override
  String get includeImage => 'Include Image';

  @override
  String get includePostLink => 'Include Post Link';

  @override
  String get includeText => 'Include Text';

  @override
  String get includeTitle => 'Include Title';

  @override
  String get information => 'Information';

  @override
  String get instance => 'Instance';

  @override
  String instanceHasAlreadyBenAdded(Object instance) {
    return '$instance has already been added.';
  }

  @override
  String get internetOrInstanceIssues => 'You may not be connected to the Internet, or your instance may be currently unavailable.';

  @override
  String get keywordFilterDescription => 'Filters posts containing any keywords in the title or body';

  @override
  String get keywordFilters => 'Keyword Filters';

  @override
  String get language => 'Language';

  @override
  String get languageNotAllowed => 'The community you are posting to does not allow posts in the language that you have selected. Try another language.';

  @override
  String get large => 'Large';

  @override
  String get leftLongSwipe => 'Left Long Swipe';

  @override
  String get leftShortSwipe => 'Left Short Swipe';

  @override
  String get light => 'Light';

  @override
  String link(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Links',
      one: 'Link',
      zero: 'Link',
    );
    return '$_temp0 ';
  }

  @override
  String get linkActions => 'Link Actions';

  @override
  String get linksBehaviourSettings => 'Links';

  @override
  String loadMorePlural(Object count) {
    return 'Load $count more replies…';
  }

  @override
  String loadMoreSingular(Object count) {
    return 'Load $count more reply…';
  }

  @override
  String get local => 'Local';

  @override
  String get localPosts => 'Local Posts';

  @override
  String get logOut => 'Log out';

  @override
  String get login => 'Log in';

  @override
  String loginFailed(Object errorMessage) {
    return 'Could not log in. Please try again:($errorMessage)';
  }

  @override
  String get loginSucceeded => 'Logged in.';

  @override
  String get loginToPerformAction => 'You need to be logged in to carry out this task.';

  @override
  String get loginToSeeInbox => 'Log in to see your inbox';

  @override
  String get malformedUri => 'The link you provided is in an unsupported format. Please make sure it\'s a valid link.';

  @override
  String get manageAccounts => 'Manage Accounts';

  @override
  String get markAllAsRead => 'Mark All As Read';

  @override
  String get markPostAsReadOnMediaView => 'Mark Read After Viewing Media';

  @override
  String get medium => 'Medium';

  @override
  String mention(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Mentions',
      one: 'Mention',
      zero: 'Mention',
    );
    return '$_temp0';
  }

  @override
  String message(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Messages',
      one: 'Message',
      zero: 'Message',
    );
    return '$_temp0';
  }

  @override
  String get metadataFontScale => 'Metadata Font Scale';

  @override
  String get missingErrorMessage => 'No error message available';

  @override
  String get moderatedCommunities => 'Moderated Communities';

  @override
  String get mostComments => 'Most Comments';

  @override
  String get mustBeLoggedInComment => 'You need to be logged in to comment';

  @override
  String get mustBeLoggedInPost => 'You need to be logged in to create a post';

  @override
  String get navbarDoubleTapGestures => 'Navbar Double Tap Gestures';

  @override
  String get navbarSwipeGestures => 'Navbar Swipe Gestures';

  @override
  String get navigateDown => 'Next comment';

  @override
  String get navigateUp => 'Previous comment';

  @override
  String get navigation => 'Navigation';

  @override
  String get nestedCommentIndicatorColor => 'Nested Comment Indicator Color';

  @override
  String get nestedCommentIndicatorStyle => 'Nested Comment Indicator Style';

  @override
  String get newComments => 'New Comments';

  @override
  String get newPost => 'New Post';

  @override
  String get new_ => 'New';

  @override
  String get noComments => 'Oh. There are no comments.';

  @override
  String get noCommentsFound => 'No comments found.';

  @override
  String get noCommunitiesFound => 'No communities found.';

  @override
  String get noCommunityBlocks => 'No blocked communities.';

  @override
  String get noFavoritedCommunities => 'No favorited communities';

  @override
  String get noInstanceBlocks => 'No blocked instances.';

  @override
  String get noKeywordFilters => 'No keyword filters added';

  @override
  String get noLanguage => 'No language';

  @override
  String get noPosts => 'No posts found.';

  @override
  String get noPostsFound => 'No posts found';

  @override
  String get noResultsFound => 'No results found.';

  @override
  String get noSubscriptions => 'No Subscriptions';

  @override
  String get noUserBlocks => 'No blocked users.';

  @override
  String get noUsersFound => 'No users found.';

  @override
  String notValidLemmyInstance(Object instance) {
    return '$instance does not appear to be a valid Lemmy instance';
  }

  @override
  String get notValidUrl => 'Not a valid URL';

  @override
  String get nothingToShare => 'Nothing to share';

  @override
  String notifications(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Notifications',
      one: 'Notifications',
      zero: 'Notification',
    );
    return '$_temp0';
  }

  @override
  String get notificationsBehaviourSettings => 'Notifications';

  @override
  String get notificationsNotAllowed => 'Notifications are not allowed for Thunder in system settings';

  @override
  String get notificationsWarningDialog => 'Notifications are an experimental feature which may not function correctly on all devices.\n\n· Checks will occur every ~15 minutes and will consume additional battery.\n\n· Disable battery optimizations for a higher likelihood of successful notifications.\n\nSee the following page for more information.';

  @override
  String get off => 'off';

  @override
  String get ok => 'OK';

  @override
  String get old => 'Old';

  @override
  String get on => 'on';

  @override
  String get onlyModsCanPostInCommunity => 'Only moderators may post in this community';

  @override
  String get open => 'Open';

  @override
  String get openAccountSwitcher => 'Open account switcher';

  @override
  String get openByDefault => 'Open by default';

  @override
  String get openInBrowser => 'Open in Browser';

  @override
  String get openInstance => 'Open Instance';

  @override
  String get openLinksInExternalBrowser => 'Open Links in External Browser';

  @override
  String get openLinksInReaderMode => 'Open Links in Reader Mode';

  @override
  String get openSettings => 'Open Settings';

  @override
  String get overview => 'Overview';

  @override
  String get password => 'Password';

  @override
  String get pending => 'Pending';

  @override
  String get permissionDenied => 'Permission Denied';

  @override
  String get permissionDeniedMessage => 'Thunder requires some permissions in order to save this image which have been denied.';

  @override
  String get postBehaviourSettings => 'Posts';

  @override
  String get postBody => 'Post Body';

  @override
  String get postBodySettings => 'Post Body Settings';

  @override
  String get postBodySettingsDescription => 'These settings affect the display of the post body';

  @override
  String get postBodyViewType => 'Post Body View Type';

  @override
  String get postContentFontScale => 'Post Content Font Scale';

  @override
  String get postCreatedSuccessfully => 'Post created successfully!';

  @override
  String get postLocked => 'Post locked. No replies allowed.';

  @override
  String get postNSFW => 'Mark as NSFW';

  @override
  String get postPreview => 'Show a preview of the post with the given settings';

  @override
  String get postSavedAsDraft => 'Post saved as draft';

  @override
  String get postSwipeActions => 'Post Swipe Actions';

  @override
  String get postSwipeGesturesHint => 'Looking to use buttons instead? Change what buttons appear on post cards in general settings.';

  @override
  String get postTitle => 'Title';

  @override
  String get postTitleFontScale => 'Post Title Font Scale';

  @override
  String get postTogglePreview => 'Toggle Preview';

  @override
  String get postURL => 'URL';

  @override
  String get postUploadImageError => 'Could not upload image';

  @override
  String get postViewType => 'Post View Type';

  @override
  String get posts => 'Posts';

  @override
  String get preview => 'Preview';

  @override
  String profileAppliedSuccessfully(Object profile) {
    return '$profile applied successfully!';
  }

  @override
  String get profiles => 'Profiles';

  @override
  String get pureBlack => 'Pure Black';

  @override
  String get reachedTheBottom => 'Hmmm. It seems like you\'ve reached the bottom.';

  @override
  String get readAll => 'Read All';

  @override
  String get reduceAnimations => 'Reduce Animations';

  @override
  String get reducesAnimations => 'Reduces the animations used within Thunder';

  @override
  String get refresh => 'Refresh';

  @override
  String get refreshContent => 'Refresh Content';

  @override
  String get remove => 'Remove';

  @override
  String get removeAccount => 'Remove Account';

  @override
  String get removeFromFavorites => 'Remove from favorites';

  @override
  String get removeInstance => 'Remove instance';

  @override
  String removeKeyword(Object keyword) {
    return 'Remove \"$keyword\"?';
  }

  @override
  String get removeKeywordFilter => 'Remove Keyword';

  @override
  String get removedCommunityFromSubscriptions => 'Unsubscribed from community';

  @override
  String reply(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Replies',
      one: 'Reply',
      zero: 'Reply',
    );
    return '$_temp0';
  }

  @override
  String get replyNotSupported => 'Replying from this view is currently not supported yet';

  @override
  String get replyToPost => 'Reply to Post';

  @override
  String replyingTo(Object author) {
    return 'Replying to $author';
  }

  @override
  String get report => 'Report';

  @override
  String get reportComment => 'Report Comment';

  @override
  String get reset => 'Reset';

  @override
  String get resetCommentPreferences => 'Reset comment preferences';

  @override
  String get resetPostPreferences => 'Reset post preferences';

  @override
  String get resetPreferences => 'Reset Preferences';

  @override
  String get resetPreferencesAndData => 'Reset Preferences and Data';

  @override
  String get restore => 'Restore';

  @override
  String get restoredCommentFromDraft => 'Restored comment from draft';

  @override
  String get restoredPostFromDraft => 'Restored post from draft';

  @override
  String get retry => 'Retry';

  @override
  String get rightLongSwipe => 'Right Long Swipe';

  @override
  String get rightShortSwipe => 'Right Short Swipe';

  @override
  String get save => 'Save';

  @override
  String get saveSettings => 'Save Settings';

  @override
  String get saved => 'Saved';

  @override
  String get scaled => 'Scaled';

  @override
  String get scrapeMissingLinkPreviews => 'Scrape Missing Link Previews';

  @override
  String get scrapeMissingPreviews => 'Enabling will have a performance hit.';

  @override
  String get screenReaderProfile => 'Screen Reader Profile';

  @override
  String get screenReaderProfileDescription => 'Optimizes Thunder for screen readers by reducing overall elements and removing potentially conflicting gestures.';

  @override
  String get search => 'Search';

  @override
  String get searchByText => 'Search by text';

  @override
  String get searchByUrl => 'Search by URL';

  @override
  String get searchComments => 'Search Comments';

  @override
  String searchCommentsFederatedWith(Object instance) {
    return 'Search for comments federated with $instance';
  }

  @override
  String searchCommunitiesFederatedWith(Object instance) {
    return 'Search for communities federated with $instance';
  }

  @override
  String searchInstance(Object instance) {
    return 'Search $instance';
  }

  @override
  String get searchPostSearchType => 'Select Post Search Type';

  @override
  String searchPostsFederatedWith(Object instance) {
    return 'Search for posts federated with $instance';
  }

  @override
  String get searchTerm => 'Search term';

  @override
  String searchUsersFederatedWith(Object instance) {
    return 'Search for users federated with $instance';
  }

  @override
  String get selectCommunity => 'Select a community';

  @override
  String get selectFeedType => 'Select Feed Type';

  @override
  String get selectLanguage => 'Select language';

  @override
  String get selectSearchType => 'Select Search Type';

  @override
  String serverErrorComments(Object message) {
    return 'A server error was encountered when fetching more comments: $message';
  }

  @override
  String get setAction => 'Set Action';

  @override
  String get setLongPress => 'Set as long-press action';

  @override
  String get setShortPress => 'Set as short-press action';

  @override
  String settingTypeNotSupported(Object settingType) {
    return 'Settings of type $settingType are not yet supported.';
  }

  @override
  String get settings => 'Settings';

  @override
  String get settingsFeedCards => 'These settings apply to the cards in the main feed, actions are always available when actually opening posts.';

  @override
  String get share => 'Share';

  @override
  String get shareLink => 'Share Link';

  @override
  String get shareMedia => 'Share Media';

  @override
  String get sharePost => 'Share Post';

  @override
  String get showAll => 'Show All';

  @override
  String get showBotAccounts => 'Show Bot Accounts';

  @override
  String get showCommentActionButtons => 'Show Comment Action Buttons';

  @override
  String get showCrossPosts => 'Show Cross Posts';

  @override
  String get showEdgeToEdgeImages => 'Show Edge to Edge Images';

  @override
  String get showFullHeightImages => 'Show Full Height Images';

  @override
  String get showInAppUpdateNotifications => 'Get Notified of new GitHub Releases';

  @override
  String get showLess => 'Show fewer';

  @override
  String get showMore => 'Show more';

  @override
  String get showPassword => 'Show Password';

  @override
  String get showPostAuthor => 'Show Post Author';

  @override
  String get showPostCommunityIcons => 'Show Community Icons';

  @override
  String get showPostSaveAction => 'Show Save Button';

  @override
  String get showPostTextContentPreview => 'Show Text Preview';

  @override
  String get showPostTitleFirst => 'Show Title First';

  @override
  String get showPostVoteActions => 'Show Vote Buttons';

  @override
  String get showReadPosts => 'Show Read Posts';

  @override
  String get showScoreCounters => 'Display User Scores';

  @override
  String get showScores => 'Show Post/Comment Scores';

  @override
  String get showTextPostIndicator => 'Show Text Post Indicator';

  @override
  String get showThumbnailPreviewOnRight => 'Show Thumbnails on the Right';

  @override
  String get showUserDisplayNames => 'Show User Display Names';

  @override
  String get showUserInstance => 'Show User Instance';

  @override
  String get sidebar => 'Sidebar';

  @override
  String get sidebarBottomNavDoubleTapDescription => 'Double-tap bottom nav to open sidebar';

  @override
  String get sidebarBottomNavSwipeDescription => 'Swipe bottom nav to open sidebar';

  @override
  String get small => 'Small';

  @override
  String get somethingWentWrong => 'Oops, something went wrong!';

  @override
  String get sortBy => 'Sort By';

  @override
  String get sortByTop => 'Sort by Top';

  @override
  String get sortOptions => 'Sort Options';

  @override
  String get spoiler => 'Spoiler';

  @override
  String get submit => 'Submit';

  @override
  String get subscribe => 'Subscribe';

  @override
  String get subscribeToCommunity => 'Subscribe to Community';

  @override
  String get subscribed => 'Subscribed';

  @override
  String get subscriptions => 'Subscriptions';

  @override
  String get successfullyBlocked => 'Blocked.';

  @override
  String successfullyBlockedCommunity(Object communityName) {
    return 'Blocked $communityName';
  }

  @override
  String get successfullyUnblocked => 'Unblocked.';

  @override
  String successfullyUnblockedCommunity(Object communityName) {
    return 'Unblocked $communityName';
  }

  @override
  String get suggestedTitle => 'Suggested title';

  @override
  String get system => 'System';

  @override
  String get tabletMode => 'Tablet Mode (2-column view)';

  @override
  String get tapToExit => 'Press back again to exit';

  @override
  String get tappableAuthorCommunity => 'Tappable Authors & Communities';

  @override
  String get text => 'Text';

  @override
  String get theme => 'Theme';

  @override
  String get themeAccentColor => 'Accent Colors';

  @override
  String get theming => 'Theming';

  @override
  String get timeoutComments => 'Error: Timeout when attempting to fetch comments';

  @override
  String get timeoutErrorMessage => 'There was a timeout waiting for a response.';

  @override
  String get timeoutSaveComment => 'Error: Timeout when attempting to save a comment';

  @override
  String get timeoutSavingPost => 'Error: Timeout when attempting to save post.';

  @override
  String get timeoutUpvoteComment => 'Error: Timeout when attempting to vote on comment';

  @override
  String get timeoutVotingPost => 'Error: Timeout when attempting to vote post.';

  @override
  String get toggelRead => 'Toggle Read';

  @override
  String get top => 'Top';

  @override
  String get topAll => 'Top of all time';

  @override
  String get topDay => 'Top Today';

  @override
  String get topHour => 'Top in Past Hour';

  @override
  String get topMonth => 'Top Month';

  @override
  String get topNineMonths => 'Top in Past 9 Months';

  @override
  String get topSixHour => 'Top in Past 6 Hours';

  @override
  String get topSixMonths => 'Top in Past 6 Months';

  @override
  String get topThreeMonths => 'Top in Past 3 Months';

  @override
  String get topTwelveHour => 'Top in Past 12 Hours';

  @override
  String get topWeek => 'Top Week';

  @override
  String get topYear => 'Top Year';

  @override
  String get totp => 'TOTP (optional)';

  @override
  String get translationsMayNotBeComplete => 'Please note that the translations may not be complete';

  @override
  String get trendingCommunities => 'Trending Communities';

  @override
  String get trySearchingFor => 'Try searching for...';

  @override
  String get unableToFindCommunity => 'Unable to find community';

  @override
  String unableToFindCommunityName(Object communityName) {
    return 'Unable to find community \'$communityName\'';
  }

  @override
  String get unableToFindInstance => 'Unable to find instance';

  @override
  String get unableToFindLanguage => 'Unable to find language';

  @override
  String get unableToFindUser => 'Unable to find user';

  @override
  String get unableToLoadImage => 'Unable to load image';

  @override
  String unableToLoadImageFrom(Object domain) {
    return 'Unable to load image from $domain';
  }

  @override
  String unableToLoadInstance(Object instance) {
    return 'Unable to load $instance';
  }

  @override
  String unableToLoadPostsFrominstance(Object instance) {
    return 'Unable to load posts from $instance';
  }

  @override
  String get unableToLoadReplies => 'Unable to load more replies.';

  @override
  String unableToNavigateToInstance(Object instanceHost) {
    return 'Unable to navigate to $instanceHost. It may not be a valid Lemmy instance.';
  }

  @override
  String get unblockInstance => 'Unblock Instance';

  @override
  String get understandEnable => 'I Understand, Enable';

  @override
  String get unexpectedError => 'Unexpected Error';

  @override
  String get unsubscribe => 'Unsubscribe';

  @override
  String get unsubscribeFromCommunity => 'Unsubscribe from Community';

  @override
  String get unsubscribePending => 'Unsubscribe (subscription pending)';

  @override
  String get unsubscribed => 'Unsubscribed';

  @override
  String updateReleased(Object version) {
    return 'Update released: $version';
  }

  @override
  String get uploadImage => 'Upload image';

  @override
  String get upvote => 'Upvote';

  @override
  String get uriNotSupported => 'This type of link is not supported at the moment.';

  @override
  String get url => 'URL';

  @override
  String get useAdvancedShareSheet => 'Use Advanced Share Sheet';

  @override
  String get useCompactView => 'Enable for small posts, disable for big.';

  @override
  String get useMaterialYouTheme => 'Use Material You Theme';

  @override
  String get useMaterialYouThemeDescription => 'Overrides the selected custom theme';

  @override
  String useSuggestedTitle(Object title) {
    return 'Use suggested title: $title';
  }

  @override
  String get userFormat => 'User Format';

  @override
  String get userNotLoggedIn => 'User not logged in';

  @override
  String get userProfiles => 'User Profiles';

  @override
  String get userSettingDescription => 'These settings sync with your Lemmy account and are only applied on a per-account basis.';

  @override
  String get username => 'Username';

  @override
  String get users => 'Users';

  @override
  String get viewAllComments => 'View all comments';

  @override
  String get visitCommunity => 'Visit Community';

  @override
  String get visitInstance => 'Visit Instance';

  @override
  String get visitUserProfile => 'Visit User Profile';

  @override
  String get warning => 'Warning';

  @override
  String xDownvotes(Object x) {
    return '$x downvotes';
  }

  @override
  String xScore(Object x) {
    return '$x score';
  }

  @override
  String xUpvotes(Object x) {
    return '$x upvotes';
  }
}
