import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

/// The translations for Finnish (`fi`).
class AppLocalizationsFi extends AppLocalizations {
  AppLocalizationsFi([String locale = 'fi']) : super(locale);

  @override
  String get about => 'Tietoja';

  @override
  String get accessibility => 'Accessibility';

  @override
  String get accessibilityProfilesDescription => 'Accessibility profiles allows applying several settings at once to accommodate a particular accessibility requirement.';

  @override
  String account(num count) {
    return 'Tili';
  }

  @override
  String get accountSettings => 'Tiliasetukset';

  @override
  String get actions => 'Toiminnot';

  @override
  String get active => 'Aktiiviset';

  @override
  String get add => 'Lisää';

  @override
  String get addAccount => 'Lisää Tili';

  @override
  String get addAccountToSeeProfile => 'Lisää tili nähdäksesi profiilisi.';

  @override
  String get addAnonymousInstance => 'Lisää Anonyymi Instanssi';

  @override
  String get addKeywordFilter => 'Lisää avainsana';

  @override
  String get addToFavorites => 'Lisää suosikkeihin';

  @override
  String get addedCommunityToSubscriptions => 'Yhteisö lisätty tilauksiin';

  @override
  String get advanced => 'Lisäasetukset';

  @override
  String get all => 'Kaikki';

  @override
  String get allPosts => 'Kaikki Postaukset';

  @override
  String get allowOpenSupportedLinks => 'Salli sovelluksen avata tuettuja linkkejä.';

  @override
  String get alreadyPostedTo => 'Postattu jo yhteisöön';

  @override
  String andXMore(Object count) {
    return 'ja $count lisää';
  }

  @override
  String get animations => 'Animaatiot';

  @override
  String get anonymous => 'Anonyymi';

  @override
  String get appLanguage => 'Sovelluksen kieli';

  @override
  String get appearance => 'Ulkoasu';

  @override
  String get applied => 'Käytössä';

  @override
  String get apply => 'Käytä';

  @override
  String get back => 'Takaisin';

  @override
  String get backButton => 'Takaisin-painike';

  @override
  String get backToTop => 'Takaisin Ylös';

  @override
  String get backgroundCheckWarning => 'Note that notification checks will consume additional battery';

  @override
  String get base => 'Base';

  @override
  String get blockCommunity => 'Estä Yhteisö';

  @override
  String get blockInstance => 'Estä Instanssi';

  @override
  String get blockUser => 'Estä Käyttäjä';

  @override
  String get blockedCommunities => 'Estetyt Yhteisöt';

  @override
  String get blockedInstances => 'Estetyt Instanssit';

  @override
  String get blockedUsers => 'Estetyt Käyttäjät';

  @override
  String browsingAnonymously(Object instance) {
    return 'Selaat instanssia, $instance, anonyymisti.';
  }

  @override
  String get cancel => 'Peru';

  @override
  String get cannotReportOwnComment => 'Et voi ilmiantaa omaa kommenttiasi.';

  @override
  String get cantBlockAdmin => 'Et voi estää instanssin ylläpitäjää.';

  @override
  String get cantBlockYourself => 'Et voi estää itseäsi.';

  @override
  String get cardView => 'Korttinäkymä';

  @override
  String get cardViewDescription => 'Ota korttinäkymä käyttöön säätääksesi asetuksia';

  @override
  String get cardViewSettings => 'Korttinäkymän asetukset';

  @override
  String get changeSort => 'Vaihda Lajittelu';

  @override
  String clearCache(Object cacheSize) {
    return 'Clear Cache ($cacheSize)';
  }

  @override
  String get clearDatabase => 'Tyhjennä tietokanta';

  @override
  String get clearPreferences => 'Clear Preferences';

  @override
  String get clearSearch => 'Tyhjennä Hakukenttä';

  @override
  String get clearedCache => 'Cleared cache successfully.';

  @override
  String get clearedDatabase => 'Paikallinen tietokanta tyhjennetty. Uudelleenkäynnistä Thunder nähdäksesi muutokset.';

  @override
  String get clearedUserPreferences => 'Cleared all user preferences';

  @override
  String get close => 'Sulje';

  @override
  String get collapseCommentPreview => 'Lyyhistä kommentin esikatselu';

