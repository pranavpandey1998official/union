import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

/// The translations for French (`fr`).
class AppLocalizationsFr extends AppLocalizations {
  AppLocalizationsFr([String locale = 'fr']) : super(locale);

  @override
  String get about => 'À propos';

  @override
  String get accessibility => 'Accessibilité';

  @override
  String get accessibilityProfilesDescription => 'Les profils d\'accessibilité permettent d\'appliquer plusieurs paramètres à la fois pour répondre à une exigence d\'accessibilité particulière.';

  @override
  String account(num count) {
    return 'Compte';
  }

  @override
  String get accountSettings => 'Paramètres de compte';

  @override
  String get actions => 'Actions';

  @override
  String get active => 'Active';

  @override
  String get add => 'Ajouter';

  @override
  String get addAccount => 'Ajouter compte';

  @override
  String get addAccountToSeeProfile => 'Connectez-vous pour voir votre compte.';

  @override
  String get addAnonymousInstance => 'Ajouter une instance anonyme';

  @override
  String get addKeywordFilter => 'Ajouter un mot-clef';

  @override
  String get addToFavorites => 'Ajouter au favoris';

  @override
  String get addedCommunityToSubscriptions => 'S\'abonner à la communauté';

  @override
  String get advanced => 'Avancé';

  @override
  String get all => 'Tout';

  @override
  String get allPosts => 'Tous les messages';

  @override
  String get allowOpenSupportedLinks => 'Autoriser l\'application à ouvrir les liens compatibles.';

  @override
  String get alreadyPostedTo => 'Déjà posté dans';

  @override
  String andXMore(Object count) {
    return 'et $count plus';
  }

  @override
  String get animations => 'Animations';

  @override
  String get anonymous => 'Anonyme';

  @override
  String get appLanguage => 'Langue de l\'application';

  @override
  String get appearance => 'Apparence';

  @override
  String get applied => 'Appliqué';

  @override
  String get apply => 'Appliquer';

  @override
  String get back => 'Retour';

  @override
  String get backButton => 'Bouton retour';

  @override
  String get backToTop => 'Retour en haut';

  @override
  String get backgroundCheckWarning => 'Note that notification checks will consume additional battery';

  @override
  String get base => 'Base';

  @override
  String get blockCommunity => 'Bloquer la communauté';

  @override
  String get blockInstance => 'Bloquer l\'instance';

  @override
  String get blockUser => 'Bloquer l\'utilisateur';

  @override
  String get blockedCommunities => 'Communautés bloquées';

  @override
  String get blockedInstances => 'Instances bloquées';

  @override
  String get blockedUsers => 'Utilisateurs bloqués';

  @override
  String browsingAnonymously(Object instance) {
    return 'Vous parcourez $instance anonymement.';
  }

  @override
  String get cancel => 'Annuler';

  @override
  String get cannotReportOwnComment => 'Vous ne pouvez pas signaler votre propre message.';

  @override
  String get cantBlockAdmin => 'Vous ne pouvez pas bloquer un administrateur d\'instance.';

  @override
  String get cantBlockYourself => 'Vous ne pouvez pas vous bloquer vous-même.';

  @override
  String get cardView => 'Carte de visite';

  @override
  String get cardViewDescription => 'Activer l\'affichage des cartes pour ajuster les paramètres';

  @override
  String get cardViewSettings => 'Configuration de l\'affichage des cartes';

  @override
  String get changeSort => 'Changer l\'ordre';

  @override
  String clearCache(Object cacheSize) {
    return 'Clear Cache ($cacheSize)';
  }

  @override
  String get clearDatabase => 'Effacer la base de données';

  @override
  String get clearPreferences => 'Effacer les préférences';

  @override
  String get clearSearch => 'Effacer la recherche';

  @override
  String get clearedCache => 'Cleared cache successfully.';

  @override
  String get clearedDatabase => 'La base de données locale a été effacée. Redémarrer Thunder pour que les nouvelles modifications soient prises en compte.';

  @override
  String get clearedUserPreferences => 'Effacer toutes les préférences utilisateur';

  @override
  String get close => 'Fermer';

  @override
  String get collapseCommentPreview => 'Réduire l\'aperçu des commentaires';

  @override
  String get collapseInformation => 'Réduire l\'information';

  @override
  String get collapseParentCommentBodyOnGesture => 'Hide Parent Comment when Collapsed';

  @override
  String get collapsePost => 'Réduire la publication';

  @override
  String get collapsePostPreview => 'Réduire l\'aperçu de publication';

