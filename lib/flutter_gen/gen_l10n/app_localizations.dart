import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_ar.dart';
import 'app_localizations_de.dart';
import 'app_localizations_en.dart';
import 'app_localizations_eo.dart';
import 'app_localizations_es.dart';
import 'app_localizations_fi.dart';
import 'app_localizations_fr.dart';
import 'app_localizations_it.dart';
import 'app_localizations_nb.dart';
import 'app_localizations_pl.dart';
import 'app_localizations_ru.dart';
import 'app_localizations_sv.dart';
import 'app_localizations_uk.dart';

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'gen_l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate = _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('ar'),
    Locale('de'),
    Locale('en'),
    Locale('eo'),
    Locale('es'),
    Locale('fi'),
    Locale('fr'),
    Locale('it'),
    Locale('nb'),
    Locale('pl'),
    Locale('ru'),
    Locale('sv'),
    Locale('uk')
  ];

  /// About settings category.
  ///
  /// In en, this message translates to:
  /// **'About'**
  String get about;

  /// No description provided for @accessibility.
  ///
  /// In en, this message translates to:
  /// **'Accessibility'**
  String get accessibility;

  /// No description provided for @accessibilityProfilesDescription.
  ///
  /// In en, this message translates to:
  /// **'Accessibility profiles allows applying several settings at once to accommodate a particular accessibility requirement.'**
  String get accessibilityProfilesDescription;

  /// Describes the user account
  ///
  /// In en, this message translates to:
  /// **'{count, plural, zero {Account} one {Account} other {Accounts} } '**
  String account(num count);

  /// No description provided for @accountSettings.
  ///
  /// In en, this message translates to:
  /// **'Account Settings'**
  String get accountSettings;

  /// No description provided for @actions.
  ///
  /// In en, this message translates to:
  /// **'Actions'**
  String get actions;

  /// No description provided for @active.
  ///
  /// In en, this message translates to:
  /// **'Active'**
  String get active;

  /// No description provided for @add.
  ///
  /// In en, this message translates to:
  /// **'Add'**
  String get add;

  /// No description provided for @addAccount.
  ///
  /// In en, this message translates to:
  /// **'Add Account'**
  String get addAccount;

  /// No description provided for @addAccountToSeeProfile.
  ///
  /// In en, this message translates to:
  /// **'Log in to see your account.'**
  String get addAccountToSeeProfile;

  /// No description provided for @addAnonymousInstance.
  ///
  /// In en, this message translates to:
  /// **'Add Anonymous Instance'**
  String get addAnonymousInstance;

  /// Hint for text field to add keyword
  ///
  /// In en, this message translates to:
  /// **'Add Keyword'**
  String get addKeywordFilter;

  /// Action to add a community in drawer to favorites
  ///
  /// In en, this message translates to:
  /// **'Add to favorites'**
  String get addToFavorites;

  /// No description provided for @addedCommunityToSubscriptions.
  ///
  /// In en, this message translates to:
  /// **'Subscribed to community'**
  String get addedCommunityToSubscriptions;

  /// Heading for advanced settings
  ///
  /// In en, this message translates to:
  /// **'Advanced'**
  String get advanced;

  /// No description provided for @all.
  ///
  /// In en, this message translates to:
  /// **'All'**
  String get all;

  /// No description provided for @allPosts.
  ///
  /// In en, this message translates to:
  /// **'All Posts'**
  String get allPosts;

  /// Option to permit the app to open supported links.
  ///
  /// In en, this message translates to:
  /// **'Allow app to open supported links.'**
  String get allowOpenSupportedLinks;

  /// No description provided for @alreadyPostedTo.
  ///
  /// In en, this message translates to:
  /// **'Already posted to'**
  String get alreadyPostedTo;

  /// No description provided for @andXMore.
  ///
  /// In en, this message translates to:
  /// **'and {count} more'**
  String andXMore(Object count);

  /// No description provided for @animations.
  ///
  /// In en, this message translates to:
  /// **'Animations'**
  String get animations;

  /// No description provided for @anonymous.
  ///
  /// In en, this message translates to:
  /// **'Anonymous'**
  String get anonymous;

  /// Language selection in settings.
  ///
  /// In en, this message translates to:
  /// **'App Language'**
  String get appLanguage;

  /// Title of Appearance in Settings -> Appearance
  ///
  /// In en, this message translates to:
  /// **'Appearance'**
  String get appearance;

  /// No description provided for @applied.
  ///
  /// In en, this message translates to:
  /// **'Applied'**
  String get applied;

  /// No description provided for @apply.
  ///
  /// In en, this message translates to:
  /// **'Apply'**
  String get apply;

  /// No description provided for @back.
  ///
  /// In en, this message translates to:
  /// **'Back'**
  String get back;

  /// No description provided for @backButton.
  ///
  /// In en, this message translates to:
  /// **'Back button'**
  String get backButton;

  /// No description provided for @backToTop.
  ///
  /// In en, this message translates to:
  /// **'Back To Top'**
  String get backToTop;

  /// Warning for enabling notifications
  ///
  /// In en, this message translates to:
  /// **'Note that notification checks will consume additional battery'**
  String get backgroundCheckWarning;

  /// Description for base font scale
  ///
  /// In en, this message translates to:
  /// **'Base'**
  String get base;

  /// No description provided for @blockCommunity.
  ///
  /// In en, this message translates to:
  /// **'Block Community'**
  String get blockCommunity;

  /// No description provided for @blockInstance.
  ///
  /// In en, this message translates to:
  /// **'Block Instance'**
  String get blockInstance;

  /// No description provided for @blockUser.
  ///
  /// In en, this message translates to:
  /// **'Block User'**
  String get blockUser;

  /// No description provided for @blockedCommunities.
  ///
  /// In en, this message translates to:
  /// **'Blocked Communities'**
  String get blockedCommunities;

  /// No description provided for @blockedInstances.
  ///
  /// In en, this message translates to:
  /// **'Blocked Instances'**
  String get blockedInstances;

  /// No description provided for @blockedUsers.
  ///
  /// In en, this message translates to:
  /// **'Blocked Users'**
  String get blockedUsers;

  /// No description provided for @browsingAnonymously.
  ///
  /// In en, this message translates to:
  /// **'You are currently browsing {instance} anonymously.'**
  String browsingAnonymously(Object instance);

  /// No description provided for @cancel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get cancel;

  /// No description provided for @cannotReportOwnComment.
  ///
  /// In en, this message translates to:
  /// **'You may not submit a report for your own comment.'**
  String get cannotReportOwnComment;

  /// No description provided for @cantBlockAdmin.
  ///
  /// In en, this message translates to:
  /// **'You may not block an instance administrator.'**
  String get cantBlockAdmin;

  /// No description provided for @cantBlockYourself.
  ///
  /// In en, this message translates to:
  /// **'You may not block yourself.'**
  String get cantBlockYourself;

  /// Label for the card view option in Setting -> Appearance -> Posts
  ///
  /// In en, this message translates to:
  /// **'Card View'**
  String get cardView;

  /// Description for the card view subcategory in Setting -> Appearance -> Posts
  ///
  /// In en, this message translates to:
  /// **'Enable card view to adjust settings'**
  String get cardViewDescription;

  /// Subcategory in Setting -> Appearance -> Posts
  ///
  /// In en, this message translates to:
  /// **'Card View Settings'**
  String get cardViewSettings;

  /// No description provided for @changeSort.
  ///
  /// In en, this message translates to:
  /// **'Change Sort'**
  String get changeSort;

  /// Label for action to clear cache in the dialog
  ///
  /// In en, this message translates to:
  /// **'Clear Cache ({cacheSize})'**
  String clearCache(Object cacheSize);

  /// Label for action to clear local database in the dialog
  ///
  /// In en, this message translates to:
  /// **'Clear Database'**
  String get clearDatabase;

  /// Label for action to clear local user preferences in the dialog
  ///
  /// In en, this message translates to:
  /// **'Clear Preferences'**
  String get clearPreferences;

  /// No description provided for @clearSearch.
  ///
  /// In en, this message translates to:
  /// **'Clear Search'**
  String get clearSearch;

  /// Message indicating that cache was cleared successfully
  ///
  /// In en, this message translates to:
  /// **'Cleared cache successfully.'**
  String get clearedCache;

  /// No description provided for @clearedDatabase.
  ///
  /// In en, this message translates to:
  /// **'Local database cleared. Restart Thunder for new changes to take effect.'**
  String get clearedDatabase;

  /// No description provided for @clearedUserPreferences.
  ///
  /// In en, this message translates to:
  /// **'Cleared all user preferences'**
  String get clearedUserPreferences;

  /// No description provided for @close.
  ///
  /// In en, this message translates to:
  /// **'Close'**
  String get close;

  /// Semantic label for the collapse button in Setting -> Appearance -> Comments
  ///
  /// In en, this message translates to:
  /// **'Collapse Comment Preview'**
  String get collapseCommentPreview;

  /// Describes the action to collapse information - used in FAB settings
  ///
  /// In en, this message translates to:
  /// **'Collapse Information'**
  String get collapseInformation;

  /// Toggle to collapse parent comment body on gesture.
  ///
  /// In en, this message translates to:
  /// **'Hide Parent Comment when Collapsed'**
  String get collapseParentCommentBodyOnGesture;

  /// No description provided for @collapsePost.
  ///
  /// In en, this message translates to:
  /// **'Collapse post'**
  String get collapsePost;

  /// Semantic label for the collapse button in Setting -> Appearance -> Posts
  ///
  /// In en, this message translates to:
  /// **'Collapse Post Preview'**
  String get collapsePostPreview;

  /// Label for collapsing spoiler
  ///
  /// In en, this message translates to:
  /// **'Collapse Spoiler'**
  String get collapseSpoiler;

  /// Toggle to combine comment scores.
  ///
  /// In en, this message translates to:
  /// **'Combine Comment Scores'**
  String get combineCommentScores;

  /// Label for setting to combine comment scores
  ///
  /// In en, this message translates to:
  /// **'Combine Comment Scores'**
  String get combineCommentScoresLabel;

  /// No description provided for @combineNavAndFab.
  ///
  /// In en, this message translates to:
  /// **'Combine FAB and Navigation Buttons'**
  String get combineNavAndFab;

  /// No description provided for @combineNavAndFabDescription.
  ///
  /// In en, this message translates to:
  /// **'Floating Action Button will be shown between navigation buttons.'**
  String get combineNavAndFabDescription;

  /// No description provided for @comment.
  ///
  /// In en, this message translates to:
  /// **'Comment'**
  String get comment;

  /// Subcategory in Setting -> General
  ///
  /// In en, this message translates to:
  /// **'Comments'**
  String get commentBehaviourSettings;

  /// Setting for comment font scale
  ///
  /// In en, this message translates to:
  /// **'Comment Content Font Scale'**
  String get commentFontScale;

  /// Description for the comment preview in Setting -> Appearance -> Comments
  ///
  /// In en, this message translates to:
  /// **'Show a preview of the comments with the given settings'**
  String get commentPreview;

  /// No description provided for @commentReported.
  ///
  /// In en, this message translates to:
  /// **'The comment has been marked for review.'**
  String get commentReported;

  /// No description provided for @commentSavedAsDraft.
  ///
  /// In en, this message translates to:
  /// **'Comment saved as draft'**
  String get commentSavedAsDraft;

  /// Settings toggle to display user instance alongside their display name in comments
  ///
  /// In en, this message translates to:
  /// **'Show User Instance'**
  String get commentShowUserInstance;

  /// No description provided for @commentSortType.
  ///
  /// In en, this message translates to:
  /// **'Comment Sort Type'**
  String get commentSortType;

  /// Setting for comment swipe actions
  ///
  /// In en, this message translates to:
  /// **'Comment Swipe Actions'**
  String get commentSwipeActions;

  /// No description provided for @commentSwipeGesturesHint.
  ///
  /// In en, this message translates to:
  /// **'Looking to use buttons instead? Enable them in the comments section in general settings.'**
  String get commentSwipeGesturesHint;

  /// No description provided for @comments.
  ///
  /// In en, this message translates to:
  /// **'Comments'**
  String get comments;

  /// No description provided for @communities.
  ///
  /// In en, this message translates to:
  /// **'Communities'**
  String get communities;

  /// No description provided for @community.
  ///
  /// In en, this message translates to:
  /// **'Community'**
  String get community;

  /// Setting for community full name format
  ///
  /// In en, this message translates to:
  /// **'Community Format'**
  String get communityFormat;

  /// Label for the compact view option in Setting -> Appearance -> Posts
  ///
  /// In en, this message translates to:
  /// **'Compact View'**
  String get compactView;

  /// Description for the compact view subcategory in Setting -> Appearance -> Posts
  ///
  /// In en, this message translates to:
  /// **'Enable compact view to adjust settings'**
  String get compactViewDescription;

  /// Subcategory in Setting -> Appearance -> Posts
  ///
  /// In en, this message translates to:
  /// **'Compact View Settings'**
  String get compactViewSettings;

  /// Condensed post body view type
  ///
  /// In en, this message translates to:
  /// **'Condensed'**
  String get condensed;

  /// Label for the confirm action in the dialog
  ///
  /// In en, this message translates to:
  /// **'Confirm'**
  String get confirm;

  /// The body of the confirm logout dialog
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to log out?'**
  String get confirmLogOutBody;

  /// The title of the confirm logout dialog
  ///
  /// In en, this message translates to:
  /// **'Log Out?'**
  String get confirmLogOutTitle;

  /// The body of the confirm mark all as read dialog
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to mark all messages as read?'**
  String get confirmMarkAllAsReadBody;

  /// The title of the confirm mark all as read dialog
  ///
  /// In en, this message translates to:
  /// **'Mark All As Read?'**
  String get confirmMarkAllAsReadTitle;

  /// Description for reset preferences dialog in Setting -> Appearance -> Comments
  ///
  /// In en, this message translates to:
  /// **'This will reset all comment preferences. Are you sure you want to proceed?'**
  String get confirmResetCommentPreferences;

  /// Description for reset preferences dialog in Setting -> Appearance -> Posts
  ///
  /// In en, this message translates to:
  /// **'This will reset all post preferences. Are you sure you want to proceed?'**
  String get confirmResetPostPreferences;

  /// No description provided for @controversial.
  ///
  /// In en, this message translates to:
  /// **'Controversial'**
  String get controversial;

  /// No description provided for @copiedToClipboard.
  ///
  /// In en, this message translates to:
  /// **'Copied to clipboard'**
  String get copiedToClipboard;

  /// No description provided for @copy.
  ///
  /// In en, this message translates to:
  /// **'Copy'**
  String get copy;

  /// No description provided for @copyText.
  ///
  /// In en, this message translates to:
  /// **'Copy Text'**
  String get copyText;

  /// No description provided for @couldNotDetermineCommentDelete.
  ///
  /// In en, this message translates to:
  /// **'Error: Could not determine post to delete the comment.'**
  String get couldNotDetermineCommentDelete;

  /// No description provided for @couldNotDeterminePostComment.
  ///
  /// In en, this message translates to:
  /// **'Error: Could not determine post to comment to.'**
  String get couldNotDeterminePostComment;

  /// No description provided for @couldntCreateReport.
  ///
  /// In en, this message translates to:
  /// **'Your comment report could not be submitted at this time. Please try again later'**
  String get couldntCreateReport;

  /// No description provided for @countSubscribers.
  ///
  /// In en, this message translates to:
  /// **'{count} subscribers'**
  String countSubscribers(Object count);

  /// Describes a certain number of users
  ///
  /// In en, this message translates to:
  /// **'{count} users'**
  String countUsers(Object count);

  /// No description provided for @createAccount.
  ///
  /// In en, this message translates to:
  /// **'Create Account'**
  String get createAccount;

  /// No description provided for @createComment.
  ///
  /// In en, this message translates to:
  /// **'Create Comment'**
  String get createComment;

  /// No description provided for @createNewCrossPost.
  ///
  /// In en, this message translates to:
  /// **'Create new cross-post'**
  String get createNewCrossPost;

  /// No description provided for @createPost.
  ///
  /// In en, this message translates to:
  /// **'Create Post'**
  String get createPost;

  /// The creator filter for searches.
  ///
  /// In en, this message translates to:
  /// **'Creator'**
  String get creator;

  /// Initial heading for text-based cross-post
  ///
  /// In en, this message translates to:
  /// **'cross-posted from:  {postUrl}'**
  String crossPostedFrom(Object postUrl);

  /// No description provided for @crossPostedTo.
  ///
  /// In en, this message translates to:
  /// **'Cross-posted to'**
  String get crossPostedTo;

  /// No description provided for @currentLongPress.
  ///
  /// In en, this message translates to:
  /// **'Currently set as long press'**
  String get currentLongPress;

  /// No description provided for @currentSinglePress.
  ///
  /// In en, this message translates to:
  /// **'Currently set as single press'**
  String get currentSinglePress;

  /// No description provided for @customizeSwipeActions.
  ///
  /// In en, this message translates to:
  /// **'Customize swipe actions (tap to change)'**
  String get customizeSwipeActions;

  /// Describes a section where the actions could be dangerous (e.g., permanently deleting account)
  ///
  /// In en, this message translates to:
  /// **'Danger Zone'**
  String get dangerZone;

  /// Describes using the dark theme
  ///
  /// In en, this message translates to:
  /// **'Dark'**
  String get dark;

  /// Debug settings category.
  ///
  /// In en, this message translates to:
  /// **'Debug'**
  String get debug;

  /// Explanation for debug settings page
  ///
  /// In en, this message translates to:
  /// **'The following debug settings should only be used for troubleshooting purposes.'**
  String get debugDescription;

  /// Setting for default comment sort type
  ///
  /// In en, this message translates to:
  /// **'Default Comment Sort Type'**
  String get defaultCommentSortType;

  /// Default sorting type for the feed.
  ///
  /// In en, this message translates to:
  /// **'Default Feed Sort Type'**
  String get defaultFeedSortType;

  /// Default listing type for the feed.
  ///
  /// In en, this message translates to:
  /// **'Default Feed Type'**
  String get defaultFeedType;

  /// No description provided for @delete.
  ///
  /// In en, this message translates to:
  /// **'Delete'**
  String get delete;

  /// Label for action to delete account
  ///
  /// In en, this message translates to:
  /// **'Delete Account'**
  String get deleteAccount;

  /// Description for confirmation action to delete account
  ///
  /// In en, this message translates to:
  /// **'To permanently delete your account, you will be redirected to your instance site. \n\nAre you sure you want to continue?'**
  String get deleteAccountDescription;

  /// Label for action to delete local database
  ///
  /// In en, this message translates to:
  /// **'Delete Local Database'**
  String get deleteLocalDatabase;

  /// Description for confirmation action to delete local database
  ///
  /// In en, this message translates to:
  /// **'This action will remove the local database and will log you out of all your accounts.\n\nAre you sure you want to continue?'**
  String get deleteLocalDatabaseDescription;

  /// Label for action to delete local preferences
  ///
  /// In en, this message translates to:
  /// **'Delete Local Preferences'**
  String get deleteLocalPreferences;

  /// Description for confirmation action to delete local preferences
  ///
  /// In en, this message translates to:
  /// **'This will clear all your user preferences and settings in Thunder.\n\nDo you want to continue?'**
  String get deleteLocalPreferencesDescription;

  /// Description of the effect on read posts.
  ///
  /// In en, this message translates to:
  /// **'Dim Read Posts'**
  String get dimReadPosts;

  /// Action for disabling something
  ///
  /// In en, this message translates to:
  /// **'Disable'**
  String get disable;

  /// No description provided for @dismissRead.
  ///
  /// In en, this message translates to:
  /// **'Dismiss Read'**
  String get dismissRead;

  /// Option for displaying user scores or karma.
  ///
  /// In en, this message translates to:
  /// **'Display User Scores (Karma).'**
  String get displayUserScore;

  /// No description provided for @downloadingMedia.
  ///
  /// In en, this message translates to:
  /// **'Downloading media to share…'**
  String get downloadingMedia;

  /// No description provided for @downvote.
  ///
  /// In en, this message translates to:
  /// **'Downvote'**
  String get downvote;

  /// No description provided for @downvotesDisabled.
  ///
  /// In en, this message translates to:
  /// **'Downvotes are turned off on this instance.'**
  String get downvotesDisabled;

  /// No description provided for @edit.
  ///
  /// In en, this message translates to:
  /// **'Edit'**
  String get edit;

  /// No description provided for @editComment.
  ///
  /// In en, this message translates to:
  /// **'Edit Comment'**
  String get editComment;

  /// Title when editing a post.
  ///
  /// In en, this message translates to:
  /// **'Edit Post'**
  String get editPost;

  /// No description provided for @empty.
  ///
  /// In en, this message translates to:
  /// **'Empty'**
  String get empty;

  /// No description provided for @emptyInbox.
  ///
  /// In en, this message translates to:
  /// **'Empty Inbox'**
  String get emptyInbox;

  /// Error message for empty link.
  ///
  /// In en, this message translates to:
  /// **'The link is empty. Please provide a valid dynamic link to proceed.'**
  String get emptyUri;

  /// Setting for enable comment navigation
  ///
  /// In en, this message translates to:
  /// **'Enable Comment Navigation'**
  String get enableCommentNavigation;

  /// Enable the Floating Action Button for the feed
  ///
  /// In en, this message translates to:
  /// **'Enable Floating Button on Feeds'**
  String get enableFeedFab;

  /// Setting for enable floating button on feeds
  ///
  /// In en, this message translates to:
  /// **'Enable Floating Button On Feeds'**
  String get enableFloatingButtonOnFeeds;

  /// Setting for enable floating button on posts
  ///
  /// In en, this message translates to:
  /// **'Enable Floating Button On Posts'**
  String get enableFloatingButtonOnPosts;

  /// Setting name for inbox notifications
  ///
  /// In en, this message translates to:
  /// **'Enable Inbox Notifications (Experimental)'**
  String get enableInboxNotifications;

  /// Enable the Floating Action Button for the post
  ///
  /// In en, this message translates to:
  /// **'Enable Floating Button on Posts'**
  String get enablePostFab;

  /// No description provided for @endSearch.
  ///
  /// In en, this message translates to:
  /// **'End Search'**
  String get endSearch;

  /// No description provided for @errorDownloadingMedia.
  ///
  /// In en, this message translates to:
  /// **'Could not download the media file to share: {errorMessage}'**
  String errorDownloadingMedia(Object errorMessage);

  /// An unspecified error during link processing.
  ///
  /// In en, this message translates to:
  /// **'An error occurred while processing the link. It may not be available on your instance.'**
  String get exceptionProcessingUri;

  /// Semantic label for the expand button in Setting -> Appearance -> Comments
  ///
  /// In en, this message translates to:
  /// **'Expand Comment Preview'**
  String get expandCommentPreview;

  /// Describes the action to expand information - used in FAB settings
  ///
  /// In en, this message translates to:
  /// **'Expand Information'**
  String get expandInformation;

  /// No description provided for @expandOptions.
  ///
  /// In en, this message translates to:
  /// **'Expand options'**
  String get expandOptions;

  /// No description provided for @expandPost.
  ///
  /// In en, this message translates to:
  /// **'Expand post'**
  String get expandPost;

  /// Semantic label for the expand button in Setting -> Appearance -> Posts
  ///
  /// In en, this message translates to:
  /// **'Expand Post Preview'**
  String get expandPostPreview;

  /// Label for expanding spoiler
  ///
  /// In en, this message translates to:
  /// **'Expand Spoiler'**
  String get expandSpoiler;

  /// Expanded post body view type
  ///
  /// In en, this message translates to:
  /// **'Expanded'**
  String get expanded;

  /// Description for extra large font scale
  ///
  /// In en, this message translates to:
  /// **'Extra Large'**
  String get extraLarge;

  /// No description provided for @failedToBlock.
  ///
  /// In en, this message translates to:
  /// **'Failed to block: {errorMessage}'**
  String failedToBlock(Object errorMessage);

  /// No description provided for @failedToLoadBlocks.
  ///
  /// In en, this message translates to:
  /// **'Could not load blocks: {errorMessage}'**
  String failedToLoadBlocks(Object errorMessage);

  /// No description provided for @failedToUnblock.
  ///
  /// In en, this message translates to:
  /// **'Could not unblock: {errorMessage}'**
  String failedToUnblock(Object errorMessage);

  /// The favorited communities on the drawer
  ///
  /// In en, this message translates to:
  /// **'Favorites'**
  String get favorites;

  /// No description provided for @feed.
  ///
  /// In en, this message translates to:
  /// **'Feed'**
  String get feed;

  /// Subcategory in Setting -> General
  ///
  /// In en, this message translates to:
  /// **'Feed'**
  String get feedBehaviourSettings;

  /// Subcategory in Setting -> General
  ///
  /// In en, this message translates to:
  /// **'Default Feed Type and Sorting'**
  String get feedTypeAndSorts;

  /// No description provided for @fetchAccountError.
  ///
  /// In en, this message translates to:
  /// **'Could not determine account'**
  String get fetchAccountError;

  /// Filtering by a community or creator in search.
  ///
  /// In en, this message translates to:
  /// **'Filtering by {entity}'**
  String filteringBy(Object entity);

  /// Category to describe various filters (user, community, instance blocking)
  ///
  /// In en, this message translates to:
  /// **'Filters'**
  String get filters;

  /// Floating Action Button settings category.
  ///
  /// In en, this message translates to:
  /// **'Floating Action Button'**
  String get floatingActionButton;

  /// Description of the FAB in the settings page
  ///
  /// In en, this message translates to:
  /// **'Thunder has a fully customizable FAB experience that supports a few gestures.\n- Swipe up to reveal additional FAB actions\n- Swipe down/up to hide or reveal the FAB\n\nTo customize the main and secondary actions for the FAB, long press on one of the actions below.'**
  String get floatingActionButtonInformation;

  /// Description of the FAB's long-press action
  ///
  /// In en, this message translates to:
  /// **'denotes the FAB\'s long-press action.'**
  String get floatingActionButtonLongPressDescription;

  /// Description of the FAB's single-press action
  ///
  /// In en, this message translates to:
  /// **'denotes the FAB\'s single-press action.'**
  String get floatingActionButtonSinglePressDescription;

  /// Settings category for fonts
  ///
  /// In en, this message translates to:
  /// **'Fonts'**
  String get fonts;

  /// No description provided for @fullScreenNavigationSwipeDescription.
  ///
  /// In en, this message translates to:
  /// **'Swipe anywhere to go back when left-to-right gestures are disabled'**
  String get fullScreenNavigationSwipeDescription;

  /// Setting for fullscreen swipe gestures
  ///
  /// In en, this message translates to:
  /// **'Fullscreen Swipe Gestures'**
  String get fullscreenSwipeGestures;

  /// General settings category.
  ///
  /// In en, this message translates to:
  /// **'General'**
  String get general;

  /// Subcategory in Settings
  ///
  /// In en, this message translates to:
  /// **'General Settings'**
  String get generalSettings;

  /// No description provided for @gestures.
  ///
  /// In en, this message translates to:
  /// **'Gestures'**
  String get gestures;

  /// No description provided for @gettingStarted.
  ///
  /// In en, this message translates to:
  /// **'Getting Started'**
  String get gettingStarted;

  /// Toggle to hide NSFW posts from the feed.
  ///
  /// In en, this message translates to:
  /// **'Hide NSFW Posts from Feed'**
  String get hideNsfwPostsFromFeed;

  /// Toggle to hide NSFW previews.
  ///
  /// In en, this message translates to:
  /// **'Hide NSFW Previews'**
  String get hideNsfwPreviews;

  /// No description provided for @hidePassword.
  ///
  /// In en, this message translates to:
  /// **'Hide Password'**
  String get hidePassword;

  /// Settings toggle to hide the top bar on scroll
  ///
  /// In en, this message translates to:
  /// **'Hide Top Bar on Scroll'**
  String get hideTopBarOnScroll;

  /// No description provided for @hot.
  ///
  /// In en, this message translates to:
  /// **'Hot'**
  String get hot;

  /// No description provided for @image.
  ///
  /// In en, this message translates to:
  /// **'Image'**
  String get image;

  /// Category for settings related to import and export.
  ///
  /// In en, this message translates to:
  /// **'Import/Export Settings'**
  String get importExportSettings;

  /// Action to import application settings.
  ///
  /// In en, this message translates to:
  /// **'Import Settings'**
  String get importSettings;

  /// No description provided for @inReplyTo.
  ///
  /// In en, this message translates to:
  /// **'In reply to {post} in {community}'**
  String inReplyTo(Object community, Object post);

  /// No description provided for @inbox.
  ///
  /// In en, this message translates to:
  /// **'Inbox'**
  String get inbox;

  /// No description provided for @includeCommunity.
  ///
  /// In en, this message translates to:
  /// **'Include Community'**
  String get includeCommunity;

  /// No description provided for @includeExternalLink.
  ///
  /// In en, this message translates to:
  /// **'Include External Link'**
  String get includeExternalLink;

  /// No description provided for @includeImage.
  ///
  /// In en, this message translates to:
  /// **'Include Image'**
  String get includeImage;

  /// No description provided for @includePostLink.
  ///
  /// In en, this message translates to:
  /// **'Include Post Link'**
  String get includePostLink;

  /// No description provided for @includeText.
  ///
  /// In en, this message translates to:
  /// **'Include Text'**
  String get includeText;

  /// No description provided for @includeTitle.
  ///
  /// In en, this message translates to:
  /// **'Include Title'**
  String get includeTitle;

  /// Information heading - used in the FAB settings page
  ///
  /// In en, this message translates to:
  /// **'Information'**
  String get information;

  /// No description provided for @instance.
  ///
  /// In en, this message translates to:
  /// **'Instance'**
  String get instance;

  /// No description provided for @instanceHasAlreadyBenAdded.
  ///
  /// In en, this message translates to:
  /// **'{instance} has already been added.'**
  String instanceHasAlreadyBenAdded(Object instance);

  /// No description provided for @internetOrInstanceIssues.
  ///
  /// In en, this message translates to:
  /// **'You may not be connected to the Internet, or your instance may be currently unavailable.'**
  String get internetOrInstanceIssues;

  /// Description of keyword filter settings
  ///
  /// In en, this message translates to:
  /// **'Filters posts containing any keywords in the title or body'**
  String get keywordFilterDescription;

  /// Subcategory in Setting -> General
  ///
  /// In en, this message translates to:
  /// **'Keyword Filters'**
  String get keywordFilters;

  /// Label when creating or editing a post.
  ///
  /// In en, this message translates to:
  /// **'Language'**
  String get language;

  /// The error message for the language_not_allowed Lemmy exception
  ///
  /// In en, this message translates to:
  /// **'The community you are posting to does not allow posts in the language that you have selected. Try another language.'**
  String get languageNotAllowed;

  /// Description for large font scale
  ///
  /// In en, this message translates to:
  /// **'Large'**
  String get large;

  /// Setting for left long swipe
  ///
  /// In en, this message translates to:
  /// **'Left Long Swipe'**
  String get leftLongSwipe;

  /// Setting for left short swipe
  ///
  /// In en, this message translates to:
  /// **'Left Short Swipe'**
  String get leftShortSwipe;

  /// Describes using the light theme
  ///
  /// In en, this message translates to:
  /// **'Light'**
  String get light;

  /// No description provided for @link.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, zero {Link} one {Link} other {Links} } '**
  String link(num count);

  /// No description provided for @linkActions.
  ///
  /// In en, this message translates to:
  /// **'Link Actions'**
  String get linkActions;

  /// Subcategory in Setting -> General
  ///
  /// In en, this message translates to:
  /// **'Links'**
  String get linksBehaviourSettings;

  /// No description provided for @loadMorePlural.
  ///
  /// In en, this message translates to:
  /// **'Load {count} more replies…'**
  String loadMorePlural(Object count);

  /// No description provided for @loadMoreSingular.
  ///
  /// In en, this message translates to:
  /// **'Load {count} more reply…'**
  String loadMoreSingular(Object count);

  /// No description provided for @local.
  ///
  /// In en, this message translates to:
  /// **'Local'**
  String get local;

  /// No description provided for @localPosts.
  ///
  /// In en, this message translates to:
  /// **'Local Posts'**
  String get localPosts;

  /// No description provided for @logOut.
  ///
  /// In en, this message translates to:
  /// **'Log out'**
  String get logOut;

  /// No description provided for @login.
  ///
  /// In en, this message translates to:
  /// **'Log in'**
  String get login;

  /// No description provided for @loginFailed.
  ///
  /// In en, this message translates to:
  /// **'Could not log in. Please try again:({errorMessage})'**
  String loginFailed(Object errorMessage);

  /// No description provided for @loginSucceeded.
  ///
  /// In en, this message translates to:
  /// **'Logged in.'**
  String get loginSucceeded;

  /// No description provided for @loginToPerformAction.
  ///
  /// In en, this message translates to:
  /// **'You need to be logged in to carry out this task.'**
  String get loginToPerformAction;

  /// No description provided for @loginToSeeInbox.
  ///
  /// In en, this message translates to:
  /// **'Log in to see your inbox'**
  String get loginToSeeInbox;

  /// Error related to unsupported link format.
  ///
  /// In en, this message translates to:
  /// **'The link you provided is in an unsupported format. Please make sure it\'s a valid link.'**
  String get malformedUri;

  /// No description provided for @manageAccounts.
  ///
  /// In en, this message translates to:
  /// **'Manage Accounts'**
  String get manageAccounts;

  /// The mark all as read action
  ///
  /// In en, this message translates to:
  /// **'Mark All As Read'**
  String get markAllAsRead;

  /// Toggle to mark posts as read after viewing media.
  ///
  /// In en, this message translates to:
  /// **'Mark Read After Viewing Media'**
  String get markPostAsReadOnMediaView;

  /// Description for medium font scale
  ///
  /// In en, this message translates to:
  /// **'Medium'**
  String get medium;

  /// No description provided for @mention.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, zero {Mention} one {Mention} other {Mentions} }'**
  String mention(num count);

  /// No description provided for @message.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, zero {Message} one {Message} other {Messages} }'**
  String message(num count);

  /// Setting for metadata font scale
  ///
  /// In en, this message translates to:
  /// **'Metadata Font Scale'**
  String get metadataFontScale;

  /// No description provided for @missingErrorMessage.
  ///
  /// In en, this message translates to:
  /// **'No error message available'**
  String get missingErrorMessage;

  /// Describes a list of communities that are moderated by the current user.
  ///
  /// In en, this message translates to:
  /// **'Moderated Communities'**
  String get moderatedCommunities;

  /// No description provided for @mostComments.
  ///
  /// In en, this message translates to:
  /// **'Most Comments'**
  String get mostComments;

  /// No description provided for @mustBeLoggedInComment.
  ///
  /// In en, this message translates to:
  /// **'You need to be logged in to comment'**
  String get mustBeLoggedInComment;

  /// No description provided for @mustBeLoggedInPost.
  ///
  /// In en, this message translates to:
  /// **'You need to be logged in to create a post'**
  String get mustBeLoggedInPost;

  /// Setting for navbar double tap gestures
  ///
  /// In en, this message translates to:
  /// **'Navbar Double Tap Gestures'**
  String get navbarDoubleTapGestures;

  /// Setting for navbar swipe gestures
  ///
  /// In en, this message translates to:
  /// **'Navbar Swipe Gestures'**
  String get navbarSwipeGestures;

  /// No description provided for @navigateDown.
  ///
  /// In en, this message translates to:
  /// **'Next comment'**
  String get navigateDown;

  /// No description provided for @navigateUp.
  ///
  /// In en, this message translates to:
  /// **'Previous comment'**
  String get navigateUp;

  /// No description provided for @navigation.
  ///
  /// In en, this message translates to:
  /// **'Navigation'**
  String get navigation;

  /// Setting for nested comment indicator color
  ///
  /// In en, this message translates to:
  /// **'Nested Comment Indicator Color'**
  String get nestedCommentIndicatorColor;

  /// Setting for nested comment indicator style
  ///
  /// In en, this message translates to:
  /// **'Nested Comment Indicator Style'**
  String get nestedCommentIndicatorStyle;

  /// No description provided for @newComments.
  ///
  /// In en, this message translates to:
  /// **'New Comments'**
  String get newComments;

  /// Setting for new post
  ///
  /// In en, this message translates to:
  /// **'New Post'**
  String get newPost;

  /// No description provided for @new_.
  ///
  /// In en, this message translates to:
  /// **'New'**
  String get new_;

  /// No description provided for @noComments.
  ///
  /// In en, this message translates to:
  /// **'Oh. There are no comments.'**
  String get noComments;

  /// No description provided for @noCommentsFound.
  ///
  /// In en, this message translates to:
  /// **'No comments found.'**
  String get noCommentsFound;

  /// No description provided for @noCommunitiesFound.
  ///
  /// In en, this message translates to:
  /// **'No communities found.'**
  String get noCommunitiesFound;

  /// No description provided for @noCommunityBlocks.
  ///
  /// In en, this message translates to:
  /// **'No blocked communities.'**
  String get noCommunityBlocks;

  /// Message for no favorited communities on the drawer
  ///
  /// In en, this message translates to:
  /// **'No favorited communities'**
  String get noFavoritedCommunities;

  /// No description provided for @noInstanceBlocks.
  ///
  /// In en, this message translates to:
  /// **'No blocked instances.'**
  String get noInstanceBlocks;

  /// Message for no keywords added
  ///
  /// In en, this message translates to:
  /// **'No keyword filters added'**
  String get noKeywordFilters;

  /// The entry for no language when selecting a post language
  ///
  /// In en, this message translates to:
  /// **'No language'**
  String get noLanguage;

  /// No description provided for @noPosts.
  ///
  /// In en, this message translates to:
  /// **'No posts found.'**
  String get noPosts;

  /// No description provided for @noPostsFound.
  ///
  /// In en, this message translates to:
  /// **'No posts found'**
  String get noPostsFound;

  /// No description provided for @noResultsFound.
  ///
  /// In en, this message translates to:
  /// **'No results found.'**
  String get noResultsFound;

  /// Message for no subscriptions on the drawer
  ///
  /// In en, this message translates to:
  /// **'No Subscriptions'**
  String get noSubscriptions;

  /// No description provided for @noUserBlocks.
  ///
  /// In en, this message translates to:
  /// **'No blocked users.'**
  String get noUserBlocks;

  /// No description provided for @noUsersFound.
  ///
  /// In en, this message translates to:
  /// **'No users found.'**
  String get noUsersFound;

  /// No description provided for @notValidLemmyInstance.
  ///
  /// In en, this message translates to:
  /// **'{instance} does not appear to be a valid Lemmy instance'**
  String notValidLemmyInstance(Object instance);

  /// No description provided for @notValidUrl.
  ///
  /// In en, this message translates to:
  /// **'Not a valid URL'**
  String get notValidUrl;

  /// No description provided for @nothingToShare.
  ///
  /// In en, this message translates to:
  /// **'Nothing to share'**
  String get nothingToShare;

  /// Message formatting for notifications count.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, zero {Notification} one {Notifications} other {Notifications}}'**
  String notifications(num count);

  /// Subcategory in Setting -> General
  ///
  /// In en, this message translates to:
  /// **'Notifications'**
  String get notificationsBehaviourSettings;

  /// Description for when notifications are now allowed for app
  ///
  /// In en, this message translates to:
  /// **'Notifications are not allowed for Thunder in system settings'**
  String get notificationsNotAllowed;

  /// The content of the warning dialog for the notifications feature
  ///
  /// In en, this message translates to:
  /// **'Notifications are an experimental feature which may not function correctly on all devices.\n\n· Checks will occur every ~15 minutes and will consume additional battery.\n\n· Disable battery optimizations for a higher likelihood of successful notifications.\n\nSee the following page for more information.'**
  String get notificationsWarningDialog;

  /// No description provided for @off.
  ///
  /// In en, this message translates to:
  /// **'off'**
  String get off;

  /// No description provided for @ok.
  ///
  /// In en, this message translates to:
  /// **'OK'**
  String get ok;

  /// No description provided for @old.
  ///
  /// In en, this message translates to:
  /// **'Old'**
  String get old;

  /// No description provided for @on.
  ///
  /// In en, this message translates to:
  /// **'on'**
  String get on;

  /// No description provided for @onlyModsCanPostInCommunity.
  ///
  /// In en, this message translates to:
  /// **'Only moderators may post in this community'**
  String get onlyModsCanPostInCommunity;

  /// No description provided for @open.
  ///
  /// In en, this message translates to:
  /// **'Open'**
  String get open;

  /// No description provided for @openAccountSwitcher.
  ///
  /// In en, this message translates to:
  /// **'Open account switcher'**
  String get openAccountSwitcher;

  /// Indicating the default behavior of opening links.
  ///
  /// In en, this message translates to:
  /// **'Open by default'**
  String get openByDefault;

  /// No description provided for @openInBrowser.
  ///
  /// In en, this message translates to:
  /// **'Open in Browser'**
  String get openInBrowser;

  /// No description provided for @openInstance.
  ///
  /// In en, this message translates to:
  /// **'Open Instance'**
  String get openInstance;

  /// Toggle to open links in an external browser.
  ///
  /// In en, this message translates to:
  /// **'Open Links in External Browser'**
  String get openLinksInExternalBrowser;

  /// Toggle to open links in reader mode when available.
  ///
  /// In en, this message translates to:
  /// **'Open Links in Reader Mode'**
  String get openLinksInReaderMode;

  /// Prompt for the user to open system settings
  ///
  /// In en, this message translates to:
  /// **'Open Settings'**
  String get openSettings;

  /// No description provided for @overview.
  ///
  /// In en, this message translates to:
  /// **'Overview'**
  String get overview;

  /// No description provided for @password.
  ///
  /// In en, this message translates to:
  /// **'Password'**
  String get password;

  /// Describes the subscription status for 'Pending'
  ///
  /// In en, this message translates to:
  /// **'Pending'**
  String get pending;

  /// Title for error when user denies OS permissions
  ///
  /// In en, this message translates to:
  /// **'Permission Denied'**
  String get permissionDenied;

  /// Explanation for error when user denies OS permissions
  ///
  /// In en, this message translates to:
  /// **'Thunder requires some permissions in order to save this image which have been denied.'**
  String get permissionDeniedMessage;

  /// Subcategory in Setting -> General
  ///
  /// In en, this message translates to:
  /// **'Posts'**
  String get postBehaviourSettings;

  /// No description provided for @postBody.
  ///
  /// In en, this message translates to:
  /// **'Post Body'**
  String get postBody;

  /// Settings heading for post body settings
  ///
  /// In en, this message translates to:
  /// **'Post Body Settings'**
  String get postBodySettings;

  /// Description of post body settings
  ///
  /// In en, this message translates to:
  /// **'These settings affect the display of the post body'**
  String get postBodySettingsDescription;

  /// Setting name for the post body view type setting
  ///
  /// In en, this message translates to:
  /// **'Post Body View Type'**
  String get postBodyViewType;

  /// Setting for post content font scale
  ///
  /// In en, this message translates to:
  /// **'Post Content Font Scale'**
  String get postContentFontScale;

  /// Notifying the user that their post was created successfully
  ///
  /// In en, this message translates to:
  /// **'Post created successfully!'**
  String get postCreatedSuccessfully;

  /// No description provided for @postLocked.
  ///
  /// In en, this message translates to:
  /// **'Post locked. No replies allowed.'**
  String get postLocked;

  /// No description provided for @postNSFW.
  ///
  /// In en, this message translates to:
  /// **'Mark as NSFW'**
  String get postNSFW;

  /// Description for the post preview in Setting -> Appearance -> Posts
  ///
  /// In en, this message translates to:
  /// **'Show a preview of the post with the given settings'**
  String get postPreview;

  /// No description provided for @postSavedAsDraft.
  ///
  /// In en, this message translates to:
  /// **'Post saved as draft'**
  String get postSavedAsDraft;

  /// Setting for post swipe actions
  ///
  /// In en, this message translates to:
  /// **'Post Swipe Actions'**
  String get postSwipeActions;

  /// No description provided for @postSwipeGesturesHint.
  ///
  /// In en, this message translates to:
  /// **'Looking to use buttons instead? Change what buttons appear on post cards in general settings.'**
  String get postSwipeGesturesHint;

  /// No description provided for @postTitle.
  ///
  /// In en, this message translates to:
  /// **'Title'**
  String get postTitle;

  /// Setting for post title font scale
  ///
  /// In en, this message translates to:
  /// **'Post Title Font Scale'**
  String get postTitleFontScale;

  /// No description provided for @postTogglePreview.
  ///
  /// In en, this message translates to:
  /// **'Toggle Preview'**
  String get postTogglePreview;

  /// No description provided for @postURL.
  ///
  /// In en, this message translates to:
  /// **'URL'**
  String get postURL;

  /// No description provided for @postUploadImageError.
  ///
  /// In en, this message translates to:
  /// **'Could not upload image'**
  String get postUploadImageError;

  /// Label for the post view type (compact/card) in Setting -> Appearance -> Posts
  ///
  /// In en, this message translates to:
  /// **'Post View Type'**
  String get postViewType;

  /// No description provided for @posts.
  ///
  /// In en, this message translates to:
  /// **'Posts'**
  String get posts;

  /// No description provided for @preview.
  ///
  /// In en, this message translates to:
  /// **'Preview'**
  String get preview;

  /// No description provided for @profileAppliedSuccessfully.
  ///
  /// In en, this message translates to:
  /// **'{profile} applied successfully!'**
  String profileAppliedSuccessfully(Object profile);

  /// No description provided for @profiles.
  ///
  /// In en, this message translates to:
  /// **'Profiles'**
  String get profiles;

  /// Describes using the pure black theme
  ///
  /// In en, this message translates to:
  /// **'Pure Black'**
  String get pureBlack;

  /// No description provided for @reachedTheBottom.
  ///
  /// In en, this message translates to:
  /// **'Hmmm. It seems like you\'ve reached the bottom.'**
  String get reachedTheBottom;

  /// No description provided for @readAll.
  ///
  /// In en, this message translates to:
  /// **'Read All'**
  String get readAll;

  /// Toggle to reduce animations.
  ///
  /// In en, this message translates to:
  /// **'Reduce Animations'**
  String get reduceAnimations;

  /// No description provided for @reducesAnimations.
  ///
  /// In en, this message translates to:
  /// **'Reduces the animations used within Thunder'**
  String get reducesAnimations;

  /// No description provided for @refresh.
  ///
  /// In en, this message translates to:
  /// **'Refresh'**
  String get refresh;

  /// No description provided for @refreshContent.
  ///
  /// In en, this message translates to:
  /// **'Refresh Content'**
  String get refreshContent;

  /// No description provided for @remove.
  ///
  /// In en, this message translates to:
  /// **'Remove'**
  String get remove;

  /// No description provided for @removeAccount.
  ///
  /// In en, this message translates to:
  /// **'Remove Account'**
  String get removeAccount;

  /// Action to remove a community in drawer from favorites
  ///
  /// In en, this message translates to:
  /// **'Remove from favorites'**
  String get removeFromFavorites;

  /// No description provided for @removeInstance.
  ///
  /// In en, this message translates to:
  /// **'Remove instance'**
  String get removeInstance;

  /// Description of removing a keyword
  ///
  /// In en, this message translates to:
  /// **'Remove \"{keyword}\"?'**
  String removeKeyword(Object keyword);

  /// Title for dialig to remove keyword
  ///
  /// In en, this message translates to:
  /// **'Remove Keyword'**
  String get removeKeywordFilter;

  /// No description provided for @removedCommunityFromSubscriptions.
  ///
  /// In en, this message translates to:
  /// **'Unsubscribed from community'**
  String get removedCommunityFromSubscriptions;

  /// No description provided for @reply.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, zero {Reply} one {Reply} other {Replies} }'**
  String reply(num count);

  /// No description provided for @replyNotSupported.
  ///
  /// In en, this message translates to:
  /// **'Replying from this view is currently not supported yet'**
  String get replyNotSupported;

  /// No description provided for @replyToPost.
  ///
  /// In en, this message translates to:
  /// **'Reply to Post'**
  String get replyToPost;

  /// No description provided for @replyingTo.
  ///
  /// In en, this message translates to:
  /// **'Replying to {author}'**
  String replyingTo(Object author);

  /// No description provided for @report.
  ///
  /// In en, this message translates to:
  /// **'Report'**
  String get report;

  /// No description provided for @reportComment.
  ///
  /// In en, this message translates to:
  /// **'Report Comment'**
  String get reportComment;

  /// Label for the reset button in Setting -> Appearance -> Posts/Comments
  ///
  /// In en, this message translates to:
  /// **'Reset'**
  String get reset;

  /// Semantic label for button in comment appearance settings.
  ///
  /// In en, this message translates to:
  /// **'Reset comment preferences'**
  String get resetCommentPreferences;

  /// Semantic label for button in post appearance settings.
  ///
  /// In en, this message translates to:
  /// **'Reset post preferences'**
  String get resetPostPreferences;

  /// No description provided for @resetPreferences.
  ///
  /// In en, this message translates to:
  /// **'Reset Preferences'**
  String get resetPreferences;

  /// Debug setting header for resetting all user preferences and data.
  ///
  /// In en, this message translates to:
  /// **'Reset Preferences and Data'**
  String get resetPreferencesAndData;

  /// No description provided for @restore.
  ///
  /// In en, this message translates to:
  /// **'Restore'**
  String get restore;

  /// No description provided for @restoredCommentFromDraft.
  ///
  /// In en, this message translates to:
  /// **'Restored comment from draft'**
  String get restoredCommentFromDraft;

  /// No description provided for @restoredPostFromDraft.
  ///
  /// In en, this message translates to:
  /// **'Restored post from draft'**
  String get restoredPostFromDraft;

  /// No description provided for @retry.
  ///
  /// In en, this message translates to:
  /// **'Retry'**
  String get retry;

  /// Setting for right long swipe
  ///
  /// In en, this message translates to:
  /// **'Right Long Swipe'**
  String get rightLongSwipe;

  /// Setting for right short swipe
  ///
  /// In en, this message translates to:
  /// **'Right Short Swipe'**
  String get rightShortSwipe;

  /// No description provided for @save.
  ///
  /// In en, this message translates to:
  /// **'Save'**
  String get save;

  /// Action to save the application settings.
  ///
  /// In en, this message translates to:
  /// **'Save Settings'**
  String get saveSettings;

  /// No description provided for @saved.
  ///
  /// In en, this message translates to:
  /// **'Saved'**
  String get saved;

  /// No description provided for @scaled.
  ///
  /// In en, this message translates to:
  /// **'Scaled'**
  String get scaled;

  /// Toggle to scrape missing external link previews.
  ///
  /// In en, this message translates to:
  /// **'Scrape Missing Link Previews'**
  String get scrapeMissingLinkPreviews;

  /// Notice regarding potential performance impact when enabling link scrapping.
  ///
  /// In en, this message translates to:
  /// **'Enabling will have a performance hit.'**
  String get scrapeMissingPreviews;

  /// No description provided for @screenReaderProfile.
  ///
  /// In en, this message translates to:
  /// **'Screen Reader Profile'**
  String get screenReaderProfile;

  /// No description provided for @screenReaderProfileDescription.
  ///
  /// In en, this message translates to:
  /// **'Optimizes Thunder for screen readers by reducing overall elements and removing potentially conflicting gestures.'**
  String get screenReaderProfileDescription;

  /// No description provided for @search.
  ///
  /// In en, this message translates to:
  /// **'Search'**
  String get search;

  /// No description provided for @searchByText.
  ///
  /// In en, this message translates to:
  /// **'Search by text'**
  String get searchByText;

  /// No description provided for @searchByUrl.
  ///
  /// In en, this message translates to:
  /// **'Search by URL'**
  String get searchByUrl;

  /// No description provided for @searchComments.
  ///
  /// In en, this message translates to:
  /// **'Search Comments'**
  String get searchComments;

  /// No description provided for @searchCommentsFederatedWith.
  ///
  /// In en, this message translates to:
  /// **'Search for comments federated with {instance}'**
  String searchCommentsFederatedWith(Object instance);

  /// No description provided for @searchCommunitiesFederatedWith.
  ///
  /// In en, this message translates to:
  /// **'Search for communities federated with {instance}'**
  String searchCommunitiesFederatedWith(Object instance);

  /// No description provided for @searchInstance.
  ///
  /// In en, this message translates to:
  /// **'Search {instance}'**
  String searchInstance(Object instance);

  /// No description provided for @searchPostSearchType.
  ///
  /// In en, this message translates to:
  /// **'Select Post Search Type'**
  String get searchPostSearchType;

  /// No description provided for @searchPostsFederatedWith.
  ///
  /// In en, this message translates to:
  /// **'Search for posts federated with {instance}'**
  String searchPostsFederatedWith(Object instance);

  /// No description provided for @searchTerm.
  ///
  /// In en, this message translates to:
  /// **'Search term'**
  String get searchTerm;

  /// No description provided for @searchUsersFederatedWith.
  ///
  /// In en, this message translates to:
  /// **'Search for users federated with {instance}'**
  String searchUsersFederatedWith(Object instance);

  /// No description provided for @selectCommunity.
  ///
  /// In en, this message translates to:
  /// **'Select a community'**
  String get selectCommunity;

  /// No description provided for @selectFeedType.
  ///
  /// In en, this message translates to:
  /// **'Select Feed Type'**
  String get selectFeedType;

  /// The prompt to select a language in the post creation page
  ///
  /// In en, this message translates to:
  /// **'Select language'**
  String get selectLanguage;

  /// No description provided for @selectSearchType.
  ///
  /// In en, this message translates to:
  /// **'Select Search Type'**
  String get selectSearchType;

  /// No description provided for @serverErrorComments.
  ///
  /// In en, this message translates to:
  /// **'A server error was encountered when fetching more comments: {message}'**
  String serverErrorComments(Object message);

  /// Label for the action to set (short-press, long-press)
  ///
  /// In en, this message translates to:
  /// **'Set Action'**
  String get setAction;

  /// No description provided for @setLongPress.
  ///
  /// In en, this message translates to:
  /// **'Set as long-press action'**
  String get setLongPress;

  /// No description provided for @setShortPress.
  ///
  /// In en, this message translates to:
  /// **'Set as short-press action'**
  String get setShortPress;

  /// No description provided for @settingTypeNotSupported.
  ///
  /// In en, this message translates to:
  /// **'Settings of type {settingType} are not yet supported.'**
  String settingTypeNotSupported(Object settingType);

  /// No description provided for @settings.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get settings;

  /// Settings for controlling the display of cards in the main feed.
  ///
  /// In en, this message translates to:
  /// **'These settings apply to the cards in the main feed, actions are always available when actually opening posts.'**
  String get settingsFeedCards;

  /// No description provided for @share.
  ///
  /// In en, this message translates to:
  /// **'Share'**
  String get share;

  /// No description provided for @shareLink.
  ///
  /// In en, this message translates to:
  /// **'Share Link'**
  String get shareLink;

  /// No description provided for @shareMedia.
  ///
  /// In en, this message translates to:
  /// **'Share Media'**
  String get shareMedia;

  /// No description provided for @sharePost.
  ///
  /// In en, this message translates to:
  /// **'Share Post'**
  String get sharePost;

  /// No description provided for @showAll.
  ///
  /// In en, this message translates to:
  /// **'Show All'**
  String get showAll;

  /// Option to show bot accounts.
  ///
  /// In en, this message translates to:
  /// **'Show Bot Accounts'**
  String get showBotAccounts;

  /// Toggle to show comment action buttons.
  ///
  /// In en, this message translates to:
  /// **'Show Comment Action Buttons'**
  String get showCommentActionButtons;

  /// Toggle to show cross posts.
  ///
  /// In en, this message translates to:
  /// **'Show Cross Posts'**
  String get showCrossPosts;

  /// Toggle to view edge to edge images.
  ///
  /// In en, this message translates to:
  /// **'Show Edge to Edge Images'**
  String get showEdgeToEdgeImages;

  /// Toggle to view full height images.
  ///
  /// In en, this message translates to:
  /// **'Show Full Height Images'**
  String get showFullHeightImages;

  /// Toggle to get notified of new GitHub releases.
  ///
  /// In en, this message translates to:
  /// **'Get Notified of new GitHub Releases'**
  String get showInAppUpdateNotifications;

  /// No description provided for @showLess.
  ///
  /// In en, this message translates to:
  /// **'Show fewer'**
  String get showLess;

  /// No description provided for @showMore.
  ///
  /// In en, this message translates to:
  /// **'Show more'**
  String get showMore;

  /// No description provided for @showPassword.
  ///
  /// In en, this message translates to:
  /// **'Show Password'**
  String get showPassword;

  /// Toggle to show post author.
  ///
  /// In en, this message translates to:
  /// **'Show Post Author'**
  String get showPostAuthor;

  /// Toggle to show community icons.
  ///
  /// In en, this message translates to:
  /// **'Show Community Icons'**
  String get showPostCommunityIcons;

  /// Toggle to show save button.
  ///
  /// In en, this message translates to:
  /// **'Show Save Button'**
  String get showPostSaveAction;

  /// Toggle to show text previews.
  ///
  /// In en, this message translates to:
  /// **'Show Text Preview'**
  String get showPostTextContentPreview;

  /// Toggle to show post title first.
  ///
  /// In en, this message translates to:
  /// **'Show Title First'**
  String get showPostTitleFirst;

  /// Toggle to show vote buttons.
  ///
  /// In en, this message translates to:
  /// **'Show Vote Buttons'**
  String get showPostVoteActions;

  /// Setting to show read posts in feed.
  ///
  /// In en, this message translates to:
  /// **'Show Read Posts'**
  String get showReadPosts;

  /// Toggle to display user scores.
  ///
  /// In en, this message translates to:
  /// **'Display User Scores'**
  String get showScoreCounters;

  /// Option to show scores on posts and comments.
  ///
  /// In en, this message translates to:
  /// **'Show Post/Comment Scores'**
  String get showScores;

  /// Toggle to show text post indicator.
  ///
  /// In en, this message translates to:
  /// **'Show Text Post Indicator'**
  String get showTextPostIndicator;

  /// Toggle to show thumbnails on the right side.
  ///
  /// In en, this message translates to:
  /// **'Show Thumbnails on the Right'**
  String get showThumbnailPreviewOnRight;

  /// Toggle to show user display names.
  ///
  /// In en, this message translates to:
  /// **'Show User Display Names'**
  String get showUserDisplayNames;

  /// Toggle to show user instance.
  ///
  /// In en, this message translates to:
  /// **'Show User Instance'**
  String get showUserInstance;

  /// No description provided for @sidebar.
  ///
  /// In en, this message translates to:
  /// **'Sidebar'**
  String get sidebar;

  /// No description provided for @sidebarBottomNavDoubleTapDescription.
  ///
  /// In en, this message translates to:
  /// **'Double-tap bottom nav to open sidebar'**
  String get sidebarBottomNavDoubleTapDescription;

  /// No description provided for @sidebarBottomNavSwipeDescription.
  ///
  /// In en, this message translates to:
  /// **'Swipe bottom nav to open sidebar'**
  String get sidebarBottomNavSwipeDescription;

  /// Description for small font scale
  ///
  /// In en, this message translates to:
  /// **'Small'**
  String get small;

  /// No description provided for @somethingWentWrong.
  ///
  /// In en, this message translates to:
  /// **'Oops, something went wrong!'**
  String get somethingWentWrong;

  /// No description provided for @sortBy.
  ///
  /// In en, this message translates to:
  /// **'Sort By'**
  String get sortBy;

  /// No description provided for @sortByTop.
  ///
  /// In en, this message translates to:
  /// **'Sort by Top'**
  String get sortByTop;

  /// No description provided for @sortOptions.
  ///
  /// In en, this message translates to:
  /// **'Sort Options'**
  String get sortOptions;

  /// Placeholder label for spoiler
  ///
  /// In en, this message translates to:
  /// **'Spoiler'**
  String get spoiler;

  /// No description provided for @submit.
  ///
  /// In en, this message translates to:
  /// **'Submit'**
  String get submit;

  /// No description provided for @subscribe.
  ///
  /// In en, this message translates to:
  /// **'Subscribe'**
  String get subscribe;

  /// Action for subscribing to a community
  ///
  /// In en, this message translates to:
  /// **'Subscribe to Community'**
  String get subscribeToCommunity;

  /// No description provided for @subscribed.
  ///
  /// In en, this message translates to:
  /// **'Subscribed'**
  String get subscribed;

  /// No description provided for @subscriptions.
  ///
  /// In en, this message translates to:
  /// **'Subscriptions'**
  String get subscriptions;

  /// No description provided for @successfullyBlocked.
  ///
  /// In en, this message translates to:
  /// **'Blocked.'**
  String get successfullyBlocked;

  /// No description provided for @successfullyBlockedCommunity.
  ///
  /// In en, this message translates to:
  /// **'Blocked {communityName}'**
  String successfullyBlockedCommunity(Object communityName);

  /// No description provided for @successfullyUnblocked.
  ///
  /// In en, this message translates to:
  /// **'Unblocked.'**
  String get successfullyUnblocked;

  /// No description provided for @successfullyUnblockedCommunity.
  ///
  /// In en, this message translates to:
  /// **'Unblocked {communityName}'**
  String successfullyUnblockedCommunity(Object communityName);

  /// Suggested title for the post.
  ///
  /// In en, this message translates to:
  /// **'Suggested title'**
  String get suggestedTitle;

  /// Describes using the system settings for theme
  ///
  /// In en, this message translates to:
  /// **'System'**
  String get system;

  /// Toggle to enable 2-column tablet mode.
  ///
  /// In en, this message translates to:
  /// **'Tablet Mode (2-column view)'**
  String get tabletMode;

  /// No description provided for @tapToExit.
  ///
  /// In en, this message translates to:
  /// **'Press back again to exit'**
  String get tapToExit;

  /// Toggle to make authors and communities tappable.
  ///
  /// In en, this message translates to:
  /// **'Tappable Authors & Communities'**
  String get tappableAuthorCommunity;

  /// No description provided for @text.
  ///
  /// In en, this message translates to:
  /// **'Text'**
  String get text;

  /// Setting for theme
  ///
  /// In en, this message translates to:
  /// **'Theme'**
  String get theme;

  /// Setting for theme accent color
  ///
  /// In en, this message translates to:
  /// **'Accent Colors'**
  String get themeAccentColor;

  /// Title of Theming in Settings -> Appearance -> Theming
  ///
  /// In en, this message translates to:
  /// **'Theming'**
  String get theming;

  /// No description provided for @timeoutComments.
  ///
  /// In en, this message translates to:
  /// **'Error: Timeout when attempting to fetch comments'**
  String get timeoutComments;

  /// No description provided for @timeoutErrorMessage.
  ///
  /// In en, this message translates to:
  /// **'There was a timeout waiting for a response.'**
  String get timeoutErrorMessage;

  /// No description provided for @timeoutSaveComment.
  ///
  /// In en, this message translates to:
  /// **'Error: Timeout when attempting to save a comment'**
  String get timeoutSaveComment;

  /// No description provided for @timeoutSavingPost.
  ///
  /// In en, this message translates to:
  /// **'Error: Timeout when attempting to save post.'**
  String get timeoutSavingPost;

  /// No description provided for @timeoutUpvoteComment.
  ///
  /// In en, this message translates to:
  /// **'Error: Timeout when attempting to vote on comment'**
  String get timeoutUpvoteComment;

  /// No description provided for @timeoutVotingPost.
  ///
  /// In en, this message translates to:
  /// **'Error: Timeout when attempting to vote post.'**
  String get timeoutVotingPost;

  /// No description provided for @toggelRead.
  ///
  /// In en, this message translates to:
  /// **'Toggle Read'**
  String get toggelRead;

  /// No description provided for @top.
  ///
  /// In en, this message translates to:
  /// **'Top'**
  String get top;

  /// No description provided for @topAll.
  ///
  /// In en, this message translates to:
  /// **'Top of all time'**
  String get topAll;

  /// No description provided for @topDay.
  ///
  /// In en, this message translates to:
  /// **'Top Today'**
  String get topDay;

  /// No description provided for @topHour.
  ///
  /// In en, this message translates to:
  /// **'Top in Past Hour'**
  String get topHour;

  /// No description provided for @topMonth.
  ///
  /// In en, this message translates to:
  /// **'Top Month'**
  String get topMonth;

  /// Sort mode for top in past 9 months
  ///
  /// In en, this message translates to:
  /// **'Top in Past 9 Months'**
  String get topNineMonths;

  /// No description provided for @topSixHour.
  ///
  /// In en, this message translates to:
  /// **'Top in Past 6 Hours'**
  String get topSixHour;

  /// Sort mode for top in past 6 months
  ///
  /// In en, this message translates to:
  /// **'Top in Past 6 Months'**
  String get topSixMonths;

  /// Sort mode for top in past 3 months
  ///
  /// In en, this message translates to:
  /// **'Top in Past 3 Months'**
  String get topThreeMonths;

  /// No description provided for @topTwelveHour.
  ///
  /// In en, this message translates to:
  /// **'Top in Past 12 Hours'**
  String get topTwelveHour;

  /// No description provided for @topWeek.
  ///
  /// In en, this message translates to:
  /// **'Top Week'**
  String get topWeek;

  /// No description provided for @topYear.
  ///
  /// In en, this message translates to:
  /// **'Top Year'**
  String get topYear;

  /// No description provided for @totp.
  ///
  /// In en, this message translates to:
  /// **'TOTP (optional)'**
  String get totp;

  /// Warning that translations may not be complete when selecting a language in the settings
  ///
  /// In en, this message translates to:
  /// **'Please note that the translations may not be complete'**
  String get translationsMayNotBeComplete;

  /// No description provided for @trendingCommunities.
  ///
  /// In en, this message translates to:
  /// **'Trending Communities'**
  String get trendingCommunities;

  /// Suggestion for the user to try searching for a different type
  ///
  /// In en, this message translates to:
  /// **'Try searching for...'**
  String get trySearchingFor;

  /// No description provided for @unableToFindCommunity.
  ///
  /// In en, this message translates to:
  /// **'Unable to find community'**
  String get unableToFindCommunity;

  /// Error message for when we are unable to find a community, including the name
  ///
  /// In en, this message translates to:
  /// **'Unable to find community \'{communityName}\''**
  String unableToFindCommunityName(Object communityName);

  /// No description provided for @unableToFindInstance.
  ///
  /// In en, this message translates to:
  /// **'Unable to find instance'**
  String get unableToFindInstance;

  /// Error message when language cannot be found.
  ///
  /// In en, this message translates to:
  /// **'Unable to find language'**
  String get unableToFindLanguage;

  /// No description provided for @unableToFindUser.
  ///
  /// In en, this message translates to:
  /// **'Unable to find user'**
  String get unableToFindUser;

  /// Placeholder for when we are unable to load a binary image
  ///
  /// In en, this message translates to:
  /// **'Unable to load image'**
  String get unableToLoadImage;

  /// Placeholder for when we are unable to load an image from a URL
  ///
  /// In en, this message translates to:
  /// **'Unable to load image from {domain}'**
  String unableToLoadImageFrom(Object domain);

  /// No description provided for @unableToLoadInstance.
  ///
  /// In en, this message translates to:
  /// **'Unable to load {instance}'**
  String unableToLoadInstance(Object instance);

  /// No description provided for @unableToLoadPostsFrominstance.
  ///
  /// In en, this message translates to:
  /// **'Unable to load posts from {instance}'**
  String unableToLoadPostsFrominstance(Object instance);

  /// No description provided for @unableToLoadReplies.
  ///
  /// In en, this message translates to:
  /// **'Unable to load more replies.'**
  String get unableToLoadReplies;

  /// Error message for when we can't navigate to a Lemmy instance
  ///
  /// In en, this message translates to:
  /// **'Unable to navigate to {instanceHost}. It may not be a valid Lemmy instance.'**
  String unableToNavigateToInstance(Object instanceHost);

  /// Tooltip for unblocking an instance
  ///
  /// In en, this message translates to:
  /// **'Unblock Instance'**
  String get unblockInstance;

  /// Action for acknowledging and enabling something
  ///
  /// In en, this message translates to:
  /// **'I Understand, Enable'**
  String get understandEnable;

  /// No description provided for @unexpectedError.
  ///
  /// In en, this message translates to:
  /// **'Unexpected Error'**
  String get unexpectedError;

  /// No description provided for @unsubscribe.
  ///
  /// In en, this message translates to:
  /// **'Unsubscribe'**
  String get unsubscribe;

  /// Action for unsubscribing from a community
  ///
  /// In en, this message translates to:
  /// **'Unsubscribe from Community'**
  String get unsubscribeFromCommunity;

  /// No description provided for @unsubscribePending.
  ///
  /// In en, this message translates to:
  /// **'Unsubscribe (subscription pending)'**
  String get unsubscribePending;

  /// No description provided for @unsubscribed.
  ///
  /// In en, this message translates to:
  /// **'Unsubscribed'**
  String get unsubscribed;

  /// No description provided for @updateReleased.
  ///
  /// In en, this message translates to:
  /// **'Update released: {version}'**
  String updateReleased(Object version);

  /// No description provided for @uploadImage.
  ///
  /// In en, this message translates to:
  /// **'Upload image'**
  String get uploadImage;

  /// No description provided for @upvote.
  ///
  /// In en, this message translates to:
  /// **'Upvote'**
  String get upvote;

  /// Unsupported link type at the present time.
  ///
  /// In en, this message translates to:
  /// **'This type of link is not supported at the moment.'**
  String get uriNotSupported;

  /// No description provided for @url.
  ///
  /// In en, this message translates to:
  /// **'URL'**
  String get url;

  /// Toggle to use advanced share sheet.
  ///
  /// In en, this message translates to:
  /// **'Use Advanced Share Sheet'**
  String get useAdvancedShareSheet;

  /// Option to enable or disable compact view for small posts.
  ///
  /// In en, this message translates to:
  /// **'Enable for small posts, disable for big.'**
  String get useCompactView;

  /// Toggle to use Material You theme.
  ///
  /// In en, this message translates to:
  /// **'Use Material You Theme'**
  String get useMaterialYouTheme;

  /// Subtitle of the setting for using Material You theme
  ///
  /// In en, this message translates to:
  /// **'Overrides the selected custom theme'**
  String get useMaterialYouThemeDescription;

  /// No description provided for @useSuggestedTitle.
  ///
  /// In en, this message translates to:
  /// **'Use suggested title: {title}'**
  String useSuggestedTitle(Object title);

  /// Setting for user full name format
  ///
  /// In en, this message translates to:
  /// **'User Format'**
  String get userFormat;

  /// No description provided for @userNotLoggedIn.
  ///
  /// In en, this message translates to:
  /// **'User not logged in'**
  String get userNotLoggedIn;

  /// Settings related to user profiles.
  ///
  /// In en, this message translates to:
  /// **'User Profiles'**
  String get userProfiles;

  /// Description which explains that the settings are applied globally to the current user.
  ///
  /// In en, this message translates to:
  /// **'These settings sync with your Lemmy account and are only applied on a per-account basis.'**
  String get userSettingDescription;

  /// No description provided for @username.
  ///
  /// In en, this message translates to:
  /// **'Username'**
  String get username;

  /// No description provided for @users.
  ///
  /// In en, this message translates to:
  /// **'Users'**
  String get users;

  /// No description provided for @viewAllComments.
  ///
  /// In en, this message translates to:
  /// **'View all comments'**
  String get viewAllComments;

  /// No description provided for @visitCommunity.
  ///
  /// In en, this message translates to:
  /// **'Visit Community'**
  String get visitCommunity;

  /// No description provided for @visitInstance.
  ///
  /// In en, this message translates to:
  /// **'Visit Instance'**
  String get visitInstance;

  /// No description provided for @visitUserProfile.
  ///
  /// In en, this message translates to:
  /// **'Visit User Profile'**
  String get visitUserProfile;

  /// Heading for warning dialogs
  ///
  /// In en, this message translates to:
  /// **'Warning'**
  String get warning;

  /// No description provided for @xDownvotes.
  ///
  /// In en, this message translates to:
  /// **'{x} downvotes'**
  String xDownvotes(Object x);

  /// The total score of post or comment
  ///
  /// In en, this message translates to:
  /// **'{x} score'**
  String xScore(Object x);

  /// No description provided for @xUpvotes.
  ///
  /// In en, this message translates to:
  /// **'{x} upvotes'**
  String xUpvotes(Object x);
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['ar', 'de', 'en', 'eo', 'es', 'fi', 'fr', 'it', 'nb', 'pl', 'ru', 'sv', 'uk'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'ar': return AppLocalizationsAr();
    case 'de': return AppLocalizationsDe();
    case 'en': return AppLocalizationsEn();
    case 'eo': return AppLocalizationsEo();
    case 'es': return AppLocalizationsEs();
    case 'fi': return AppLocalizationsFi();
    case 'fr': return AppLocalizationsFr();
    case 'it': return AppLocalizationsIt();
    case 'nb': return AppLocalizationsNb();
    case 'pl': return AppLocalizationsPl();
    case 'ru': return AppLocalizationsRu();
    case 'sv': return AppLocalizationsSv();
    case 'uk': return AppLocalizationsUk();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
