import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

/// The translations for Norwegian Bokmål (`nb`).
class AppLocalizationsNb extends AppLocalizations {
  AppLocalizationsNb([String locale = 'nb']) : super(locale);

  @override
  String get about => 'About';

  @override
  String get accessibility => 'Tilgjengelighet';

  @override
  String get accessibilityProfilesDescription => 'Tilgjengelighetsprofiler lar deg bruke flere innstillinger samtidig for å imøtekomme en spesifikk begrensning.';

  @override
  String account(num count) {
    return 'Konto';
  }

  @override
  String get accountSettings => 'Kontoinnstillinger';

  @override
  String get actions => 'Handlinger';

  @override
  String get active => 'Aktivt';

  @override
  String get add => 'Legg til';

  @override
  String get addAccount => 'Legg til konto';

  @override
  String get addAccountToSeeProfile => 'Legg til en konto for å vise profilen din.';

  @override
  String get addAnonymousInstance => 'Legg til anonym instans';

  @override
  String get addKeywordFilter => 'Add Keyword';

  @override
  String get addToFavorites => 'Add to favorites';

  @override
  String get addedCommunityToSubscriptions => 'Abonnerte på gemenskap';

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
  String get animations => 'Animasjoner';

  @override
  String get anonymous => 'Anonym';

  @override
  String get appLanguage => 'App Language';

  @override
  String get appearance => 'Appearance';

  @override
  String get applied => 'Anvendt';

  @override
  String get apply => 'Bruk';

  @override
  String get back => 'Tilbake';

  @override
  String get backButton => 'Tilbake-knapp';

  @override
  String get backToTop => 'Tilbake til toppen';

  @override
  String get backgroundCheckWarning => 'Note that notification checks will consume additional battery';

  @override
  String get base => 'Base';

  @override
  String get blockCommunity => 'Blokker gemenskap';

  @override
  String get blockInstance => 'Block Instance';

  @override
  String get blockUser => 'Blokker bruker';

  @override
  String get blockedCommunities => 'Blokkerte gemenskaper';

  @override
  String get blockedInstances => 'Blocked Instances';

  @override
  String get blockedUsers => 'Blokkerte brukere';

  @override
  String browsingAnonymously(Object instance) {
    return 'Du surfer $instance anonymt.';
  }

  @override
  String get cancel => 'Avbryt';

  @override
  String get cannotReportOwnComment => 'You may not submit a report for your own comment.';

  @override
  String get cantBlockAdmin => 'Du kan ikke blokkere en instansadministrator.';

  @override
  String get cantBlockYourself => 'Du kan ikke blokkere deg selv';

  @override
  String get cardView => 'Card View';

  @override
  String get cardViewDescription => 'Enable card view to adjust settings';

  @override
  String get cardViewSettings => 'Card View Settings';

  @override
  String get changeSort => 'Endre sortering';

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
  String get clearedDatabase => 'Lokal database tømt. Start Thunder på ny for å ta i bruk endringer.';

  @override
  String get clearedUserPreferences => 'Alle brukerinnstillinger tømt';

  @override
  String get close => 'Lukk';

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
  String get comment => 'Kommentar';

  @override
  String get commentBehaviourSettings => 'Comments';

  @override
  String get commentFontScale => 'Comment Content Font Scale';

  @override
  String get commentPreview => 'Show a preview of the comments with the given settings';

  @override
  String get commentReported => 'The comment has been marked for review.';

  @override
  String get commentSavedAsDraft => 'Kommentar lagret som kladd';

  @override
  String get commentShowUserInstance => 'Show User Instance';

  @override
  String get commentSortType => 'Comment Sort Type';

  @override
  String get commentSwipeActions => 'Comment Swipe Actions';

  @override
  String get commentSwipeGesturesHint => 'Looking to use buttons instead? Enable them in the comments section in general settings.';

  @override
  String get comments => 'Kommentarer';

  @override
  String get communities => 'Communities';

  @override
  String get community => 'Gemenskap';

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
  String get copiedToClipboard => 'Kopiert til utklippstavlen';

  @override
  String get copy => 'Copy';

  @override
  String get copyText => 'Kopier tekst';

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
  String get createAccount => 'Opprett konto';

  @override
  String get createComment => 'Opprett kommentar';

  @override
  String get createNewCrossPost => 'Create new cross-post';

  @override
  String get createPost => 'Opprett innlegg';

  @override
  String get creator => 'Creator';