  @override
  String get collapseInformation => 'Collapse Information';

  @override
  String get collapseParentCommentBodyOnGesture => 'Hide Parent Comment when Collapsed';

  @override
  String get collapsePost => 'Lyyhistä postaus';

  @override
  String get collapsePostPreview => 'Lyyhistä postauksen esikatselu';

  @override
  String get collapseSpoiler => 'Collapse Spoiler';

  @override
  String get combineCommentScores => 'Combine Comment Scores';

  @override
  String get combineCommentScoresLabel => 'Yhdistä kommenttipisteet';

  @override
  String get combineNavAndFab => 'Kelluva toimintopainike näytetään navigointipainikkeiden välissä.';

  @override
  String get combineNavAndFabDescription => 'Floating Action Button will be shown between navigation buttons.';

  @override
  String get comment => 'Kommentti';

  @override
  String get commentBehaviourSettings => 'Kommentit';

  @override
  String get commentFontScale => 'Comment Content Font Scale';

  @override
  String get commentPreview => 'Näytä kommenttien esikatselu määritetyillä asetuksilla';

  @override
  String get commentReported => 'Kommentti merkitty tarkistusta varten.';

  @override
  String get commentSavedAsDraft => 'Kommentin luonnos tallennettu';

  @override
  String get commentShowUserInstance => 'Näytä käyttäjän instanssi';

  @override
  String get commentSortType => 'Kommenttien lajittelun tyyppi';

  @override
  String get commentSwipeActions => 'Comment Swipe Actions';

  @override
  String get commentSwipeGesturesHint => 'Haluatko käyttää mielummin painikkeita? Ota ne käyttöön yleisten asetusten kommenttiosiossa.';

  @override
  String get comments => 'Kommentit';

  @override
  String get communities => 'Yhteisöt';

  @override
  String get community => 'Yhteisö';

  @override
  String get communityFormat => 'Yhteisön formaatti';

  @override
  String get compactView => 'Kompakti näkymä';

  @override
  String get compactViewDescription => 'Ota kompakti näkymä käyttöön säätääksesi asetuksia';

  @override
  String get compactViewSettings => 'Kompaktin näkymän asetukset';

  @override
  String get condensed => 'Condensed';

  @override
  String get confirm => 'Confirm';

  @override
  String get confirmLogOutBody => 'Oletko varma, että haluat kirjautua ulos?';

  @override
  String get confirmLogOutTitle => 'Kirjaudu ulos?';

  @override
  String get confirmMarkAllAsReadBody => 'Oletko varma, että haluat merkitä kaikki viestit luetuiksi?';

  @override
  String get confirmMarkAllAsReadTitle => 'Merkitse kaikki luetuiksi?';

  @override
  String get confirmResetCommentPreferences => 'This will reset all comment preferences. Are you sure you want to proceed?';

  @override
  String get confirmResetPostPreferences => 'This will reset all post preferences. Are you sure you want to proceed?';

  @override
  String get controversial => 'Controversial';

  @override
  String get copiedToClipboard => 'Kopioitu leikepöydälle';

  @override
  String get copy => 'Kopioi';

  @override
  String get copyText => 'Kopioi teksti';

  @override
  String get couldNotDetermineCommentDelete => 'Error: Could not determine post to delete the comment.';

  @override
  String get couldNotDeterminePostComment => 'Error: Could not determine post to comment to.';

  @override
  String get couldntCreateReport => 'Your comment report could not be submitted at this time. Please try again later';

  @override
  String countSubscribers(Object count) {
    return '$count tilaajaa';
  }

  @override
  String countUsers(Object count) {
    return '$count users';
  }

  @override
  String get createAccount => 'Luo Tili';

  @override
  String get createComment => 'Luo kommentti';

  @override
  String get createNewCrossPost => 'Luo uusi ristiinjulkaisu';

  @override
  String get createPost => 'Luo Postaus';

  @override
  String get creator => 'Creator';

  @override
  String crossPostedFrom(Object postUrl) {
    return 'cross-posted from:  $postUrl';
  }

  @override
  String get crossPostedTo => 'Ristiinjulkaistu yhteisöön';

  @override
  String get currentLongPress => 'Currently set as long press';

  @override
  String get currentSinglePress => 'Currently set as single press';