  @override
  String get collapseSpoiler => 'Minimiser la révélation';

  @override
  String get combineCommentScores => 'Combine Comment Scores';

  @override
  String get combineCommentScoresLabel => 'Combiner les scores de commentaires';

  @override
  String get combineNavAndFab => 'Le bouton d\'action flottant s\'affiche entre les boutons de navigation.';

  @override
  String get combineNavAndFabDescription => 'Floating Action Button will be shown between navigation buttons.';

  @override
  String get comment => 'Commentaire';

  @override
  String get commentBehaviourSettings => 'Commentaires';

  @override
  String get commentFontScale => 'Comment Content Font Scale';

  @override
  String get commentPreview => 'Montrer un aperçu des commentaires avec la configuration';

  @override
  String get commentReported => 'Le commentaire a été signalé pour examen.';

  @override
  String get commentSavedAsDraft => 'Commentaire sauvegarder comme brouillon';

  @override
  String get commentShowUserInstance => 'Afficher l\'instance de l\'utilisateur';

  @override
  String get commentSortType => 'Type d\'ordre des commentaires';

  @override
  String get commentSwipeActions => 'Comment Swipe Actions';

  @override
  String get commentSwipeGesturesHint => 'Vous souhaitez utiliser les boutons ? Activez-les dans la section des commentaires des paramètres généraux.';

  @override
  String get comments => 'Commentaires';

  @override
  String get communities => 'Communautés';

  @override
  String get community => 'Communauté';

  @override
  String get communityFormat => 'Format de la communauté';

  @override
  String get compactView => 'Vue compacte';

  @override
  String get compactViewDescription => 'Appliquer la vue compacte pour modifier les paramètres';

  @override
  String get compactViewSettings => 'Configurations de la vue compacte';

  @override
  String get condensed => 'Condensé';

  @override
  String get confirm => 'Confirm';

  @override
  String get confirmLogOutBody => 'Êtes-vous sûr de vouloir vous déconnecter ?';

  @override
  String get confirmLogOutTitle => 'Déconnecter ?';

  @override
  String get confirmMarkAllAsReadBody => 'Êtes-vous sûr de vouloir marquer tous les messages comme lu ?';

  @override
  String get confirmMarkAllAsReadTitle => 'Tout marquer comme lu ?';

  @override
  String get confirmResetCommentPreferences => 'Ceci va réinitialiser toutes les préférences des commentaires. Voulez-vous continuer ?';

  @override
  String get confirmResetPostPreferences => 'Cette opération réinitialisera toutes les préférences de publication. Voulez-vous continuer ?';

  @override
  String get controversial => 'Controversé';

  @override
  String get copiedToClipboard => 'Copié dans le presse-papiers';

  @override
  String get copy => 'Copier';

  @override
  String get copyText => 'Copier le texte';

  @override
  String get couldNotDetermineCommentDelete => 'Erreur : Impossible de déterminer la publication à supprimer.';

  @override
  String get couldNotDeterminePostComment => 'Erreur : Impossible de déterminer la publication à commenter.';

  @override
  String get couldntCreateReport => 'Votre signalement de commentaire n\'a pas pu être transmis pour le moment. Veuillez réessayer plus tard';

  @override
  String countSubscribers(Object count) {
    return '$count abonnés';
  }

  @override
  String countUsers(Object count) {
    return '$count utilisateurs';
  }

  @override
  String get createAccount => 'Créer un compte';

  @override
  String get createComment => 'Créer un commentaire';

  @override
  String get createNewCrossPost => 'Créer une nouvelle publication croisée';

  @override
  String get createPost => 'Créer publication';

  @override
  String get creator => 'Créateur';

  @override
  String crossPostedFrom(Object postUrl) {
    return 'cross-posted from:  $postUrl';
  }

  @override
  String get crossPostedTo => 'Publication croisée sur';

  @override
  String get currentLongPress => 'Actuellement défini comme appui long';

  @override
  String get currentSinglePress => 'Actuellement défini comme appui simple';

  @override
  String get customizeSwipeActions => 'Personnalisation des actions de balayage (touchez pour modifier)';

  @override
  String get dangerZone => 'Danger Zone';

  @override
  String get dark => 'Dark';

  @override
  String get debug => 'Déboguer';

  @override
  String get debugDescription => 'Les paramètres de débogage suivants ne doivent être utilisés qu\'à des fins de dépannage.';

  @override
  String get defaultCommentSortType => 'Default Comment Sort Type';

  @override
  String get defaultFeedSortType => 'Default Feed Sort Type';

  @override
  String get defaultFeedType => 'Default Feed Type';

