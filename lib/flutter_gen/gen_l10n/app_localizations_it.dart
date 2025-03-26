import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

/// The translations for Italian (`it`).
class AppLocalizationsIt extends AppLocalizations {
  AppLocalizationsIt([String locale = 'it']) : super(locale);

  @override
  String get about => 'Riguardo';

  @override
  String get accessibility => 'Accessibilità';

  @override
  String get accessibilityProfilesDescription => 'I profili di accessibilità consentono di applicare più impostazioni contemporaneamente per soddisfare un requisito di accessibilità specifico.';

  @override
  String account(num count) {
    return 'Account';
  }

  @override
  String get accountSettings => 'Impostazioni Account';

  @override
  String get actions => 'Azioni';

  @override
  String get active => 'Attivi';

  @override
  String get add => 'Aggiungi';

  @override
  String get addAccount => 'Aggiungi Account';

  @override
  String get addAccountToSeeProfile => 'Accedi a un account per vedere il tuo profilo.';

  @override
  String get addAnonymousInstance => 'Aggiungi Istanza Anonima';

  @override
  String get addKeywordFilter => 'Add Keyword';

  @override
  String get addToFavorites => 'Aggiungi ai preferiti';

  @override
  String get addedCommunityToSubscriptions => 'Comunità aggiunta alle iscrizioni';

  @override
  String get advanced => 'Advanced';

  @override
  String get all => 'All';

  @override
  String get allPosts => 'Tutti i post';

  @override
  String get allowOpenSupportedLinks => 'Permetti a questa app di aprire i link supportati.';

  @override
  String get alreadyPostedTo => 'Già pubblicato su';

  @override
  String andXMore(Object count) {
    return 'e $count in più';
  }

  @override
  String get animations => 'Animazioni';

  @override
  String get anonymous => 'Anonimo';

  @override
  String get appLanguage => 'App Language';

  @override
  String get appearance => 'Appearance';

  @override
  String get applied => 'Applicato';

  @override
  String get apply => 'Applica';

  @override
  String get back => 'Indietro';

  @override
  String get backButton => 'Pulsante \'indietro\'';

  @override
  String get backToTop => 'Ritorna all\'Inizio';

  @override
  String get backgroundCheckWarning => 'Note that notification checks will consume additional battery';

  @override
  String get base => 'Base';

  @override
  String get blockCommunity => 'Blocca Comunità';

  @override
  String get blockInstance => 'Blocca Istanza';

  @override
  String get blockUser => 'Blocca Utente';

  @override
  String get blockedCommunities => 'Comunità Bloccate';

  @override
  String get blockedInstances => 'Istanze Bloccate';

  @override
  String get blockedUsers => 'Utenti Bloccati';

  @override
  String browsingAnonymously(Object instance) {
    return 'Al momento stai navigando $instance in maniera anonima.';
  }

  @override
  String get cancel => 'Annulla';

  @override
  String get cannotReportOwnComment => 'Non è possibile segnalare un proprio commento.';

  @override
  String get cantBlockAdmin => 'Non è permesso bloccare un amministratore di un\'istanza.';

  @override
  String get cantBlockYourself => 'Non puoi bloccare te stesso.';

  @override
  String get cardView => 'Card View';

  @override
  String get cardViewDescription => 'Enable card view to adjust settings';

  @override
  String get cardViewSettings => 'Card View Settings';

  @override
  String get changeSort => 'Cambia Ordine';

  @override
  String clearCache(Object cacheSize) {
    return 'Clear Cache ($cacheSize)';
  }

  @override
  String get clearDatabase => 'Clear Database';

  @override
  String get clearPreferences => 'Clear Preferences';

  @override
  String get clearSearch => 'Elimina Ricerca';

  @override
  String get clearedCache => 'Cleared cache successfully.';

  @override
  String get clearedDatabase => 'Database locale svuotato. Riavvia Thunder per utilizzare i nuovi cambiamenti.';

  @override
  String get clearedUserPreferences => 'Rimosse tutte le preferenze dell\'utente';

  @override
  String get close => 'Chiudi';