  @override
  String get customizeSwipeActions => 'Mukauta pyyhkäisytoimintoja (napauta muuttaaksesi)';

  @override
  String get dangerZone => 'Danger Zone';

  @override
  String get dark => 'Dark';

  @override
  String get debug => 'Virheenjäljitys';

  @override
  String get debugDescription => 'Seuraavia vianmääritysasetuksia tulisi käyttää ainoastaan vianetsintätarkoituksiin.';

  @override
  String get defaultCommentSortType => 'Default Comment Sort Type';

  @override
  String get defaultFeedSortType => 'Default Feed Sort Type';

  @override
  String get defaultFeedType => 'Default Feed Type';

  @override
  String get delete => 'Poista';

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
  String get dimReadPosts => 'Luetut postaukset näkyvät tummennettuina';

  @override
  String get disable => 'Disable';

  @override
  String get dismissRead => 'Hylkää Luetut';

  @override
  String get displayUserScore => 'Näytä käyttäjäpisteet (Karma).';

  @override
  String get downloadingMedia => 'Ladataan mediaa jaettavaksi…';

  @override
  String get downvote => 'Downvote';

  @override
  String get downvotesDisabled => 'Downvotes are turned off on this instance.';

  @override
  String get edit => 'Muokkaa';

  @override
  String get editComment => 'Muokkaa kommenttia';

  @override
  String get editPost => 'Muokkaa postausta';

  @override
  String get empty => 'Tyhjä';

  @override
  String get emptyInbox => 'Tyhjä postilaatikko';

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
  String get endSearch => 'Lopeta haku';

  @override
  String errorDownloadingMedia(Object errorMessage) {
    return 'Mediatiedostoa ei voitu ladata jaettavaksi: $errorMessage';
  }

  @override
  String get exceptionProcessingUri => 'Linkin käsittelyssä tapahtui virhe. Se ei ehkä ole saatavilla instanssillasi.';

  @override
  String get expandCommentPreview => 'Laajenna kommentin esikatselu';

  @override
  String get expandInformation => 'Expand Information';

  @override
  String get expandOptions => 'Laajenna asetukset';

  @override
  String get expandPost => 'Laajenna postaus';

  @override
  String get expandPostPreview => 'Laajenna postauksen esikatselu';

  @override
  String get expandSpoiler => 'Expand Spoiler';

  @override
  String get expanded => 'Expanded';

  @override
  String get extraLarge => 'Extra Large';

  @override
  String failedToBlock(Object errorMessage) {
    return 'Estäminen epäonnistui: $errorMessage';
  }

  @override
  String failedToLoadBlocks(Object errorMessage) {
    return 'Could not load blocks: $errorMessage';
  }

  @override
  String failedToUnblock(Object errorMessage) {
    return 'Eston poisto epäonnistui: $errorMessage';
  }

  @override
  String get favorites => 'Suosikit';

  @override
  String get feed => 'Julkaisut';

  @override
  String get feedBehaviourSettings => 'Syöte';

  @override
  String get feedTypeAndSorts => 'Default Feed Type and Sorting';

  @override
  String get fetchAccountError => 'Tiliä ei voitu määritellä';

  @override
  String filteringBy(Object entity) {
    return 'Filtering by $entity';
  }

  @override
  String get filters => 'Suodattimet';

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
  String get general => 'Yleiset';

  @override
  String get generalSettings => 'Yleiset asetukset';

  @override
  String get gestures => 'Eleet';

  @override
  String get gettingStarted => 'Aloitus';

  @override
  String get hideNsfwPostsFromFeed => 'Hide NSFW Posts from Feed';

  @override
  String get hideNsfwPreviews => 'Hide NSFW Previews';

  @override
  String get hidePassword => 'Piilota Salasana';

  @override
  String get hideTopBarOnScroll => 'Hide Top Bar on Scroll';

  @override
  String get hot => 'Kuumat';

  @override
  String get image => 'Kuva';

  @override
  String get importExportSettings => 'Tuo/vie asetukset';

  @override
  String get importSettings => 'Tuo asetukset';

  @override
  String inReplyTo(Object community, Object post) {
    return 'In reply to $post in $community';
  }

  @override
  String get inbox => 'Postilaatikko';

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
  String get instance => 'Instanssi';