  @override
  String get delete => 'Supprimer';

  @override
  String get deleteAccount => 'Delete Account';

  @override
  String get deleteAccountDescription => 'To permanently delete your account, you will be redirected to your instance site. \n\nAre you sure you want to continue?';

  @override
  String get deleteLocalDatabase => 'Supprimer la base de donnée locale';

  @override
  String get deleteLocalDatabaseDescription => 'Cette action va supprimer la base de donnée locale et vous déconnecter de tous vos comptes\n\nVoulez-vous continuer ?';

  @override
  String get deleteLocalPreferences => 'Supprimer les préférences locales';

  @override
  String get deleteLocalPreferencesDescription => 'Cette opération effacera toutes vos préférences d\'utilisateur et tous les paramètres de Thunder.\n\nVoulez-vous continuer ?';

  @override
  String get dimReadPosts => 'Les publications lues seront grisées';

  @override
  String get disable => 'Disable';

  @override
  String get dismissRead => 'Rejeter la lecture';

  @override
  String get displayUserScore => 'Afficher les scores utilisateur (karma).';

  @override
  String get downloadingMedia => 'Téléchargement de fichier multimédia à partager…';

  @override
  String get downvote => 'Vote négatif';

  @override
  String get downvotesDisabled => 'Les votes négatifs sont désactivés sur cette instance.';

  @override
  String get edit => 'Éditer';

  @override
  String get editComment => 'Éditer commentaire';

  @override
  String get editPost => 'Éditer la publication';

  @override
  String get empty => 'Vide';

  @override
  String get emptyInbox => 'Boite de réception vide';

  @override
  String get emptyUri => 'Le lien est vide. Veuillez fournir un lien dynamique valide pour continuer.';

  @override
  String get enableCommentNavigation => 'Enable Comment Navigation';

  @override
  String get enableFeedFab => 'Activer le bouton flottant sur les fils';

  @override
  String get enableFloatingButtonOnFeeds => 'Enable Floating Button On Feeds';

  @override
  String get enableFloatingButtonOnPosts => 'Enable Floating Button On Posts';

  @override
  String get enableInboxNotifications => 'Enable Inbox Notifications (Experimental)';

  @override
  String get enablePostFab => 'Activer le bouton flottant dans les publications';

  @override
  String get endSearch => 'Terminer la recherche';

  @override
  String errorDownloadingMedia(Object errorMessage) {
    return 'Impossible de télécharger le fichier multimédia à partager : $errorMessage';
  }

  @override
  String get exceptionProcessingUri => 'Une erreur s\'est produite lors du traitement du lien. Il se peut qu\'il ne soit pas disponible sur votre instance.';

  @override
  String get expandCommentPreview => 'Développer l\'aperçu des commentaires';

  @override
  String get expandInformation => 'Maximiser l\'information';

  @override
  String get expandOptions => 'Développer les options';

  @override
  String get expandPost => 'Développer la publication';

  @override
  String get expandPostPreview => 'Développer l\'aperçu de publication';

  @override
  String get expandSpoiler => 'Maximiser la révélation';

  @override
  String get expanded => 'Développer';

  @override
  String get extraLarge => 'Extra Large';

  @override
  String failedToBlock(Object errorMessage) {
    return 'Échec du blocage : $errorMessage';
  }

  @override
  String failedToLoadBlocks(Object errorMessage) {
    return 'Impossible de charger les blocs : $errorMessage';
  }

  @override
  String failedToUnblock(Object errorMessage) {
    return 'Impossible de débloquer : $errorMessage';
  }

  @override
  String get favorites => 'Favoris';

  @override
  String get feed => 'Fil';

  @override
  String get feedBehaviourSettings => 'Fil';

  @override
  String get feedTypeAndSorts => 'Type de fil et tri par défaut';

  @override
  String get fetchAccountError => 'Impossible de déterminer le compte';

  @override
  String filteringBy(Object entity) {
    return 'Filtrer par $entity';
  }

  @override
  String get filters => 'Filtres';

  @override
  String get floatingActionButton => 'Bouton d\'action flottant';

  @override
  String get floatingActionButtonInformation => 'Thunder dispose d\'une expérience FAB entièrement personnalisable qui prend en charge quelques gestes.\n- Glissez vers le haut pour révéler des actions FAB supplémentaires\n- Balayez vers le bas ou vers le haut pour cacher ou révéler le FAB.\n\nPour personnaliser les actions principales et secondaires du FAB, appuyez longuement sur l\'une des actions ci-dessous.';