  @override
  String get collapseCommentPreview => 'Collapse Comment Preview';

  @override
  String get collapseInformation => 'Collapse Information';

  @override
  String get collapseParentCommentBodyOnGesture => 'Hide Parent Comment when Collapsed';

  @override
  String get collapsePost => 'Riduci post';

  @override
  String get collapsePostPreview => 'Collapse Post Preview';

  @override
  String get collapseSpoiler => 'Collapse Spoiler';

  @override
  String get combineCommentScores => 'Combine Comment Scores';

  @override
  String get combineCommentScoresLabel => 'Combine Comment Scores';

  @override
  String get combineNavAndFab => 'Il pulsante flessibile delle azioni è disponibile tra i pulsanti di navigazione.';

  @override
  String get combineNavAndFabDescription => 'Floating Action Button will be shown between navigation buttons.';

  @override
  String get comment => 'Commenta';

  @override
  String get commentBehaviourSettings => 'Comments';

  @override
  String get commentFontScale => 'Comment Content Font Scale';

  @override
  String get commentPreview => 'Show a preview of the comments with the given settings';

  @override
  String get commentReported => 'Il commento è stato segnalato per un controllo.';

  @override
  String get commentSavedAsDraft => 'Commento salvato come bozza';

  @override
  String get commentShowUserInstance => 'Show User Instance';

  @override
  String get commentSortType => 'Tipo di Organizzazione dei Commenti';

  @override
  String get commentSwipeActions => 'Comment Swipe Actions';

  @override
  String get commentSwipeGesturesHint => 'Preferisci usare i pulsanti? Abilitali nella sezione \'commenti\' delle impostazioni generali.';

  @override
  String get comments => 'Commenti';

  @override
  String get communities => 'Comunità';

  @override
  String get community => 'Comunità';

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
  String get controversial => 'Controverso';

  @override
  String get copiedToClipboard => 'Copiato in memoria';

  @override
  String get copy => 'Copia';

  @override
  String get copyText => 'Copia Testo';

  @override
  String get couldNotDetermineCommentDelete => 'È stato impossibile determinare il post da dove eliminare il commento.';

  @override
  String get couldNotDeterminePostComment => 'È stato impossibile determinare il post nel cui lasciare il commento.';

  @override
  String get couldntCreateReport => 'Non è stato possibile inoltrare la tua segnalazione. Riprova più tardi per favore';

  @override
  String countSubscribers(Object count) {
    return '$count iscritti';
  }

  @override
  String countUsers(Object count) {
    return '$count users';
  }

  @override
  String get createAccount => 'Crea Account';

  @override
  String get createComment => 'Crea Commento';

  @override
  String get createNewCrossPost => 'Crea nuovo post incrociato';

  @override
  String get createPost => 'Crea Post';

  @override
  String get creator => 'Creator';

  @override
  String crossPostedFrom(Object postUrl) {
    return 'cross-posted from:  $postUrl';
  }

  @override
  String get crossPostedTo => 'Precedentemente pubblicato in';

  @override
  String get currentLongPress => 'Attualmente impostata come premuta lunga';

  @override
  String get currentSinglePress => 'Attualmente impostata come premuta breve';

  @override
  String get customizeSwipeActions => 'Personalizza azioni di scorrimento sullo schermo (seleziona per modificare)';

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
  String get delete => 'Elimina';

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
  String get dimReadPosts => 'I post già letti saranno oscurati';

  @override
  String get disable => 'Disable';

  @override
  String get dismissRead => 'Rimuovi \'letti\'';

  @override
  String get displayUserScore => 'Visualizza i Punteggi degli Utenti (Karma).';

  @override
  String get downloadingMedia => 'Download in corso per la condivisione…';

  @override
  String get downvote => 'Voto in giù';

  @override
  String get downvotesDisabled => 'I voti in giù sono disabilitati in questa istanza.';

  @override
  String get edit => 'Modifica';

  @override
  String get editComment => 'Modifica Commento';

  @override
  String get editPost => 'Edit Post';

  @override
  String get empty => 'Vuoto';

  @override
  String get emptyInbox => 'Svuota Inbox';