  @override
  String instanceHasAlreadyBenAdded(Object instance) {
    return '$instance on jo lisätty.';
  }

  @override
  String get internetOrInstanceIssues => 'Internet yhteys puuttuu, tai valitsemasi instanssi ei ole nyt saatavilla.';

  @override
  String get keywordFilterDescription => 'Filters posts containing any keywords in the title or body';

  @override
  String get keywordFilters => 'Keyword Filters';

  @override
  String get language => 'Kieli';

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
  String get linksBehaviourSettings => 'Linkit';

  @override
  String loadMorePlural(Object count) {
    return 'Lataa $count vastausta lisää…';
  }

  @override
  String loadMoreSingular(Object count) {
    return 'Lataa $count vastausta lisää…';
  }

  @override
  String get local => 'Local';

  @override
  String get localPosts => 'Paikalliset Postaukset';

  @override
  String get logOut => 'Kirjaudu Ulos';

  @override
  String get login => 'Kirjaudu';

  @override
  String loginFailed(Object errorMessage) {
    return 'Kirjautuminen epäonnistui. Ole hyvä ja yritä uudelleen: ($errorMessage)';
  }

  @override
  String get loginSucceeded => 'Logged in.';

  @override
  String get loginToPerformAction => 'Sinun on kirjauduttava sisään suorittaaksesi tämän toiminnon.';

  @override
  String get loginToSeeInbox => 'Kirjaudu nähdäksesi postilaatikkosi';

  @override
  String get malformedUri => 'The link you provided is in an unsupported format. Please make sure it\'s a valid link.';

  @override
  String get manageAccounts => 'Hallitse Tilejä';

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
  String get missingErrorMessage => 'Ei vikailmoitusta';

  @override
  String get moderatedCommunities => 'Moderated Communities';

  @override
  String get mostComments => 'Eniten Kommentteja';

  @override
  String get mustBeLoggedInComment => 'Sinun tulee olla kirjautunut kommentoidaksesi';

  @override
  String get mustBeLoggedInPost => 'Sinun tulee olla kirjautunut luodaksesi postauksen';

  @override
  String get navbarDoubleTapGestures => 'Navbar Double Tap Gestures';

  @override
  String get navbarSwipeGestures => 'Navbar Swipe Gestures';

  @override
  String get navigateDown => 'Next comment';

  @override
  String get navigateUp => 'Edellinen kommentti';

  @override
  String get navigation => 'Navigaatio';

  @override
  String get nestedCommentIndicatorColor => 'Nested Comment Indicator Color';

  @override
  String get nestedCommentIndicatorStyle => 'Nested Comment Indicator Style';

  @override
  String get newComments => 'Uusimmat Kommentit';

  @override
  String get newPost => 'New Post';

  @override
  String get new_ => 'Uusimmat';

  @override
  String get noComments => 'Höh. Ei yhtään kommenttia.';

  @override
  String get noCommentsFound => 'No comments found.';

  @override
  String get noCommunitiesFound => 'Ei löytynyt yhteisöjä';

  @override
  String get noCommunityBlocks => 'Ei estettyjä yhteisöjä.';

  @override
  String get noFavoritedCommunities => 'No favorited communities';

  @override
  String get noInstanceBlocks => 'Ei estettyjä instansseja.';

  @override
  String get noKeywordFilters => 'No keyword filters added';

  @override
  String get noLanguage => 'No language';

  @override
  String get noPosts => 'Postauksia ei löytynyt';

  @override
  String get noPostsFound => 'No posts found';

  @override
  String get noResultsFound => 'No results found.';

  @override
  String get noSubscriptions => 'No Subscriptions';

  @override
  String get noUserBlocks => 'Ei estettyjä käyttäjiä.';

  @override
  String get noUsersFound => 'Ei löytynyt käyttäjiä';

  @override
  String notValidLemmyInstance(Object instance) {
    return '$instance ei ole kelvollinen Lemmy instanssi';
  }

  @override
  String get notValidUrl => 'Ei kelvollinen URL';

  @override
  String get nothingToShare => 'Ei mitään jaettavaa';

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
  String get notificationsBehaviourSettings => 'Ilmoitukset';

  @override
  String get notificationsNotAllowed => 'Notifications are not allowed for Thunder in system settings';