  @override
  String get floatingActionButtonLongPressDescription => 'Indique l\'action d\'appui long de la FAB.';

  @override
  String get floatingActionButtonSinglePressDescription => 'Indique l\'action d\'appui simple de la FAB.';

  @override
  String get fonts => 'Fonts';

  @override
  String get fullScreenNavigationSwipeDescription => 'Balayer n\'importe où pour revenir en arrière lorsque les gestes de gauche à droite sont désactivés';

  @override
  String get fullscreenSwipeGestures => 'Fullscreen Swipe Gestures';

  @override
  String get general => 'Général';

  @override
  String get generalSettings => 'Paramètres généraux';

  @override
  String get gestures => 'Gestes';

  @override
  String get gettingStarted => 'Pour commencer';

  @override
  String get hideNsfwPostsFromFeed => 'Hide NSFW Posts from Feed';

  @override
  String get hideNsfwPreviews => 'Hide NSFW Previews';

  @override
  String get hidePassword => 'Masquer le mot de passe';

  @override
  String get hideTopBarOnScroll => 'Hide Top Bar on Scroll';

  @override
  String get hot => 'Tendances';

  @override
  String get image => 'Image';

  @override
  String get importExportSettings => 'Paramètres d\'import/export';

  @override
  String get importSettings => 'Paramètres d\'import';

  @override
  String inReplyTo(Object community, Object post) {
    return 'En réponse à $post dans $community';
  }

  @override
  String get inbox => 'Boite de réception';

  @override
  String get includeCommunity => 'Inclure la communauté';

  @override
  String get includeExternalLink => 'Inclure lien externe';

  @override
  String get includeImage => 'Inclure image';

  @override
  String get includePostLink => 'Inclure un lien vers la publication';

  @override
  String get includeText => 'Inclure texte';

  @override
  String get includeTitle => 'Inclure le titre';

  @override
  String get information => 'Information';

  @override
  String get instance => 'Instance';

  @override
  String instanceHasAlreadyBenAdded(Object instance) {
    return '$instance a déjà été ajouté.';
  }

  @override
  String get internetOrInstanceIssues => 'Il se peut que vous ne soyez pas connecté à internet ou que votre instance soit actuellement indisponible.';

  @override
  String get keywordFilterDescription => 'Filtre les publications contenant des mots-clés dans le titre ou le corps du message';

  @override
  String get keywordFilters => 'Filtres de mots-clés';

  @override
  String get language => 'Langue';