  @override
  String get emptyUri => 'Il link è vuoto. Per favore inserisci un link in formato valido per procedere.';

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
    return 'Non è stato possibile effettuare il download del file per la condivisione: $errorMessage';
  }

  @override
  String get exceptionProcessingUri => 'Si è verificato un errore durante il trattamento del link. Potrebbe non essere disponibile nella tua istanza.';

  @override
  String get expandCommentPreview => 'Expand Comment Preview';

  @override
  String get expandInformation => 'Expand Information';

  @override
  String get expandOptions => 'Espandi le opzioni';

  @override
  String get expandPost => 'Espandi post';

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
    return 'È stato impossibile bloccare: $errorMessage';
  }

  @override
  String failedToLoadBlocks(Object errorMessage) {
    return 'È stato impossibile caricare i blocchi: $errorMessage';
  }

  @override
  String failedToUnblock(Object errorMessage) {
    return 'È stato impossibile sbloccare: $errorMessage';
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
  String get fetchAccountError => 'Non è stato possibile stabilire l\'account';

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
  String get fullScreenNavigationSwipeDescription => 'Scorri ovunque per tornare indietro quando le azioni da sinistra-a-destra sono disabilitate';

  @override
  String get fullscreenSwipeGestures => 'Fullscreen Swipe Gestures';

  @override
  String get general => 'Generale';

  @override
  String get generalSettings => 'General Settings';

  @override
  String get gestures => 'Movimenti';

  @override
  String get gettingStarted => 'Iniziare';

  @override
  String get hideNsfwPostsFromFeed => 'Hide NSFW Posts from Feed';

  @override
  String get hideNsfwPreviews => 'Hide NSFW Previews';

  @override
  String get hidePassword => 'Nascondi Password';

  @override
  String get hideTopBarOnScroll => 'Hide Top Bar on Scroll';

  @override
  String get hot => 'Popolare';

  @override
  String get image => 'Immagine';

  @override
  String get importExportSettings => 'Importa/Esporta Impostazioni';

  @override
  String get importSettings => 'Importa Impostazioni';

  @override
  String inReplyTo(Object community, Object post) {
    return 'In risposta a $post da $community';
  }

  @override
  String get inbox => 'In arrivo';

  @override
  String get includeCommunity => 'Includi Comunità';

  @override
  String get includeExternalLink => 'Includi Link Esterni';

  @override
  String get includeImage => 'Includi Immagine';

  @override
  String get includePostLink => 'Includi Link del Post';

  @override
  String get includeText => 'Includi Testo';

  @override
  String get includeTitle => 'Includi Titolo';

  @override
  String get information => 'Information';

  @override
  String get instance => 'Istanza';

  @override
  String instanceHasAlreadyBenAdded(Object instance) {
    return '$instance è stata già aggiunta.';
  }

  @override
  String get internetOrInstanceIssues => 'Potresti non essere connesso all\'Internet oppure la tua istanza potrebbe non essere disponibile in questo momento.';

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
  String get linkActions => 'Azioni per il Link';

  @override
  String get linksBehaviourSettings => 'Links';

  @override
  String loadMorePlural(Object count) {
    return 'Carica altre $count risposte in più…';
  }

  @override
  String loadMoreSingular(Object count) {
    return 'Carica $count risposta in più…';
  }

  @override
  String get local => 'Local';

  @override
  String get localPosts => 'Post della Rete Locale';

  @override
  String get logOut => 'Log Out';

  @override
  String get login => 'Accesso';

  @override
  String loginFailed(Object errorMessage) {
    return 'Non è stato possibile effettuare il log in. Prova di nuovo per favore:($errorMessage)';
  }

  @override
  String get loginSucceeded => 'Log in effettuato.';

  @override
  String get loginToPerformAction => 'Devi aver effettuato l\'accesso per completare questa operazione.';

  @override
  String get loginToSeeInbox => 'Effettua l\'accesso per vedere il tuo Inbox';

  @override
  String get malformedUri => 'Il link che hai fornito era in un formato non supportato. Per favore assicurati che il link sia valido.';

  @override
  String get manageAccounts => 'Gestisci Profili';

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
  String get missingErrorMessage => 'Nessun messaggio di errore disponibile';

  @override
  String get moderatedCommunities => 'Moderated Communities';

  @override
  String get mostComments => 'La Maggioranza dei Commenti';

  @override
  String get mustBeLoggedInComment => 'Devi avere effettuato il log in per poter commentare';

  @override
  String get mustBeLoggedInPost => 'Devi avere effettuato il log in per poter creare un post';

  @override
  String get navbarDoubleTapGestures => 'Navbar Double Tap Gestures';

  @override
  String get navbarSwipeGestures => 'Navbar Swipe Gestures';

  @override
  String get navigateDown => 'Vai al prossimo commento';

  @override
  String get navigateUp => 'Commento precedente';

  @override
  String get navigation => 'Navigazione';

  @override
  String get nestedCommentIndicatorColor => 'Nested Comment Indicator Color';

  @override
  String get nestedCommentIndicatorStyle => 'Nested Comment Indicator Style';

  @override
  String get newComments => 'Commenti Nuovi';

  @override
  String get newPost => 'New Post';

  @override
  String get new_ => 'Nuovi';

  @override
  String get noComments => 'Oh. Non ci sono commenti.';

  @override
  String get noCommentsFound => 'Nessun commento trovato.';

  @override
  String get noCommunitiesFound => 'Nessuna comunità trovata';

  @override
  String get noCommunityBlocks => 'Nessuna comunità bloccata.';

  @override
  String get noFavoritedCommunities => 'No favorited communities';

  @override
  String get noInstanceBlocks => 'Nessun istanza bloccata.';

  @override
  String get noKeywordFilters => 'No keyword filters added';

  @override
  String get noLanguage => 'No language';

  @override
  String get noPosts => 'Nessun post trovato';

  @override
  String get noPostsFound => 'Nessun post trovato';

  @override
  String get noResultsFound => 'No results found.';

  @override
  String get noSubscriptions => 'No Subscriptions';

  @override
  String get noUserBlocks => 'Nessun utente bloccato.';

  @override
  String get noUsersFound => 'Nessun utente trovato';

  @override
  String notValidLemmyInstance(Object instance) {
    return '$instance non sembra essere un\'istanza valida di Lemmy';
  }

  @override
  String get notValidUrl => 'URL invalido';

  @override
  String get nothingToShare => 'Non c\'è niente da condividere';

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
  String get old => 'Vecchi';

  @override
  String get on => 'on';

  @override
  String get onlyModsCanPostInCommunity => 'Solo i moderatori posso postare in questa comunità';

  @override
  String get open => 'Apri';

  @override
  String get openAccountSwitcher => 'Apri interruttore utenti';

  @override
  String get openByDefault => 'Apri per default';

  @override
  String get openInBrowser => 'Apri nel Browser';

  @override
  String get openInstance => 'Apri Istanza';

  @override
  String get openLinksInExternalBrowser => 'Open Links in External Browser';

  @override
  String get openLinksInReaderMode => 'Open Links in Reader Mode';

  @override
  String get openSettings => 'Open Settings';

  @override
  String get overview => 'Panoramica';

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
  String get postBody => 'Pubblica Testo';

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
  String get postLocked => 'Il post è bloccato. Non è permesso rispondere.';

  @override
  String get postNSFW => 'Segna come NSFW';

  @override
  String get postPreview => 'Show a preview of the post with the given settings';

  @override
  String get postSavedAsDraft => 'Post salvato come bozza';

  @override
  String get postSwipeActions => 'Post Swipe Actions';

  @override
  String get postSwipeGesturesHint => 'Preferisci usare i pulsanti? Cambia quali pulsanti compaiono nelle schermate dei post nelle impostazioni generali.';

  @override
  String get postTitle => 'Titolo';

  @override
  String get postTitleFontScale => 'Post Title Font Scale';

  @override
  String get postTogglePreview => 'Aziona Anteprima';

  @override
  String get postURL => 'URL';

  @override
  String get postUploadImageError => 'Impossibile caricare l\'immagine';

  @override
  String get postViewType => 'Post View Type';

  @override
  String get posts => 'Post';

  @override
  String get preview => 'Anteprima';

  @override
  String profileAppliedSuccessfully(Object profile) {
    return '$profile applicato con successo!';
  }

  @override
  String get profiles => 'Profili';

  @override
  String get pureBlack => 'Pure Black';

  @override
  String get reachedTheBottom => 'Mmh. Sembra che hai raggiunto la fine.';

  @override
  String get readAll => 'Leggi Tutto';

  @override
  String get reduceAnimations => 'Reduce Animations';

  @override
  String get reducesAnimations => 'Limita le animazioni usate su Thunder';

  @override
  String get refresh => 'Aggiorna';

  @override
  String get refreshContent => 'Aggiorna Contenuti';

  @override
  String get remove => 'Rimuovi';

  @override
  String get removeAccount => 'Elimina Account';

  @override
  String get removeFromFavorites => 'Remove from favorites';

  @override
  String get removeInstance => 'Elimina istanza';

  @override
  String removeKeyword(Object keyword) {
    return 'Remove \"$keyword\"?';
  }

  @override
  String get removeKeywordFilter => 'Remove Keyword';

  @override
  String get removedCommunityFromSubscriptions => 'Rimosso dalla comunità';

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
  String get replyNotSupported => 'Rispondere da questa schermata non è ancora supportato';

  @override
  String get replyToPost => 'Rispondi al Post';

  @override
  String replyingTo(Object author) {
    return 'Stai rispondendo a $author';
  }

  @override
  String get report => 'Segnala';

  @override
  String get reportComment => 'Segnala Commento';

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
  String get restore => 'Ripristina';

  @override
  String get restoredCommentFromDraft => 'Commento recuperato dalle bozze';

  @override
  String get restoredPostFromDraft => 'Post recuperato dalle bozze';

  @override
  String get retry => 'Riprova';

  @override
  String get rightLongSwipe => 'Right Long Swipe';

  @override
  String get rightShortSwipe => 'Right Short Swipe';

  @override
  String get save => 'Salva';

  @override
  String get saveSettings => 'Salva le Impostazioni';

  @override
  String get saved => 'Salvato';

  @override
  String get scaled => 'Scala';

  @override
  String get scrapeMissingLinkPreviews => 'Scrape Missing Link Previews';

  @override
  String get scrapeMissingPreviews => 'Questa abilitazione avrà un impatto sulla performance.';

  @override
  String get screenReaderProfile => 'Profilo del Lettore di Schermo';

  @override
  String get screenReaderProfileDescription => 'Ottimizza Thunder per lettori di schermo tramite una riduzione generale degli elementi visualizzati e la rimozione di movimenti contrastanti.';

  @override
  String get search => 'Cerca';

  @override
  String get searchByText => 'Cerca per testo';

  @override
  String get searchByUrl => 'Cerca per URL';

  @override
  String get searchComments => 'Search Comments';

  @override
  String searchCommentsFederatedWith(Object instance) {
    return 'Cerca commenti associati con $instance';
  }

  @override
  String searchCommunitiesFederatedWith(Object instance) {
    return 'Cerca comunità associate con $instance';
  }

  @override
  String searchInstance(Object instance) {
    return 'Cerca $instance';
  }

  @override
  String get searchPostSearchType => 'Seleziona Tipo di Ricerca di Post';

  @override
  String searchPostsFederatedWith(Object instance) {
    return 'Cerca post associati con $instance';
  }

  @override
  String get searchTerm => 'Search term';

  @override
  String searchUsersFederatedWith(Object instance) {
    return 'Cerca utenti associati con $instance';
  }

  @override
  String get selectCommunity => 'Seleziona una comunità';

  @override
  String get selectFeedType => 'Seleziona Tipo di Feed';

  @override
  String get selectLanguage => 'Select language';

  @override
  String get selectSearchType => 'Seleziona Tipo di Ricerca';

  @override
  String serverErrorComments(Object message) {
    return 'Si è verificato un errore del server durante il caricamento di ulteriori commenti: $message';
  }

  @override
  String get setAction => 'Set Action';

  @override
  String get setLongPress => 'Imposta come azione a premuta lunga';

  @override
  String get setShortPress => 'Imposta come azione a premuta breve';

  @override
  String settingTypeNotSupported(Object settingType) {
    return 'Impostazioni per il tipo $settingType non sono ancora supportate.';
  }

  @override
  String get settings => 'Impostazioni';

  @override
  String get settingsFeedCards => 'Queste impostazioni sono applicabili alle tessere della feed principale, ulteriori azioni sono disponibili una volta aperto il post.';

  @override
  String get share => 'Condividi';

  @override
  String get shareLink => 'Condividi il Link';

  @override
  String get shareMedia => 'Condividi Materiale audio/video';

  @override
  String get sharePost => 'Condividi Post';

  @override
  String get showAll => 'Mostra Tutto';

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
  String get showLess => 'Mostra di meno';

  @override
  String get showMore => 'Mostra successivi';

  @override
  String get showPassword => 'Mostra Password';

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
  String get sidebar => 'Barra Laterale';

  @override
  String get sidebarBottomNavDoubleTapDescription => 'Tocca 2 volte la barra inferiore per aprire la barra laterale';

  @override
  String get sidebarBottomNavSwipeDescription => 'Scorri la barra inferiore per aprire la barra laterale';

  @override
  String get small => 'Small';

  @override
  String get somethingWentWrong => 'Ops, qualcosa è andato storto!';

  @override
  String get sortBy => 'Ordina Per';

  @override
  String get sortByTop => 'Ordina dal Migliore';

  @override
  String get sortOptions => 'Opzioni di Visualizzazione';

  @override
  String get spoiler => 'Spoiler';

  @override
  String get submit => 'Invia';

  @override
  String get subscribe => 'Iscriviti';

  @override
  String get subscribeToCommunity => 'Subscribe to Community';

  @override
  String get subscribed => 'Iscritto';

  @override
  String get subscriptions => 'Iscrizioni';

  @override
  String get successfullyBlocked => 'Bloccato.';

  @override
  String successfullyBlockedCommunity(Object communityName) {
    return '$communityName bloccato/a';
  }

  @override
  String get successfullyUnblocked => 'Sbloccato.';

  @override
  String successfullyUnblockedCommunity(Object communityName) {
    return '$communityName sbloccato/a';
  }

  @override
  String get suggestedTitle => 'Suggested title';

  @override
  String get system => 'System';

  @override
  String get tabletMode => 'Tablet Mode (2-column view)';

  @override
  String get tapToExit => 'Premi \'indietro\' due volte per uscire';

  @override
  String get tappableAuthorCommunity => 'Tappable Authors & Communities';

  @override
  String get text => 'Testo';

  @override
  String get theme => 'Theme';

  @override
  String get themeAccentColor => 'Accent Colors';

  @override
  String get theming => 'Theming';

  @override
  String get timeoutComments => 'Errore: si è verificato un time out durante il caricamento dei commenti';

  @override
  String get timeoutErrorMessage => 'Si è verificato un time out attendendo una risposta.';

  @override
  String get timeoutSaveComment => 'Errore: si è verificato un time out durante il salvataggio del commento';

  @override
  String get timeoutSavingPost => 'Errore: si è verificato un time out durante il salvataggio del post.';

  @override
  String get timeoutUpvoteComment => 'Errore: si è verificato un time out durante il voto del commento';

  @override
  String get timeoutVotingPost => 'Errore: si è verificato un time out durante il voto del post.';

  @override
  String get toggelRead => 'Interruttore Lettura';

  @override
  String get top => 'Migliori';

  @override
  String get topAll => 'Migliori di Sempre';

  @override
  String get topDay => 'Migliori di Oggi';

  @override
  String get topHour => 'Migliori dell\'Ultima Ora';

  @override
  String get topMonth => 'Migliori del Mese';

  @override
  String get topNineMonths => 'Top in Past 9 Months';

  @override
  String get topSixHour => 'Migliori delle Ultime 6 Ore';

  @override
  String get topSixMonths => 'Top in Past 6 Months';

  @override
  String get topThreeMonths => 'Top in Past 3 Months';

  @override
  String get topTwelveHour => 'Migliori delle Ultime 12 Ore';

  @override
  String get topWeek => 'Migliori della Settimana';

  @override
  String get topYear => 'Migliori dell\'Anno';

  @override
  String get totp => 'TOTP - Password Monouso a Tempo (facoltativo)';

  @override
  String get translationsMayNotBeComplete => 'Please note that the translations may not be complete';

  @override
  String get trendingCommunities => 'Comunità di Tendenza';

  @override
  String get trySearchingFor => 'Try searching for...';

  @override
  String get unableToFindCommunity => 'Impossibile trovare la comunità';

  @override
  String unableToFindCommunityName(Object communityName) {
    return 'Unable to find community \'$communityName\'';
  }

  @override
  String get unableToFindInstance => 'Impossibile trovare l\'istanza';

  @override
  String get unableToFindLanguage => 'Unable to find language';

  @override
  String get unableToFindUser => 'Impossibile trovare l\'utente';

  @override
  String get unableToLoadImage => 'Unable to load image';

  @override
  String unableToLoadImageFrom(Object domain) {
    return 'Unable to load image from $domain';
  }

  @override
  String unableToLoadInstance(Object instance) {
    return 'Impossibile caricare $instance';
  }

  @override
  String unableToLoadPostsFrominstance(Object instance) {
    return 'Impossibile caricare i post da $instance';
  }

  @override
  String get unableToLoadReplies => 'Impossibile caricare ulteriori commenti.';

  @override
  String unableToNavigateToInstance(Object instanceHost) {
    return 'Unable to navigate to $instanceHost. It may not be a valid Lemmy instance.';
  }

  @override
  String get unblockInstance => 'Unblock Instance';

  @override
  String get understandEnable => 'I Understand, Enable';

  @override
  String get unexpectedError => 'Errore Inaspettato';

  @override
  String get unsubscribe => 'Cancella iscrizione';

  @override
  String get unsubscribeFromCommunity => 'Unsubscribe from Community';

  @override
  String get unsubscribePending => 'Cancellare iscrizione (iscrizione in corso)';

  @override
  String get unsubscribed => 'Iscrizione cancellata';

  @override
  String updateReleased(Object version) {
    return 'Aggiornamento pubblicato: $version';
  }

  @override
  String get uploadImage => 'Carica l\'immagine';

  @override
  String get upvote => 'Voto in su';

  @override
  String get uriNotSupported => 'Al momento questo tipo di link non è supportato.';

  @override
  String get url => 'URL';

  @override
  String get useAdvancedShareSheet => 'Use Advanced Share Sheet';

  @override
  String get useCompactView => 'Abilita per post piccoli, disabilita per post più grandi.';

  @override
  String get useMaterialYouTheme => 'Use Material You Theme';

  @override
  String get useMaterialYouThemeDescription => 'Overrides the selected custom theme';

  @override
  String useSuggestedTitle(Object title) {
    return 'Usa il titolo suggerito: $title';
  }

  @override
  String get userFormat => 'User Format';

  @override
  String get userNotLoggedIn => 'L\'utente non ha effettuato il log in';

  @override
  String get userProfiles => 'Profili dell\'Utente';

  @override
  String get userSettingDescription => 'These settings sync with your Lemmy account and are only applied on a per-account basis.';

  @override
  String get username => 'Nome utente';

  @override
  String get users => 'Utenti';

  @override
  String get viewAllComments => 'Vedi tutti i commenti.';

  @override
  String get visitCommunity => 'Visita Comunità';

  @override
  String get visitInstance => 'Visita Istanza';

  @override
  String get visitUserProfile => 'Visita Profilo dell\'Utente';

  @override
  String get warning => 'Warning';

  @override
  String xDownvotes(Object x) {
    return '$x voti in giù';
  }

  @override
  String xScore(Object x) {
    return '$x score';
  }

  @override
  String xUpvotes(Object x) {
    return '$x voti in su';
  }
}