  @override
  String get notificationsWarningDialog => 'Notifications are an experimental feature which may not function correctly on all devices.\n\n· Checks will occur every ~15 minutes and will consume additional battery.\n\n· Disable battery optimizations for a higher likelihood of successful notifications.\n\nSee the following page for more information.';

  @override
  String get off => 'off';

  @override
  String get ok => 'OK';

  @override
  String get old => 'Vanhat';

  @override
  String get on => 'on';

  @override
  String get onlyModsCanPostInCommunity => 'Ainoastaan moderaatorit voivat luoda postauksia tähän yhteisöön';

  @override
  String get open => 'Avaa';

  @override
  String get openAccountSwitcher => 'Open account switcher';

  @override
  String get openByDefault => 'Open by default';

  @override
  String get openInBrowser => 'Avaa selaimessa';

  @override
  String get openInstance => 'Avaa Instanssi';

  @override
  String get openLinksInExternalBrowser => 'Open Links in External Browser';

  @override
  String get openLinksInReaderMode => 'Open Links in Reader Mode';

  @override
  String get openSettings => 'Open Settings';

  @override
  String get overview => 'Yhteenveto';

  @override
  String get password => 'Salasana';

  @override
  String get pending => 'Pending';

  @override
  String get permissionDenied => 'Permission Denied';

  @override
  String get permissionDeniedMessage => 'Thunder requires some permissions in order to save this image which have been denied.';

  @override
  String get postBehaviourSettings => 'Postaukset';

  @override
  String get postBody => 'Postauksen Teksti';

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
  String get postLocked => 'Postaus lukittu. Vastauksia ei sallita.';

  @override
  String get postNSFW => 'Merkitse NSFW';

  @override
  String get postPreview => 'Show a preview of the post with the given settings';

  @override
  String get postSavedAsDraft => 'Postauksen luonnos tallennettu';

  @override
  String get postSwipeActions => 'Post Swipe Actions';

  @override
  String get postSwipeGesturesHint => 'Looking to use buttons instead? Change what buttons appear on post cards in general settings.';

  @override
  String get postTitle => 'Otsikko';

  @override
  String get postTitleFontScale => 'Post Title Font Scale';

  @override
  String get postTogglePreview => 'Kytke Esikatselu';

  @override
  String get postURL => 'URL';

  @override
  String get postUploadImageError => 'Kuvan lataus epäonnistui';

  @override
  String get postViewType => 'Post View Type';

  @override
  String get posts => 'Postaukset';

  @override
  String get preview => 'Preview';

  @override
  String profileAppliedSuccessfully(Object profile) {
    return '$profile applied successfully!';
  }

  @override
  String get profiles => 'Tilit';

  @override
  String get pureBlack => 'Pure Black';

  @override
  String get reachedTheBottom => 'Hmmm. It seems like you\'ve reached the bottom.';

  @override
  String get readAll => 'Read All';

  @override
  String get reduceAnimations => 'Reduce Animations';

  @override
  String get reducesAnimations => 'Vähentää Thunderissa käytettyjä animaatioita';

  @override
  String get refresh => 'Virkistä';

  @override
  String get refreshContent => 'Virkistä Sisältö';

  @override
  String get remove => 'Poista';

  @override
  String get removeAccount => 'Poista Tili';

  @override
  String get removeFromFavorites => 'Poista suosikeista';

  @override
  String get removeInstance => 'Poista instanssi';

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
  String get replyToPost => 'Luo Kommentti';

  @override
  String replyingTo(Object author) {
    return 'Vastataan käyttäjälle $author';
  }

  @override
  String get report => 'Ilmianna';

  @override
  String get reportComment => 'Ilmianna kommentti';

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
  String get restore => 'Palauta';

  @override
  String get restoredCommentFromDraft => 'Kommentti palautettu luonnoksesta';

  @override
  String get restoredPostFromDraft => 'Postaus palautettu luonnoksesta';

  @override
  String get retry => 'Retry';

  @override
  String get rightLongSwipe => 'Right Long Swipe';

  @override
  String get rightShortSwipe => 'Right Short Swipe';

  @override
  String get save => 'Tallenna';

  @override
  String get saveSettings => 'Tallenna asetukset';

  @override
  String get saved => 'Tallennettu';