  @override
  String get languageNotAllowed => 'La communauté dans laquelle vous publiez ne permet pas la publication de messages dans la langue que vous avez sélectionnée. Essayez une autre langue.';

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
      other: 'Lien',
      one: 'Lien',
      zero: 'Lien',
    );
    return '$_temp0 ';
  }

  @override
  String get linkActions => 'Actions de lien';

  @override
  String get linksBehaviourSettings => 'Liens';

  @override
  String loadMorePlural(Object count) {
    return 'Charger $count réponses supplémentaires…';
  }

  @override
  String loadMoreSingular(Object count) {
    return 'Charger $count réponse supplémentaire…';
  }

  @override
  String get local => 'Local';

  @override
  String get localPosts => 'Publications locales';

  @override
  String get logOut => 'Déconnexion';

  @override
  String get login => 'Connexion';

  @override
  String loginFailed(Object errorMessage) {
    return 'Impossible de se connecter. Veuillez réessayer :($errorMessage)';
  }

  @override
  String get loginSucceeded => 'Connecté.';

  @override
  String get loginToPerformAction => 'Vous devez être connecté pour accomplir cette tâche.';

  @override
  String get loginToSeeInbox => 'Connectez-vous pour voir votre boîte de réception';

  @override
  String get malformedUri => 'Le lien que vous avez fourni est dans un format non supporté. Veuillez vous assurer qu\'il s\'agit d\'un lien valide.';

  @override
  String get manageAccounts => 'Gérer les comptes';

  @override
  String get markAllAsRead => 'Tout marquer comme lu';

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
  String get missingErrorMessage => 'Aucun message d\'erreur disponible';

  @override
  String get moderatedCommunities => 'Moderated Communities';

  @override
  String get mostComments => 'Les plus commentés';

  @override
  String get mustBeLoggedInComment => 'Vous devez être connecté pour commenter';

  @override
  String get mustBeLoggedInPost => 'Vous devez être connecté pour créer une publication';

  @override
  String get navbarDoubleTapGestures => 'Navbar Double Tap Gestures';

  @override
  String get navbarSwipeGestures => 'Navbar Swipe Gestures';

  @override
  String get navigateDown => 'Commentaire suivant';

  @override
  String get navigateUp => 'Commentaire précédent';

  @override
  String get navigation => 'Navigation';

  @override
  String get nestedCommentIndicatorColor => 'Nested Comment Indicator Color';

  @override
  String get nestedCommentIndicatorStyle => 'Nested Comment Indicator Style';

  @override
  String get newComments => 'Nouveaux commentaires';

  @override
  String get newPost => 'New Post';

  @override
  String get new_ => 'Nouveau';

  @override
  String get noComments => 'Oh. Il n\'y a pas de commentaires.';

  @override
  String get noCommentsFound => 'Aucun commentaire trouvé';

  @override
  String get noCommunitiesFound => 'Aucune communauté trouvée';

  @override
  String get noCommunityBlocks => 'Pas de communautés bloquées.';

  @override
  String get noFavoritedCommunities => 'Pas de communautés préférées';

  @override
  String get noInstanceBlocks => 'Pas d\'instances bloquées.';

  @override
  String get noKeywordFilters => 'Aucun filtre par mot-clé ajouté';

  @override
  String get noLanguage => 'Pas de langue';

  @override
  String get noPosts => 'Aucune publication trouvée';

  @override
  String get noPostsFound => 'Aucune publication trouvée';

  @override
  String get noResultsFound => 'Aucun résultat trouvé.';

  @override
  String get noSubscriptions => 'Pas d\'abonnements';

  @override
  String get noUserBlocks => 'Pas d\'utilisateurs bloqués.';

  @override
  String get noUsersFound => 'Aucun utilisateur trouvé';

  @override
  String notValidLemmyInstance(Object instance) {
    return '$instance ne semble pas être une instance de Lemmy valide';
  }

  @override
  String get notValidUrl => 'URL invalide';

  @override
  String get nothingToShare => 'Rien à partager';

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
  String get off => 'éteint';

  @override
  String get ok => 'OK';

  @override
  String get old => 'Ancien';

  @override
  String get on => 'allumé';

  @override
  String get onlyModsCanPostInCommunity => 'Seuls les modérateurs peuvent publier dans cette communauté';

  @override
  String get open => 'Ouvrir';

  @override
  String get openAccountSwitcher => 'Ouvrir le sélecteur de compte';

  @override
  String get openByDefault => 'Ouvrir par défaut';

  @override
  String get openInBrowser => 'Ouvrir dans le navigateur';

  @override
  String get openInstance => 'Ouvrir l\'instance';

  @override
  String get openLinksInExternalBrowser => 'Open Links in External Browser';

  @override
  String get openLinksInReaderMode => 'Open Links in Reader Mode';

  @override
  String get openSettings => 'Ouvrir les paramètres';

  @override
  String get overview => 'Vue d\'ensemble';

  @override
  String get password => 'Mot de passe';

  @override
  String get pending => 'En attente';

  @override
  String get permissionDenied => 'Permission refusé';

  @override
  String get permissionDeniedMessage => 'Thunder a besoin de certaines permissions pour enregistrer cette image, qui lui ont été refusées.';

  @override
  String get postBehaviourSettings => 'Publications';

  @override
  String get postBody => 'Corps de publication';

  @override
  String get postBodySettings => 'Paramètres de corps de publication';

  @override
  String get postBodySettingsDescription => 'Ces paramètres affectent l\'affichage du corps de publication';

  @override
  String get postBodyViewType => 'Type de vue du corps de publication';

  @override
  String get postContentFontScale => 'Post Content Font Scale';

  @override
  String get postCreatedSuccessfully => 'Post created successfully!';

  @override
  String get postLocked => 'Publication verrouillée. Impossible de répondre.';

  @override
  String get postNSFW => 'Marquer comme NSFW';

  @override
  String get postPreview => 'Affiche un aperçu de la publication avec les paramètres données';

  @override
  String get postSavedAsDraft => 'Publication enregistrée comme brouillon';

  @override
  String get postSwipeActions => 'Post Swipe Actions';

  @override
  String get postSwipeGesturesHint => 'Vous souhaitez utiliser des boutons à la place ? Modifiez les boutons qui apparaissent dans les publications dans les paramètres généraux.';

  @override
  String get postTitle => 'Titre';

  @override
  String get postTitleFontScale => 'Post Title Font Scale';

  @override
  String get postTogglePreview => 'Aperçu des modifications';

  @override
  String get postURL => 'URL';

  @override
  String get postUploadImageError => 'Impossible d\'envoyer l\'image';

  @override
  String get postViewType => 'Type de vue des publications';

  @override
  String get posts => 'Publications';

  @override
  String get preview => 'Prévisualisation';

  @override
  String profileAppliedSuccessfully(Object profile) {
    return '$profile appliqué avec succès !';
  }

  @override
  String get profiles => 'Profils';

  @override
  String get pureBlack => 'Pure Black';

  @override
  String get reachedTheBottom => 'Hum. Il semble que vous ayez touché le fond.';

  @override
  String get readAll => 'Tout lire';

  @override
  String get reduceAnimations => 'Reduce Animations';

  @override
  String get reducesAnimations => 'Réduire les animations utilisées dans Thunder';

  @override
  String get refresh => 'Rafraîchir';

  @override
  String get refreshContent => 'Rafraîchir le contenu';

  @override
  String get remove => 'Supprimer';

  @override
  String get removeAccount => 'Supprimer compte';

  @override
  String get removeFromFavorites => 'Supprimer des favoris';

  @override
  String get removeInstance => 'Supprimer l\'instance';

  @override
  String removeKeyword(Object keyword) {
    return 'Supprimer \"$keyword\" ?';
  }

  @override
  String get removeKeywordFilter => 'Supprimer le mot-clé';

  @override
  String get removedCommunityFromSubscriptions => 'Désabonné de la communauté';

  @override
  String reply(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Réponses',
      one: 'Réponse',
      zero: 'Réponse',
    );
    return '$_temp0';
  }

  @override
  String get replyNotSupported => 'Répondre depuis cette page n\'est actuellement pas supporté';

  @override
  String get replyToPost => 'Répondre à la publication';

  @override
  String replyingTo(Object author) {
    return 'Répondre à $author';
  }

  @override
  String get report => 'Signaler';

  @override
  String get reportComment => 'Signaler le commentaire';

  @override
  String get reset => 'Réinitialiser';

  @override
  String get resetCommentPreferences => 'Réinitialiser les préférences de commentaires';

  @override
  String get resetPostPreferences => 'Réinitialiser les préférences de publication';

  @override
  String get resetPreferences => 'Réinitialiser les préférences';

  @override
  String get resetPreferencesAndData => 'Réinitialiser les préférences et données';

  @override
  String get restore => 'Restaurer';

  @override
  String get restoredCommentFromDraft => 'Commentaire restauré depuis les brouillons';

  @override
  String get restoredPostFromDraft => 'Publication restauré depuis les brouillons';

  @override
  String get retry => 'Réessayer';

  @override
  String get rightLongSwipe => 'Right Long Swipe';

  @override
  String get rightShortSwipe => 'Right Short Swipe';

  @override
  String get save => 'Enregistrer';

  @override
  String get saveSettings => 'Enregistrer les paramètres';

  @override
  String get saved => 'Enregistrer';

  @override
  String get scaled => 'Échelle';

  @override
  String get scrapeMissingLinkPreviews => 'Scrape Missing Link Previews';

  @override
  String get scrapeMissingPreviews => 'L\'activation aura un impact sur les performances.';

  @override
  String get screenReaderProfile => 'Profil du lecteur d\'écran';

  @override
  String get screenReaderProfileDescription => 'Optimise Thunder pour les lecteurs d\'écran en réduisant les éléments globaux et en supprimant les gestes potentiellement conflictuels.';

  @override
  String get search => 'Rechercher';

  @override
  String get searchByText => 'Rechercher par texte';

  @override
  String get searchByUrl => 'Rechercher par URL';

  @override
  String get searchComments => 'Rechercher commentaires';

  @override
  String searchCommentsFederatedWith(Object instance) {
    return 'Rechercher les commentaires fédérés avec $instance';
  }

  @override
  String searchCommunitiesFederatedWith(Object instance) {
    return 'Rechercher des communautés fédérées avec $instance';
  }

  @override
  String searchInstance(Object instance) {
    return 'Rechercher $instance';
  }

  @override
  String get searchPostSearchType => 'Sélectionner le type de recherche';

  @override
  String searchPostsFederatedWith(Object instance) {
    return 'Rechercher de publications fédérées avec $instance';
  }

  @override
  String get searchTerm => 'Rechercher les termes';

  @override
  String searchUsersFederatedWith(Object instance) {
    return 'Rechercher les utilisateurs fédérés avec $instance';
  }

  @override
  String get selectCommunity => 'Sélectionnez une communauté';

  @override
  String get selectFeedType => 'Sélectionnez le type de fil';

  @override
  String get selectLanguage => 'Sélectionner la langue';

  @override
  String get selectSearchType => 'Sélectionner le type de recherche';

  @override
  String serverErrorComments(Object message) {
    return 'Une erreur de serveur a été rencontrée lors de l\'obtention de plus de commentaires : $message';
  }

  @override
  String get setAction => 'Définir une action';

  @override
  String get setLongPress => 'Définir comme action d\'appui long';

  @override
  String get setShortPress => 'Définir comme action d\'appui court';

  @override
  String settingTypeNotSupported(Object settingType) {
    return 'Les paramètres de type $settingType ne sont pas encore pris en charge.';
  }

  @override
  String get settings => 'Paramètres';

  @override
  String get settingsFeedCards => 'Ces paramètres s\'appliquent aux cartes du fil principal, les actions étant toujours disponibles lors de l\'ouverture des publications.';

  @override
  String get share => 'Partager';

  @override
  String get shareLink => 'Partager le lien';

  @override
  String get shareMedia => 'Partager un fichier multimédia';

  @override
  String get sharePost => 'Partager la publication';

  @override
  String get showAll => 'Tout afficher';

  @override
  String get showBotAccounts => 'Afficher les comptes de bots';

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
  String get showLess => 'Voir moins';

  @override
  String get showMore => 'Voir plus';

  @override
  String get showPassword => 'Afficher mot de passe';

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
  String get showReadPosts => 'Afficher les publications lues';

  @override
  String get showScoreCounters => 'Display User Scores';

  @override
  String get showScores => 'Afficher les scores de publication/commentaire';

  @override
  String get showTextPostIndicator => 'Show Text Post Indicator';

  @override
  String get showThumbnailPreviewOnRight => 'Show Thumbnails on the Right';

  @override
  String get showUserDisplayNames => 'Show User Display Names';

  @override
  String get showUserInstance => 'Show User Instance';

  @override
  String get sidebar => 'Barre latérale';

  @override
  String get sidebarBottomNavDoubleTapDescription => 'Double-clic sur la barre de navigation inférieure pour ouvrir la barre latérale';

  @override
  String get sidebarBottomNavSwipeDescription => 'Balayer la barre de navigation inférieure pour ouvrir la barre latérale';

  @override
  String get small => 'Small';

  @override
  String get somethingWentWrong => 'Oups, quelque chose a mal tourné !';

  @override
  String get sortBy => 'Trier par';

  @override
  String get sortByTop => 'Trier par Top';

  @override
  String get sortOptions => 'Options de tri';

  @override
  String get spoiler => 'Révélation';

  @override
  String get submit => 'Soumettre';

  @override
  String get subscribe => 'S\'abonner';

  @override
  String get subscribeToCommunity => 'Subscribe to Community';

  @override
  String get subscribed => 'Abonné';

  @override
  String get subscriptions => 'Abonnements';

  @override
  String get successfullyBlocked => 'Bloqué.';

  @override
  String successfullyBlockedCommunity(Object communityName) {
    return 'Bloqué $communityName';
  }

  @override
  String get successfullyUnblocked => 'Débloqué.';

  @override
  String successfullyUnblockedCommunity(Object communityName) {
    return 'Débloqué $communityName';
  }

  @override
  String get suggestedTitle => 'Titre suggéré';

  @override
  String get system => 'System';

  @override
  String get tabletMode => 'Tablet Mode (2-column view)';

  @override
  String get tapToExit => 'Retour deux fois pour quitter';

  @override
  String get tappableAuthorCommunity => 'Tappable Authors & Communities';

  @override
  String get text => 'Texte';

  @override
  String get theme => 'Theme';

  @override
  String get themeAccentColor => 'Accent Colors';

  @override
  String get theming => 'Thème';

  @override
  String get timeoutComments => 'Erreur : Délai d\'attente dépassé lors de la tentative de récupération des commentaires';

  @override
  String get timeoutErrorMessage => 'Il y a eu un délai d\'attente dépassé pour une réponse.';

  @override
  String get timeoutSaveComment => 'Erreur : Délai dépassé lors de la tentative d\'enregistrement d\'un commentaire';

  @override
  String get timeoutSavingPost => 'Erreur : Délai dépassé lors de la tentative d\'enregistrement de la publication.';

  @override
  String get timeoutUpvoteComment => 'Erreur : Délai dépassé lors de la tentative de vote sur un commentaire';

  @override
  String get timeoutVotingPost => 'Erreur : Délai dépassé lors de la tentative de vote de la publication.';

  @override
  String get toggelRead => 'Basculer vers la lecture';

  @override
  String get top => 'Top';

  @override
  String get topAll => 'Top depuis le début';

  @override
  String get topDay => 'Top aujourd\'hui';

  @override
  String get topHour => 'Top dernière heure';

  @override
  String get topMonth => 'Top mois';

  @override
  String get topNineMonths => 'Top 9 derniers mois';

  @override
  String get topSixHour => 'Top 6 dernières heures';

  @override
  String get topSixMonths => 'Top 6 derniers mois';

  @override
  String get topThreeMonths => 'Top 3 derniers mois';

  @override
  String get topTwelveHour => 'Top 12 dernières heures';

  @override
  String get topWeek => 'Top semaine';

  @override
  String get topYear => 'Top année';

  @override
  String get totp => 'TOTP (optionnel)';

  @override
  String get translationsMayNotBeComplete => 'Veuillez noter que les traductions peuvent ne pas être complètes';

  @override
  String get trendingCommunities => 'Communautés en tendance';

  @override
  String get trySearchingFor => 'Try searching for...';

  @override
  String get unableToFindCommunity => 'Impossible de trouver la communauté';

  @override
  String unableToFindCommunityName(Object communityName) {
    return 'Impossible de trouver la communauté \'$communityName\'';
  }

  @override
  String get unableToFindInstance => 'Impossible de trouver l’instance';

  @override
  String get unableToFindLanguage => 'Impossible de trouver la langue';

  @override
  String get unableToFindUser => 'Impossible de trouver l\'utilisateur';

  @override
  String get unableToLoadImage => 'Impossible de charger l\'image';

  @override
  String unableToLoadImageFrom(Object domain) {
    return 'Impossible de charger l\'image de $domain';
  }

  @override
  String unableToLoadInstance(Object instance) {
    return 'Impossible de charger $instance';
  }

  @override
  String unableToLoadPostsFrominstance(Object instance) {
    return 'Impossible de charger les publications de $instance';
  }

  @override
  String get unableToLoadReplies => 'Impossible de charger plus de réponses.';

  @override
  String unableToNavigateToInstance(Object instanceHost) {
    return 'Unable to navigate to $instanceHost. It may not be a valid Lemmy instance.';
  }

  @override
  String get unblockInstance => 'Débloquer l\'instance';

  @override
  String get understandEnable => 'I Understand, Enable';

  @override
  String get unexpectedError => 'Erreur inattendue';

  @override
  String get unsubscribe => 'Se désabonner';

  @override
  String get unsubscribeFromCommunity => 'Unsubscribe from Community';

  @override
  String get unsubscribePending => 'Se désabonner (abonnement en attente)';

  @override
  String get unsubscribed => 'Désabonné';

  @override
  String updateReleased(Object version) {
    return 'Mise à jour publiée : $version';
  }

  @override
  String get uploadImage => 'Envoyer une image';

  @override
  String get upvote => 'Vote positif';

  @override
  String get uriNotSupported => 'Ce type de lien n\'est pas pris en charge pour le moment.';

  @override
  String get url => 'URL';

  @override
  String get useAdvancedShareSheet => 'Use Advanced Share Sheet';

  @override
  String get useCompactView => 'Activer pour les petites publications, désactiver pour les grandes.';

  @override
  String get useMaterialYouTheme => 'Use Material You Theme';

  @override
  String get useMaterialYouThemeDescription => 'Overrides the selected custom theme';

  @override
  String useSuggestedTitle(Object title) {
    return 'Utiliser le titre suggéré : $title';
  }

  @override
  String get userFormat => 'Format d\'utilisateur';

  @override
  String get userNotLoggedIn => 'Utilisateur non connecté';

  @override
  String get userProfiles => 'Profils utilisateur';

  @override
  String get userSettingDescription => 'Ces paramètres sont synchronisés avec votre compte Lemmy et ne sont appliqués que par compte.';

  @override
  String get username => 'Nom d\'utilisateur';

  @override
  String get users => 'Utilisateur';

  @override
  String get viewAllComments => 'Voir tous les commentaires';

  @override
  String get visitCommunity => 'Visiter la communauté';

  @override
  String get visitInstance => 'Voir l\'instance';

  @override
  String get visitUserProfile => 'Voir le profil utilisateur';

  @override
  String get warning => 'Warning';

  @override
  String xDownvotes(Object x) {
    return '$x votes négatifs';
  }

  @override
  String xScore(Object x) {
    return '$x score';
  }

  @override
  String xUpvotes(Object x) {
    return '$x votes positifs';
  }
}