  @override
  String crossPostedFrom(Object postUrl) {
    return 'cross-posted from:  $postUrl';
  }

  @override
  String get crossPostedTo => 'Cross-posted to';

  @override
  String get currentLongPress => 'Satt til langtrykk';

  @override
  String get currentSinglePress => 'Satt til enkelttrykk';

  @override
  String get customizeSwipeActions => 'Tilpass dragningshandlinger (trykk for å endre)';

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
  String get delete => 'Slett';

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
  String get dismissRead => 'Forkast leste';

  @override
  String get displayUserScore => 'Display User Scores (Karma).';

  @override
  String get downloadingMedia => 'Laster ned media å dele …';

  @override
  String get downvote => 'Stem ned';

  @override
  String get downvotesDisabled => 'Nedstemmer er avskrudd på denne instansen.';

  @override
  String get edit => 'Rediger';

  @override
  String get editComment => 'Rediger kommentar';

  @override
  String get editPost => 'Edit Post';

  @override
  String get empty => 'Empty';

  @override
  String get emptyInbox => 'Tøm innboks';

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
    return 'Kunne ikke laste ned mediafil å dele: $errorMessage';
  }

  @override
  String get exceptionProcessingUri => 'An error occurred while processing the link. It may not be available on your instance.';

  @override
  String get expandCommentPreview => 'Expand Comment Preview';

  @override
  String get expandInformation => 'Expand Information';

  @override
  String get expandOptions => 'Utvid alternativer';

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
    return 'Kunne ikke blokkere: $errorMessage';
  }

  @override
  String failedToLoadBlocks(Object errorMessage) {
    return 'Kunne ikke laste inn blokkeringer: $errorMessage';
  }

  @override
  String failedToUnblock(Object errorMessage) {
    return 'Kunne ikke avblokkere: $errorMessage';
  }

  @override
  String get favorites => 'Favorites';

  @override
  String get feed => 'Informasjonskanal';

  @override
  String get feedBehaviourSettings => 'Feed';

  @override
  String get feedTypeAndSorts => 'Default Feed Type and Sorting';

  @override
  String get fetchAccountError => 'Kunne ikke fastslå konto';

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
  String get gettingStarted => 'Begynn';

  @override
  String get hideNsfwPostsFromFeed => 'Hide NSFW Posts from Feed';

  @override
  String get hideNsfwPreviews => 'Hide NSFW Previews';

  @override
  String get hidePassword => 'Skjul passord';

  @override
  String get hideTopBarOnScroll => 'Hide Top Bar on Scroll';

  @override
  String get hot => 'På vei opp';

  @override
  String get image => 'Bilde';

  @override
  String get importExportSettings => 'Import/Export Settings';

  @override
  String get importSettings => 'Import Settings';

  @override
  String inReplyTo(Object community, Object post) {
    return 'som svar til $post i $community';
  }

  @override
  String get inbox => 'Innboks';

  @override
  String get includeCommunity => 'Inkluder gemenskap';

  @override
  String get includeExternalLink => 'Inkluder ekstern lenke';

  @override
  String get includeImage => 'Inkluder bilde';

  @override
  String get includePostLink => 'Inkluder innleggslenke';

  @override
  String get includeText => 'Inkluder tekst';

  @override
  String get includeTitle => 'Inkluder navn';

  @override
  String get information => 'Information';

  @override
  String get instance => 'Instans';

  @override
  String instanceHasAlreadyBenAdded(Object instance) {
    return '$instance allerede tillagt.';
  }

  @override
  String get internetOrInstanceIssues => 'Det kan hende du ikke er tilkoblet Internett, eller at instansen din er utilgjengelig.';

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
    return 'Lenke';
  }

  @override
  String get linkActions => 'Link Actions';

  @override
  String get linksBehaviourSettings => 'Links';

  @override
  String loadMorePlural(Object count) {
    return 'Last inn $count flere svar …';
  }

  @override
  String loadMoreSingular(Object count) {
    return 'Laster inn $count svar til …';
  }

  @override
  String get local => 'Local';

  @override
  String get localPosts => 'Local Posts';

  @override
  String get logOut => 'Logg ut';

  @override
  String get login => 'Logg inn';

  @override
  String loginFailed(Object errorMessage) {
    return 'Kunne ikke logge inn. Prøv igjen $errorMessage';
  }

  @override
  String get loginSucceeded => 'Innlogget.';

  @override
  String get loginToPerformAction => 'You need to be logged in to carry out this task.';

  @override
  String get loginToSeeInbox => 'Logg inn for å vise innboksen din';

  @override
  String get malformedUri => 'The link you provided is in an unsupported format. Please make sure it\'s a valid link.';

  @override
  String get manageAccounts => 'Håndter kontoer.';

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
  String get missingErrorMessage => 'Ingen feilmelding tilgjengelig';

  @override
  String get moderatedCommunities => 'Moderated Communities';

  @override
  String get mostComments => 'Mest kommentert';

  @override
  String get mustBeLoggedInComment => 'Du må være innlogget for å kommentere';

  @override
  String get mustBeLoggedInPost => 'Du må være innlogget for å lage et innlegg';

  @override
  String get navbarDoubleTapGestures => 'Navbar Double Tap Gestures';

  @override
  String get navbarSwipeGestures => 'Navbar Swipe Gestures';

  @override
  String get navigateDown => 'Gå til neste kommentar';

  @override
  String get navigateUp => 'Gå til forrige kommentar';

  @override
  String get navigation => 'Navigation';

  @override
  String get nestedCommentIndicatorColor => 'Nested Comment Indicator Color';

  @override
  String get nestedCommentIndicatorStyle => 'Nested Comment Indicator Style';

  @override
  String get newComments => 'Nye kommentarer';

  @override
  String get newPost => 'New Post';

  @override
  String get new_ => 'Nytt';

  @override
  String get noComments => 'Oh. There are no comments.';

  @override
  String get noCommentsFound => 'No comments found.';

  @override
  String get noCommunitiesFound => 'No communities found.';

  @override
  String get noCommunityBlocks => 'Det ser ut til at du ikke har blokkert noen gemenskaper.';

  @override
  String get noFavoritedCommunities => 'No favorited communities';

  @override
  String get noInstanceBlocks => 'No blocked instances.';

  @override
  String get noKeywordFilters => 'No keyword filters added';

  @override
  String get noLanguage => 'No language';

  @override
  String get noPosts => 'Fant ikke noen innlegg';

  @override
  String get noPostsFound => 'No posts found';

  @override
  String get noResultsFound => 'No results found.';

  @override
  String get noSubscriptions => 'No Subscriptions';

  @override
  String get noUserBlocks => 'Det ser ut til at du ikke har blokkert noen.';

  @override
  String get noUsersFound => 'No users found.';

  @override
  String notValidLemmyInstance(Object instance) {
    return '$instance ser ikke ut til å være en gyldig Lemmy-instans';
  }

  @override
  String get notValidUrl => 'Ikke en gyldig nettadresse';

  @override
  String get nothingToShare => 'Ingending å dele';

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
  String get off => 'av';

  @override
  String get ok => 'OK';

  @override
  String get old => 'Gammelt';

  @override
  String get on => 'på';

  @override
  String get onlyModsCanPostInCommunity => 'Kun moderatorer kan sende innlegg til denne gemenskapen';

  @override
  String get open => 'Åpne';

  @override
  String get openAccountSwitcher => 'Åpne kontobytter';

  @override
  String get openByDefault => 'Open by default';

  @override
  String get openInBrowser => 'Open in Browser';

  @override
  String get openInstance => 'Åpne instans';

  @override
  String get openLinksInExternalBrowser => 'Open Links in External Browser';

  @override
  String get openLinksInReaderMode => 'Open Links in Reader Mode';

  @override
  String get openSettings => 'Open Settings';

  @override
  String get overview => 'Oversikt';

  @override
  String get password => 'Passord';

  @override
  String get pending => 'Pending';

  @override
  String get permissionDenied => 'Permission Denied';

  @override
  String get permissionDeniedMessage => 'Thunder requires some permissions in order to save this image which have been denied.';

  @override
  String get postBehaviourSettings => 'Posts';

  @override
  String get postBody => 'Innleggsbrødtekst';

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
  String get postLocked => 'Innlegg låst. Svar tillates ikke.';

  @override
  String get postNSFW => 'Marker som sensurerbart';

  @override
  String get postPreview => 'Show a preview of the post with the given settings';

  @override
  String get postSavedAsDraft => 'Innlegg lagret som kladd';

  @override
  String get postSwipeActions => 'Post Swipe Actions';

  @override
  String get postSwipeGesturesHint => 'Looking to use buttons instead? Change what buttons appear on post cards in general settings.';

  @override
  String get postTitle => 'Navn';

  @override
  String get postTitleFontScale => 'Post Title Font Scale';

  @override
  String get postTogglePreview => 'Veksle forhåndsvisning';

  @override
  String get postURL => 'Nettadresse';

  @override
  String get postUploadImageError => 'Kunne ikke laste opp bilde';

  @override
  String get postViewType => 'Post View Type';

  @override
  String get posts => 'Innlegg';

  @override
  String get preview => 'Forhåndsvisning';

  @override
  String profileAppliedSuccessfully(Object profile) {
    return '$profile anvendt.';
  }

  @override
  String get profiles => 'Profiler';

  @override
  String get pureBlack => 'Pure Black';

  @override
  String get reachedTheBottom => 'Hmmm. It seems like you\'ve reached the bottom.';

  @override
  String get readAll => 'Les alle';

  @override
  String get reduceAnimations => 'Reduce Animations';

  @override
  String get reducesAnimations => 'Minsker antall animasjoner i Thunder';

  @override
  String get refresh => 'Gjenoppfrisk';

  @override
  String get refreshContent => 'Gjenoppfrisk innhold';

  @override
  String get remove => 'Fjern';

  @override
  String get removeAccount => 'Fjern konto';

  @override
  String get removeFromFavorites => 'Remove from favorites';

  @override
  String get removeInstance => 'Fjern instans';

  @override
  String removeKeyword(Object keyword) {
    return 'Remove \"$keyword\"?';
  }

  @override
  String get removeKeywordFilter => 'Remove Keyword';

  @override
  String get removedCommunityFromSubscriptions => 'Fjernet abonnement på gemenskap';

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
  String get replyNotSupported => 'Besvaring fra denne visningen støttes ikke enda';

  @override
  String get replyToPost => 'Besvar innlegg';

  @override
  String replyingTo(Object author) {
    return 'Besvarer $author';
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
  String get restore => 'Gjenopprett';

  @override
  String get restoredCommentFromDraft => 'Gjenopprettet kommentar fra kladd';

  @override
  String get restoredPostFromDraft => 'Gjenopprettet innlegg fra kladd';

  @override
  String get retry => 'Svar';

  @override
  String get rightLongSwipe => 'Right Long Swipe';

  @override
  String get rightShortSwipe => 'Right Short Swipe';

  @override
  String get save => 'Lagre';

  @override
  String get saveSettings => 'Save Settings';

  @override
  String get saved => 'Lagret';

  @override
  String get scaled => 'Scaled';

  @override
  String get scrapeMissingLinkPreviews => 'Scrape Missing Link Previews';

  @override
  String get scrapeMissingPreviews => 'Enabling will have a performance hit.';

  @override
  String get screenReaderProfile => 'Skjermleserprofil';

  @override
  String get screenReaderProfileDescription => 'Optimaliserer Thunder for skjermlesere ved å redusere totalt antall elementer og ved fjerning av håndvendinger som kan være i konflikt med hverandre.';

  @override
  String get search => 'Søk';

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
    return 'Søk etter gemenskaper i føderasjon med $instance';
  }

  @override
  String searchInstance(Object instance) {
    return 'Søk i $instance';
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
  String get setLongPress => 'Sett som langtrykksvalg';

  @override
  String get setShortPress => 'Sett som korttrykksvalg';

  @override
  String settingTypeNotSupported(Object settingType) {
    return 'Innstillinger av $settingType-type støttes ikke enda.';
  }

  @override
  String get settings => 'Innstillinger';

  @override
  String get settingsFeedCards => 'These settings apply to the cards in the main feed, actions are always available when actually opening posts.';

  @override
  String get share => 'Del';

  @override
  String get shareLink => 'Del lenke';

  @override
  String get shareMedia => 'Del media';

  @override
  String get sharePost => 'Del innlegg';

  @override
  String get showAll => 'Vis alle';

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
  String get showLess => 'Vis mindre';

  @override
  String get showMore => 'Vis mer';

  @override
  String get showPassword => 'Vis passord';

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
  String get somethingWentWrong => 'Noe gikk galt.';

  @override
  String get sortBy => 'Sorter etter';

  @override
  String get sortByTop => 'Sorter etter topp';

  @override
  String get sortOptions => 'Sorteringsvalg';

  @override
  String get spoiler => 'Spoiler';

  @override
  String get submit => 'Submit';

  @override
  String get subscribe => 'Abonner';

  @override
  String get subscribeToCommunity => 'Subscribe to Community';

  @override
  String get subscribed => 'Abonnert';

  @override
  String get subscriptions => 'Abonnementer';

  @override
  String get successfullyBlocked => 'Blokkert.';

  @override
  String successfullyBlockedCommunity(Object communityName) {
    return '$communityName blokkert';
  }

  @override
  String get successfullyUnblocked => 'Ablokkert.';

  @override
  String successfullyUnblockedCommunity(Object communityName) {
    return '$communityName avblokkert';
  }

  @override
  String get suggestedTitle => 'Suggested title';

  @override
  String get system => 'System';

  @override
  String get tabletMode => 'Tablet Mode (2-column view)';

  @override
  String get tapToExit => 'Trykk tilbake to ganger for å avslutte';

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
  String get timeoutErrorMessage => 'Tidsavbrudd i påvente av svar.';

  @override
  String get timeoutSaveComment => 'Error: Timeout when attempting to save a comment';

  @override
  String get timeoutSavingPost => 'Error: Timeout when attempting to save post.';

  @override
  String get timeoutUpvoteComment => 'Error: Timeout when attempting to vote on comment';

  @override
  String get timeoutVotingPost => 'Error: Timeout when attempting to vote post.';

  @override
  String get toggelRead => 'Veksle lesestatus';

  @override
  String get top => 'Topp';

  @override
  String get topAll => 'Topp siden begynnelsen';

  @override
  String get topDay => 'Topp i dag';

  @override
  String get topHour => 'Topp siste time';

  @override
  String get topMonth => 'Topp denne måneden';

  @override
  String get topNineMonths => 'Top in Past 9 Months';

  @override
  String get topSixHour => 'Topp de siste 6 timer';

  @override
  String get topSixMonths => 'Top in Past 6 Months';

  @override
  String get topThreeMonths => 'Top in Past 3 Months';

  @override
  String get topTwelveHour => 'Topp de siste 12 timer';

  @override
  String get topWeek => 'Topp denne uken';

  @override
  String get topYear => 'Topp dette året';

  @override
  String get totp => 'TOTP (valgfritt)';

  @override
  String get translationsMayNotBeComplete => 'Please note that the translations may not be complete';

  @override
  String get trendingCommunities => 'Gemenskaper på vei opp';

  @override
  String get trySearchingFor => 'Try searching for...';

  @override
  String get unableToFindCommunity => 'Kunne ikke finne gemenskap';

  @override
  String unableToFindCommunityName(Object communityName) {
    return 'Unable to find community \'$communityName\'';
  }

  @override
  String get unableToFindInstance => 'Unable to find instance';

  @override
  String get unableToFindLanguage => 'Unable to find language';

  @override
  String get unableToFindUser => 'Kunne ikke finne bruker';

  @override
  String get unableToLoadImage => 'Unable to load image';

  @override
  String unableToLoadImageFrom(Object domain) {
    return 'Unable to load image from $domain';
  }

  @override
  String unableToLoadInstance(Object instance) {
    return 'Kunne ikke laste inn $instance';
  }

  @override
  String unableToLoadPostsFrominstance(Object instance) {
    return 'Kunne ikke laste inn innlegg fra $instance';
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
  String get unexpectedError => 'Uventet feil';

  @override
  String get unsubscribe => 'Opphev abonnement';

  @override
  String get unsubscribeFromCommunity => 'Unsubscribe from Community';

  @override
  String get unsubscribePending => 'Opphev abonnement (abonnering venter)';

  @override
  String get unsubscribed => 'Abonnement opphevet';

  @override
  String updateReleased(Object version) {
    return 'Ny versjon tilgjengelig: $version';
  }

  @override
  String get uploadImage => 'Last opp bilde';

  @override
  String get upvote => 'Stem opp';

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
  String get username => 'Brukernavn';

  @override
  String get users => 'Users';

  @override
  String get viewAllComments => 'View all comments';

  @override
  String get visitCommunity => 'Besøk gemenskap';

  @override
  String get visitInstance => 'Visit Instance';

  @override
  String get visitUserProfile => 'Besøk brukerprofil';

  @override
  String get warning => 'Warning';

  @override
  String xDownvotes(Object x) {
    return '$x nedstemmer';
  }

  @override
  String xScore(Object x) {
    return '$x score';
  }

  @override
  String xUpvotes(Object x) {
    return '$x oppstemmer';
  }
}