  @override
  String get scaled => 'Skaalattu';

  @override
  String get scrapeMissingLinkPreviews => 'Scrape Missing Link Previews';

  @override
  String get scrapeMissingPreviews => 'Tämän käyttöönotto vaikuttaa suorituskykyyn.';

  @override
  String get screenReaderProfile => 'Screen Reader Profile';

  @override
  String get screenReaderProfileDescription => 'Optimizes Thunder for screen readers by reducing overall elements and removing potentially conflicting gestures.';

  @override
  String get search => 'Haku';

  @override
  String get searchByText => 'Hae tekstillä';

  @override
  String get searchByUrl => 'Hae URL-osoitteella';

  @override
  String get searchComments => 'Hae kommentteja';

  @override
  String searchCommentsFederatedWith(Object instance) {
    return 'Search for comments federated with $instance';
  }

  @override
  String searchCommunitiesFederatedWith(Object instance) {
    return 'Hae yhteisöjä jotka ovat federoituja $instance kanssa';
  }

  @override
  String searchInstance(Object instance) {
    return 'Hae $instance';
  }

  @override
  String get searchPostSearchType => 'Select Post Search Type';

  @override
  String searchPostsFederatedWith(Object instance) {
    return 'Search for posts federated with $instance';
  }

  @override
  String get searchTerm => 'Hakusana';

  @override
  String searchUsersFederatedWith(Object instance) {
    return 'Hae käyttäjiä jotka ovat federoituja $instance kanssa';
  }

  @override
  String get selectCommunity => 'Valitse yhteisö';

  @override
  String get selectFeedType => 'Valitse Julkaisulaji';

  @override
  String get selectLanguage => 'Valitse kieli';

  @override
  String get selectSearchType => 'Valitse Hakulaji';

  @override
  String serverErrorComments(Object message) {
    return 'Tapahtui palvelinvirhe haettaessa lisää kommentteja: $message';
  }

  @override
  String get setAction => 'Set Action';

  @override
  String get setLongPress => 'Aseta pitkän kosketuksen toiminnoksi';

  @override
  String get setShortPress => 'Aseta lyhyen kosketuksen toiminnoksi';

  @override
  String settingTypeNotSupported(Object settingType) {
    return 'Settings of type $settingType are not yet supported.';
  }

  @override
  String get settings => 'Asetukset';

  @override
  String get settingsFeedCards => 'These settings apply to the cards in the main feed, actions are always available when actually opening posts.';

  @override
  String get share => 'Jaa';

  @override
  String get shareLink => 'Jaa linkki';

  @override
  String get shareMedia => 'Jaa media';

  @override
  String get sharePost => 'Jaa postaus';

  @override
  String get showAll => 'Näytä kaikki';

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
  String get showLess => 'Näytä vähemmän';

  @override
  String get showMore => 'Näytä lisää';

  @override
  String get showPassword => 'Näytä Salasana';

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
  String get showReadPosts => 'Näytä luetut postaukset';

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
  String get sidebar => 'Sivupalkki';

  @override
  String get sidebarBottomNavDoubleTapDescription => 'Kaksoisnapauta alanavigointia avataksesi sivupalkin';

  @override
  String get sidebarBottomNavSwipeDescription => 'Avaa sivupalkki pyyhkäisemällä alanavigointia';

  @override
  String get small => 'Small';

  @override
  String get somethingWentWrong => 'Oi ei, jokin meni pieleen!';

  @override
  String get sortBy => 'Lajittelu';

  @override
  String get sortByTop => 'Sort by Top';

  @override
  String get sortOptions => 'Lajitteluasetukset';

  @override
  String get spoiler => 'Spoiler';

  @override
  String get submit => 'Lähetä';

  @override
  String get subscribe => 'Tilaa';

  @override
  String get subscribeToCommunity => 'Subscribe to Community';

  @override
  String get subscribed => 'Tilattu';

  @override
  String get subscriptions => 'Tilaukset';

  @override
  String get successfullyBlocked => 'Estetty.';

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
  String get suggestedTitle => 'Otsikkoehdotus';

  @override
  String get system => 'System';

  @override
  String get tabletMode => 'Tablet Mode (2-column view)';

  @override
  String get tapToExit => 'Paina takaisin kahdesti poistuaksesi';

  @override
  String get tappableAuthorCommunity => 'Tappable Authors & Communities';

  @override
  String get text => 'Teksti';

  @override
  String get theme => 'Theme';

  @override
  String get themeAccentColor => 'Accent Colors';

  @override
  String get theming => 'Theming';

  @override
  String get timeoutComments => 'Error: Timeout when attempting to fetch comments';

  @override
  String get timeoutErrorMessage => 'Latauksen aikana tapahtui aikakatkaisu.';

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
  String get top => 'Parhaat';

  @override
  String get topAll => 'Kaikkien Aikojen Ylimmät';

  @override
  String get topDay => 'Päivän Ylimmät';

  @override
  String get topHour => 'Tunnin Ylimmät';

  @override
  String get topMonth => 'Kuun Ylimmät';

  @override
  String get topNineMonths => 'Parhaat 9:n kuukauden ajalta';

  @override
  String get topSixHour => 'Kuuden Tunnin Ylimmät';

  @override
  String get topSixMonths => 'Parhaat 6:n kuukauden ajalta';

  @override
  String get topThreeMonths => 'Parhaat 3:n kuukauden ajalta';

  @override
  String get topTwelveHour => 'Kahdentoista Tunnin Ylimmät';

  @override
  String get topWeek => 'Viikon Ylimmät';

  @override
  String get topYear => 'Vuoden Ylimmät';

  @override
  String get totp => 'TOTP (valinnainen)';

  @override
  String get translationsMayNotBeComplete => 'Please note that the translations may not be complete';

  @override
  String get trendingCommunities => 'Kasvavat Yhteisöt';

  @override
  String get trySearchingFor => 'Try searching for...';

  @override
  String get unableToFindCommunity => 'Yhteisöä ei löytynyt';

  @override
  String unableToFindCommunityName(Object communityName) {
    return 'Unable to find community \'$communityName\'';
  }

  @override
  String get unableToFindInstance => 'Instanssia ei löytynyt';

  @override
  String get unableToFindLanguage => 'Unable to find language';

  @override
  String get unableToFindUser => 'Käyttäjää ei löytynyt';

  @override
  String get unableToLoadImage => 'Unable to load image';

  @override
  String unableToLoadImageFrom(Object domain) {
    return 'Unable to load image from $domain';
  }

  @override
  String unableToLoadInstance(Object instance) {
    return '$instance lataus epäonnistui';
  }

  @override
  String unableToLoadPostsFrominstance(Object instance) {
    return 'Postauksien lataaminen epäonnistui $instance';
  }

  @override
  String get unableToLoadReplies => 'Lisää vastauksia ei voitu ladata.';

  @override
  String unableToNavigateToInstance(Object instanceHost) {
    return 'Unable to navigate to $instanceHost. It may not be a valid Lemmy instance.';
  }

  @override
  String get unblockInstance => 'Unblock Instance';

  @override
  String get understandEnable => 'I Understand, Enable';

  @override
  String get unexpectedError => 'Odottamaton virhe';

  @override
  String get unsubscribe => 'Peru Tilaus';

  @override
  String get unsubscribeFromCommunity => 'Unsubscribe from Community';

  @override
  String get unsubscribePending => 'Peru Tilaus (tilaus vireillä)';

  @override
  String get unsubscribed => 'Tilaus Peruttu';

  @override
  String updateReleased(Object version) {
    return 'Päivitys on saatavilla: $version';
  }

  @override
  String get uploadImage => 'Lataa kuva';

  @override
  String get upvote => 'Upvote';

  @override
  String get uriNotSupported => 'Tämän tyyppistä linkkiä ei tueta tällä hetkellä.';

  @override
  String get url => 'URL';

  @override
  String get useAdvancedShareSheet => 'Use Advanced Share Sheet';

  @override
  String get useCompactView => 'Ota käyttöön pienille postauksille, poista käytöstä suuremmista.';

  @override
  String get useMaterialYouTheme => 'Use Material You Theme';

  @override
  String get useMaterialYouThemeDescription => 'Overrides the selected custom theme';

  @override
  String useSuggestedTitle(Object title) {
    return 'Käytä ehdotettua otsikkoa: $title';
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
  String get username => 'Käyttäjänimi';

  @override
  String get users => 'Käyttäjät';

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
