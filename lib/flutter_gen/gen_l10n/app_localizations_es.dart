import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

/// The translations for Spanish Castilian (`es`).
class AppLocalizationsEs extends AppLocalizations {
  AppLocalizationsEs([String locale = 'es']) : super(locale);

  @override
  String get about => 'Acerca de';

  @override
  String get accessibility => 'Accesibilidad';

  @override
  String get accessibilityProfilesDescription => 'Los perfiles de accesibilidad permiten aplicar varios ajustes a la vez para adaptarse a un requisito de accesibilidad concreto.';

  @override
  String account(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Cuentas',
      one: 'Cuenta',
      zero: 'Cuentas',
    );
    return '$_temp0 ';
  }

  @override
  String get accountSettings => 'Ajustes de la cuenta';

  @override
  String get actions => 'Actions';

  @override
  String get active => 'Active';

  @override
  String get add => 'Add';

  @override
  String get addAccount => 'Add Account';

  @override
  String get addAccountToSeeProfile => 'Inicia sesión para ver tu cuenta.';

  @override
  String get addAnonymousInstance => 'Añadir una instancia anónima';

  @override
  String get addKeywordFilter => 'Añadir palabra clave';

  @override
  String get addToFavorites => 'Añadir a favoritos';

  @override
  String get addedCommunityToSubscriptions => 'Suscrito a la comunidad';

  @override
  String get advanced => 'Avanzado';

  @override
  String get all => 'Todo';

  @override
  String get allPosts => 'Todos los mensajes';

  @override
  String get allowOpenSupportedLinks => 'Permitir que la aplicación abra los enlaces compatibles.';

  @override
  String get alreadyPostedTo => 'Ya se ha publicado en';

  @override
  String andXMore(Object count) {
    return 'y $count más';
  }

  @override
  String get animations => 'Animaciones';

  @override
  String get anonymous => 'Anónimo';

  @override
  String get appLanguage => 'Idioma de la aplicación';

  @override
  String get appearance => 'Apariencia';

  @override
  String get applied => 'Aplicada';

  @override
  String get apply => 'Aplicar';

  @override
  String get back => 'Atrás';

  @override
  String get backButton => 'Botón de retroceso';

  @override
  String get backToTop => 'Volver arriba';

  @override
  String get backgroundCheckWarning => 'Note that notification checks will consume additional battery';

  @override
  String get base => 'Base';

  @override
  String get blockCommunity => 'Bloquear Comunidad';

  @override
  String get blockInstance => 'Bloquear la instancia';

  @override
  String get blockUser => 'Block User';

  @override
  String get blockedCommunities => 'Comunidades bloqueadas';

  @override
  String get blockedInstances => 'Instancias bloqueadas';

  @override
  String get blockedUsers => 'Usuarios bloqueados';

  @override
  String browsingAnonymously(Object instance) {
    return 'Está navegando por $instance de forma anónima.';
  }

  @override
  String get cancel => 'Cancelar';

  @override
  String get cannotReportOwnComment => 'No puede presentar un informe para su propio comentario.';

  @override
  String get cantBlockAdmin => 'No se puede bloquear un administrador de instancia.';

  @override
  String get cantBlockYourself => 'No puedes bloquearte.';

  @override
  String get cardView => 'Vista de tarjeta';

  @override
  String get cardViewDescription => 'Habilitar la vista de tarjeta para ajustar la configuración';

  @override
  String get cardViewSettings => 'Configuración de la vista de tarjeta';

  @override
  String get changeSort => 'Cambiar orden';

  @override
  String clearCache(Object cacheSize) {
    return 'Clear Cache ($cacheSize)';
  }

  @override
  String get clearDatabase => 'Borrar la base de datos';

  @override
  String get clearPreferences => 'Borrar los ajustes';

  @override
  String get clearSearch => 'Borrar la búsqueda';

  @override
  String get clearedCache => 'Cleared cache successfully.';

  @override
  String get clearedDatabase => 'Base de datos local borrada. Reinicie Thunder para que los nuevos cambios surtan efecto.';

  @override
  String get clearedUserPreferences => 'Preferencias del usuario borradas';

  @override
  String get close => 'Cerrar';

  @override
  String get collapseCommentPreview => 'Contraer la vista previa de los comentarios';

  @override
  String get collapseInformation => 'Contraer información';

  @override
  String get collapseParentCommentBodyOnGesture => 'Hide Parent Comment when Collapsed';

  @override
  String get collapsePost => 'Contraer el hilo';

  @override
  String get collapsePostPreview => 'Contraer la vista previa de la publicación';

  @override
  String get collapseSpoiler => 'Contraer el spoiler';

  @override
  String get combineCommentScores => 'Combine Comment Scores';

  @override
  String get combineCommentScoresLabel => 'Combinar las puntuaciones de los comentarios';

  @override
  String get combineNavAndFab => 'El botón de acción flotante se mostrará entre los botones de navegación.';

  @override
  String get combineNavAndFabDescription => 'Floating Action Button will be shown between navigation buttons.';

  @override
  String get comment => 'Comentario';

  @override
  String get commentBehaviourSettings => 'Comentarios';

  @override
  String get commentFontScale => 'Comment Content Font Scale';

  @override
  String get commentPreview => 'Mostrar una vista previa de los comentarios con la configuración';

  @override
  String get commentReported => 'El comentario ha sido marcado para su revisión.';

  @override
  String get commentSavedAsDraft => 'Comentario guardado como borrador';

  @override
  String get commentShowUserInstance => 'Mostrar instancia de usuario';

  @override
  String get commentSortType => 'Tipo de clasificación de los comentarios';

  @override
  String get commentSwipeActions => 'Comment Swipe Actions';

  @override
  String get commentSwipeGesturesHint => '¿Quieres utilizar los botones? Habilítalos en la sección de comentarios de los ajustes generales.';

  @override
  String get comments => 'Comentarios';

  @override
  String get communities => 'Comunidades';

  @override
  String get community => 'Comunidad';

  @override
  String get communityFormat => 'Formato de la comunidad';

  @override
  String get compactView => 'Vista compacta';

  @override
  String get compactViewDescription => 'Habilitar la vista compacta para ajustar la configuración';

  @override
  String get compactViewSettings => 'Configuración de la vista compacta';

  @override
  String get condensed => 'Condensado';

  @override
  String get confirm => 'Confirm';

  @override
  String get confirmLogOutBody => '¿Seguro que quieres cerrar la sesión?';

  @override
  String get confirmLogOutTitle => '¿Cerrar sesión?';

  @override
  String get confirmMarkAllAsReadBody => '¿Estás seguro de que quieres marcar todos los mensajes como leídos?';

  @override
  String get confirmMarkAllAsReadTitle => '¿Marcar todo como leído?';

  @override
  String get confirmResetCommentPreferences => 'Esto restablecerá todas las preferencias de los comentarios. ¿Seguro que quieres proceder?';

  @override
  String get confirmResetPostPreferences => 'Esto restablecerá todas las preferencias de la publicación. ¿Seguro que quieres proceder?';

  @override
  String get controversial => 'Polémico';

  @override
  String get copiedToClipboard => 'Copiado al portapapeles';

  @override
  String get copy => 'Copiar';

  @override
  String get copyText => 'Copiar el texto';

  @override
  String get couldNotDetermineCommentDelete => 'Error: No se pudo determinar el puesto para eliminar el comentario.';

  @override
  String get couldNotDeterminePostComment => 'Error: No se pudo determinar el post para comentar.';

  @override
  String get couldntCreateReport => 'Su comentario no ha podido ser enviado en este momento. Vuelva a intentarlo más tarde';

  @override
  String countSubscribers(Object count) {
    return '$count suscriptores';
  }

  @override
  String countUsers(Object count) {
    return '$count usuarios';
  }

  @override
  String get createAccount => 'Crear una cuenta';

  @override
  String get createComment => 'Crear comentario';

  @override
  String get createNewCrossPost => 'Crear un nuevo mensaje cruzado';

  @override
  String get createPost => 'Crear publicación';

  @override
  String get creator => 'Creador';

  @override
  String crossPostedFrom(Object postUrl) {
    return 'publicación cruzada desde:  $postUrl';
  }

  @override
  String get crossPostedTo => 'Trasladado a';

  @override
  String get currentLongPress => 'Actualmente configurado como pulsación larga';

  @override
  String get currentSinglePress => 'Actualmente configurado como pulsación corta';

  @override
  String get customizeSwipeActions => 'Personalizar acciones al deslizar (tocar para cambiar)';

  @override
  String get dangerZone => 'Danger Zone';

  @override
  String get dark => 'Dark';

  @override
  String get debug => 'Depurar';

  @override
  String get debugDescription => 'Las siguientes configuraciones de depuración solo deben usarse para solucionar problemas.';

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
  String get deleteLocalDatabase => 'Borrar la base de datos local';

  @override
  String get deleteLocalDatabaseDescription => 'Esta acción eliminará la base de datos local y te desconectará de todas tus cuentas.\n\n¿Está seguro de que desea continuar?';

  @override
  String get deleteLocalPreferences => 'Borrar las preferencias locales';

  @override
  String get deleteLocalPreferencesDescription => 'Esto borrará todas sus preferencias y configuraciones en Thunder.\n\n¿Quieres continuar?';

  @override
  String get dimReadPosts => 'Los mensajes leídos aparecerán en gris';

  @override
  String get disable => 'Disable';

  @override
  String get dismissRead => 'Descartar leídos';

  @override
  String get displayUserScore => 'Mostrar las puntuaciones del usuario (Karma).';

  @override
  String get downloadingMedia => 'Descargando los medios para compartir…';

  @override
  String get downvote => 'Voto negativo';

  @override
  String get downvotesDisabled => 'Los votos negativos están desactivados en esta instancia.';

  @override
  String get edit => 'Editar';

  @override
  String get editComment => 'Editar comentario';

  @override
  String get editPost => 'Editar el mensaje';

  @override
  String get empty => 'Vacío';

  @override
  String get emptyInbox => 'Buzón vacío';

  @override
  String get emptyUri => 'El enlace está vacío. Por favor, proporcione un enlace dinámico válido para continuar.';

  @override
  String get enableCommentNavigation => 'Enable Comment Navigation';

  @override
  String get enableFeedFab => 'Activar el botón flotante en los feeds';

  @override
  String get enableFloatingButtonOnFeeds => 'Enable Floating Button On Feeds';

  @override
  String get enableFloatingButtonOnPosts => 'Enable Floating Button On Posts';

  @override
  String get enableInboxNotifications => 'Enable Inbox Notifications (Experimental)';

  @override
  String get enablePostFab => 'Habilitar botón flotante en los mensajes';

  @override
  String get endSearch => 'Finalizar la búsqueda';

  @override
  String errorDownloadingMedia(Object errorMessage) {
    return 'No se ha podido descargar el archivo multimedia para compartir: $errorMessage';
  }

  @override
  String get exceptionProcessingUri => 'Se ha producido un error al procesar el enlace. Puede que no esté disponible en su instancia.';

  @override
  String get expandCommentPreview => 'Expandir la vista previa de los comentarios';

  @override
  String get expandInformation => 'Ampliar la información';

  @override
  String get expandOptions => 'Ampliar opciones';

  @override
  String get expandPost => 'Ampliar el tema';

  @override
  String get expandPostPreview => 'Expandir la vista previa del tema';

  @override
  String get expandSpoiler => 'Ampliar spoiler';

  @override
  String get expanded => 'Ampliado';

  @override
  String get extraLarge => 'Extra Large';

  @override
  String failedToBlock(Object errorMessage) {
    return 'Fallo al bloquear: $errorMessage';
  }

  @override
  String failedToLoadBlocks(Object errorMessage) {
    return 'No se han podido cargar los bloques: $errorMessage';
  }

  @override
  String failedToUnblock(Object errorMessage) {
    return 'No se ha podido desbloquear: $errorMessage';
  }

  @override
  String get favorites => 'Favoritos';

  @override
  String get feed => 'Feed';

  @override
  String get feedBehaviourSettings => 'Feed';

  @override
  String get feedTypeAndSorts => 'Tipo de Feed predeterminado y de clasificación';

  @override
  String get fetchAccountError => 'No se pudo determinar la cuenta';

  @override
  String filteringBy(Object entity) {
    return 'Filtrar por $entity';
  }

  @override
  String get filters => 'Filtros';

  @override
  String get floatingActionButton => 'Botón de acción flotante';

  @override
  String get floatingActionButtonInformation => 'Thunder tiene una experiencia FAB totalmente personalizable que admite algunos gestos.\n- Desliza el dedo hacia arriba para ver acciones FAB adicionales\n- Desliza hacia abajo/arriba para ocultar o mostrar el FAB\n\nPara personalizar las acciones principales y secundarias del FAB, mantén pulsada una de las acciones que aparecen a continuación.';

  @override
  String get floatingActionButtonLongPressDescription => 'indica la acción de la pulsación larga del FAB.';

  @override
  String get floatingActionButtonSinglePressDescription => 'denota la acción de pulsación única del FAB.';

  @override
  String get fonts => 'Fonts';

  @override
  String get fullScreenNavigationSwipeDescription => 'Desliza el dedo en cualquier lugar para volver atrás cuando los gestos de izquierda a derecha estén desactivados';

  @override
  String get fullscreenSwipeGestures => 'Fullscreen Swipe Gestures';

  @override
  String get general => 'General';

  @override
  String get generalSettings => 'Ajustes generales';

  @override
  String get gestures => 'Gestos';

  @override
  String get gettingStarted => 'Primeros pasos';

  @override
  String get hideNsfwPostsFromFeed => 'Hide NSFW Posts from Feed';

  @override
  String get hideNsfwPreviews => 'Hide NSFW Previews';

  @override
  String get hidePassword => 'Ocultar la contraseña';

  @override
  String get hideTopBarOnScroll => 'Ocultar la barra superior al desplazarse';

  @override
  String get hot => 'Caliente';

  @override
  String get image => 'Imagen';

  @override
  String get importExportSettings => 'Ajustes para la importación/exportación';

  @override
  String get importSettings => 'Importar la configuración';

  @override
  String inReplyTo(Object community, Object post) {
    return 'En respuesta a $post en $community';
  }

  @override
  String get inbox => 'Buzón';

  @override
  String get includeCommunity => 'Incluir a la comunidad';

  @override
  String get includeExternalLink => 'Incluir enlace externo';

  @override
  String get includeImage => 'Incluir la imagen';

  @override
  String get includePostLink => 'Incluir enlace a la entrada';

  @override
  String get includeText => 'Incluir el texto';

  @override
  String get includeTitle => 'Incluir el título';

  @override
  String get information => 'Información';

  @override
  String get instance => 'Instancia';

  @override
  String instanceHasAlreadyBenAdded(Object instance) {
    return '$instance ya ha sido añadido.';
  }

  @override
  String get internetOrInstanceIssues => 'Es posible que no esté conectado a Internet o que tu instancia no esté disponible actualmente.';

  @override
  String get keywordFilterDescription => 'Filtra los mensajes que contienen palabras clave en el título o en el cuerpo';

  @override
  String get keywordFilters => 'Filtros por palabra clave';

  @override
  String get language => 'Idioma';

  @override
  String get languageNotAllowed => 'La comunidad en la que estás publicando no permite publicar en el idioma que has seleccionado. Prueba con otro idioma.';

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
      other: 'Enlaces',
      one: 'Enlace',
      zero: 'Enlace',
    );
    return '$_temp0 ';
  }

  @override
  String get linkActions => 'Acciones del enlace';

  @override
  String get linksBehaviourSettings => 'Enlaces';

  @override
  String loadMorePlural(Object count) {
    return 'Cargar $count más respuestas…';
  }

  @override
  String loadMoreSingular(Object count) {
    return 'Cargando $count respuesta(s) más…';
  }

  @override
  String get local => 'Local';

  @override
  String get localPosts => 'Mensajes locales';

  @override
  String get logOut => 'Cerrar sesión';

  @override
  String get login => 'Iniciar sesión';

  @override
  String loginFailed(Object errorMessage) {
    return 'No se ha podido iniciar sesión. Inténteao de nuevo:($errorMessage)';
  }

  @override
  String get loginSucceeded => 'Conectado.';

  @override
  String get loginToPerformAction => 'Para realizar esta tarea, debe iniciar sesión.';

  @override
  String get loginToSeeInbox => 'Conéctate para ver tu bandeja de entrada';

  @override
  String get malformedUri => 'El enlace que has proporcionado tiene un formato no válido. Por favor, asegúrese de que es un enlace válido.';

  @override
  String get manageAccounts => 'Administrar cuentas';

  @override
  String get markAllAsRead => 'Marcar todo como leído';

  @override
  String get markPostAsReadOnMediaView => 'Mark Read After Viewing Media';

  @override
  String get medium => 'Medium';

  @override
  String mention(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Menciones',
      one: 'Mención',
      zero: 'Mención',
    );
    return '$_temp0';
  }

  @override
  String message(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Mensajes',
      one: 'Mensaje',
      zero: 'Mensaje',
    );
    return '$_temp0';
  }

  @override
  String get metadataFontScale => 'Metadata Font Scale';

  @override
  String get missingErrorMessage => 'Mensaje de error no disponible';

  @override
  String get moderatedCommunities => 'Moderated Communities';

  @override
  String get mostComments => 'La mayoría de los comentarios';

  @override
  String get mustBeLoggedInComment => 'Hay que iniciar sesión para crear un comentario';

  @override
  String get mustBeLoggedInPost => 'Hay que iniciar sesión para crear un post';

  @override
  String get navbarDoubleTapGestures => 'Navbar Double Tap Gestures';

  @override
  String get navbarSwipeGestures => 'Navbar Swipe Gestures';

  @override
  String get navigateDown => 'Siguiente comentario';

  @override
  String get navigateUp => 'Comentario anterior';

  @override
  String get navigation => 'Navegación';

  @override
  String get nestedCommentIndicatorColor => 'Nested Comment Indicator Color';

  @override
  String get nestedCommentIndicatorStyle => 'Nested Comment Indicator Style';

  @override
  String get newComments => 'Nuevos comentarios';

  @override
  String get newPost => 'New Post';

  @override
  String get new_ => 'Nuevo';

  @override
  String get noComments => 'Oh. No hay comentarios.';

  @override
  String get noCommentsFound => 'No hay comentarios.';

  @override
  String get noCommunitiesFound => 'No se han encontrado comunidades.';

  @override
  String get noCommunityBlocks => 'Ninguna comunidad bloqueada.';

  @override
  String get noFavoritedCommunities => 'Ninguna comunidad favorita';

  @override
  String get noInstanceBlocks => 'Ninguna instancia bloqueada.';

  @override
  String get noKeywordFilters => 'No se han añadido filtros de palabras clave';

  @override
  String get noLanguage => 'Ningún idioma';

  @override
  String get noPosts => 'No hay ninguna publicación.';

  @override
  String get noPostsFound => 'No se ha encontrado ningún tema';

  @override
  String get noResultsFound => 'No se han encontrado resultados.';

  @override
  String get noSubscriptions => 'Sin suscripciones';

  @override
  String get noUserBlocks => 'Ningún usuario bloqueado.';

  @override
  String get noUsersFound => 'No se encontraron usuarios.';

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
      other: 'Notificaciones',
      one: 'Notificación',
      zero: 'Notificación',
    );
    return '$_temp0';
  }

  @override
  String get notificationsBehaviourSettings => 'Notificaciones';

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
  String get onlyModsCanPostInCommunity => 'Sólo los moderadores pueden publicar en esta comunidad';

  @override
  String get open => 'Abrir';

  @override
  String get openAccountSwitcher => 'Open account switcher';

  @override
  String get openByDefault => 'Abrir por defecto';

  @override
  String get openInBrowser => 'Abrir en el navegador';

  @override
  String get openInstance => 'Open Instance';

  @override
  String get openLinksInExternalBrowser => 'Open Links in External Browser';

  @override
  String get openLinksInReaderMode => 'Open Links in Reader Mode';

  @override
  String get openSettings => 'Abrir la configuración';

  @override
  String get overview => 'Resumen';

  @override
  String get password => 'Password';

  @override
  String get pending => 'Pendiente';

  @override
  String get permissionDenied => 'Permiso denegado';

  @override
  String get permissionDeniedMessage => 'Thunder requiere algunos permisos para guardar esta imagen que han sido denegados.';

  @override
  String get postBehaviourSettings => 'Temas';

  @override
  String get postBody => 'Cuerpo de la publicación';

  @override
  String get postBodySettings => 'Configuración del cuerpo del mensaje';

  @override
  String get postBodySettingsDescription => 'Estos ajustes afectan a la visualización del cuerpo del mensaje';

  @override
  String get postBodyViewType => 'Tipo de vista del cuerpo de la publicación';

  @override
  String get postContentFontScale => 'Post Content Font Scale';

  @override
  String get postCreatedSuccessfully => 'Post created successfully!';

  @override
  String get postLocked => 'Tema bloqueado. No se permiten respuestas.';

  @override
  String get postNSFW => 'Marcar como NSFW';

  @override
  String get postPreview => 'Mostrar una vista previa del mensaje con la configuración';

  @override
  String get postSavedAsDraft => 'Post saved as draft';

  @override
  String get postSwipeActions => 'Post Swipe Actions';

  @override
  String get postSwipeGesturesHint => '¿Quieres utilizar los botones? Cambia los botones que aparecen en los temas en los ajustes generales.';

  @override
  String get postTitle => 'Título';

  @override
  String get postTitleFontScale => 'Post Title Font Scale';

  @override
  String get postTogglePreview => 'Cambiar vista previa';

  @override
  String get postURL => 'URL';

  @override
  String get postUploadImageError => 'No se ha podido cargar la imagen';

  @override
  String get postViewType => 'Tipo de vista del tema';

  @override
  String get posts => 'Posts';

  @override
  String get preview => 'Preview';

  @override
  String profileAppliedSuccessfully(Object profile) {
    return '$profile applied successfully!';
  }

  @override
  String get profiles => 'Perfiles';

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
  String get refresh => 'Refrescar';

  @override
  String get refreshContent => 'Refrescar contenido';

  @override
  String get remove => 'Eliminar';

  @override
  String get removeAccount => 'Remove Account';

  @override
  String get removeFromFavorites => 'Eliminar de favoritos';

  @override
  String get removeInstance => 'Remove instance';

  @override
  String removeKeyword(Object keyword) {
    return '¿Quitar \"$keyword\"?';
  }

  @override
  String get removeKeywordFilter => 'Eliminar palabra clave';

  @override
  String get removedCommunityFromSubscriptions => 'Darse de baja de la comunidad';

  @override
  String reply(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Replies',
      one: 'Responder',
      zero: 'Responder',
    );
    return '$_temp0';
  }

  @override
  String get replyNotSupported => 'Responder desde esta página aún no está disponible';

  @override
  String get replyToPost => 'Responder a la publicación';

  @override
  String replyingTo(Object author) {
    return 'Responder a $author';
  }

  @override
  String get report => 'Report';

  @override
  String get reportComment => 'Report Comment';

  @override
  String get reset => 'Restablecer';

  @override
  String get resetCommentPreferences => 'Restablecer las preferencias de los comentarios';

  @override
  String get resetPostPreferences => 'Restablecer las preferencias de la publicación';

  @override
  String get resetPreferences => 'Restablecer los ajustes';

  @override
  String get resetPreferencesAndData => 'Restablecer los ajustes y los datos';

  @override
  String get restore => 'Restore';

  @override
  String get restoredCommentFromDraft => 'Restored comment from draft';

  @override
  String get restoredPostFromDraft => 'Restored post from draft';

  @override
  String get retry => 'Reintentar';

  @override
  String get rightLongSwipe => 'Right Long Swipe';

  @override
  String get rightShortSwipe => 'Right Short Swipe';

  @override
  String get save => 'Guardar';

  @override
  String get saveSettings => 'Guardar la configuración';

  @override
  String get saved => 'Guardado';

  @override
  String get scaled => 'Escala';

  @override
  String get scrapeMissingLinkPreviews => 'Scrape Missing Link Previews';

  @override
  String get scrapeMissingPreviews => 'Habilitarlo afectará el rendimiento.';

  @override
  String get screenReaderProfile => 'Perfil del lector de pantalla';

  @override
  String get screenReaderProfileDescription => 'Optimiza Thunder para los lectores de pantalla reduciendo los elementos generales y eliminando los gestos potencialmente conflictivos.';

  @override
  String get search => 'Buscar';

  @override
  String get searchByText => 'Buscar por el texto';

  @override
  String get searchByUrl => 'Buscar por dirección URL';

  @override
  String get searchComments => 'Buscar comentarios';

  @override
  String searchCommentsFederatedWith(Object instance) {
    return 'Buscar los comentarios federados con $instance';
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
  String get searchPostSearchType => 'Seleccionar el tipo de la búsqueda';

  @override
  String searchPostsFederatedWith(Object instance) {
    return 'Buscar los puestos federados con $instance';
  }

  @override
  String get searchTerm => 'Buscar términos';

  @override
  String searchUsersFederatedWith(Object instance) {
    return 'Buscar los usuarios federados con $instance';
  }

  @override
  String get selectCommunity => 'Elija una comunidad';

  @override
  String get selectFeedType => 'Seleccione el tipo del Feed';

  @override
  String get selectLanguage => 'Selecciona el idioma';

  @override
  String get selectSearchType => 'Seleccione el tipo de la búsqueda';

  @override
  String serverErrorComments(Object message) {
    return 'A server error was encountered when fetching more comments: $message';
  }

  @override
  String get setAction => 'Establecer acción';

  @override
  String get setLongPress => 'Set as long-press action';

  @override
  String get setShortPress => 'Set as short-press action';

  @override
  String settingTypeNotSupported(Object settingType) {
    return 'Settings of type $settingType are not yet supported.';
  }

  @override
  String get settings => 'Ajustes';

  @override
  String get settingsFeedCards => 'Estos ajustes se aplican a las tarjetas del feed principal, las acciones están siempre disponibles al abrir las publicaciones.';

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
  String get showBotAccounts => 'Mostrar las cuentas de los bots';

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
  String get showLess => 'Mostrar menos';

  @override
  String get showMore => 'Mostrar más';

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
  String get showReadPosts => 'Mostrar las publicaciones leídas';

  @override
  String get showScoreCounters => 'Display User Scores';

  @override
  String get showScores => 'Mostrar las puntuaciones de publicaciones/comentarios';

  @override
  String get showTextPostIndicator => 'Show Text Post Indicator';

  @override
  String get showThumbnailPreviewOnRight => 'Show Thumbnails on the Right';

  @override
  String get showUserDisplayNames => 'Show User Display Names';

  @override
  String get showUserInstance => 'Show User Instance';

  @override
  String get sidebar => 'Barra lateral';

  @override
  String get sidebarBottomNavDoubleTapDescription => 'Doble toque en la barra inferior para abrir la barra lateral';

  @override
  String get sidebarBottomNavSwipeDescription => 'Deslizar la barra inferior para abrir la barra lateral';

  @override
  String get small => 'Small';

  @override
  String get somethingWentWrong => 'Oops, something went wrong!';

  @override
  String get sortBy => 'Ordenar por';

  @override
  String get sortByTop => 'Sort by Top';

  @override
  String get sortOptions => 'Opciones para ordenar';

  @override
  String get spoiler => 'Spoiler';

  @override
  String get submit => 'Submit';

  @override
  String get subscribe => 'Suscribirse';

  @override
  String get subscribeToCommunity => 'Suscribirse a la comunidad';

  @override
  String get subscribed => 'Suscrito';

  @override
  String get subscriptions => 'Suscripciones';

  @override
  String get successfullyBlocked => 'Bloqueado.';

  @override
  String successfullyBlockedCommunity(Object communityName) {
    return '$communityName bloqueado';
  }

  @override
  String get successfullyUnblocked => 'Desbloqueado.';

  @override
  String successfullyUnblockedCommunity(Object communityName) {
    return '$communityName desbloqueado';
  }

  @override
  String get suggestedTitle => 'Título sugerido';

  @override
  String get system => 'System';

  @override
  String get tabletMode => 'Tablet Mode (2-column view)';

  @override
  String get tapToExit => 'Retroceder dos veces para salir';

  @override
  String get tappableAuthorCommunity => 'Tappable Authors & Communities';

  @override
  String get text => 'Texto';

  @override
  String get theme => 'Theme';

  @override
  String get themeAccentColor => 'Accent Colors';

  @override
  String get theming => 'Temática';

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
  String get topNineMonths => 'Lo mejor en los últimos 9 meses';

  @override
  String get topSixHour => 'Top in Past 6 Hours';

  @override
  String get topSixMonths => 'Lo mejor en los últimos 6 meses';

  @override
  String get topThreeMonths => 'Lo mejor en los últimos 3 meses';

  @override
  String get topTwelveHour => 'Top in Past 12 Hours';

  @override
  String get topWeek => 'Top Week';

  @override
  String get topYear => 'Top Year';

  @override
  String get totp => 'TOTP (optional)';

  @override
  String get translationsMayNotBeComplete => 'Por favor, tenga en cuenta que las traducciones pueden no estar completas';

  @override
  String get trendingCommunities => 'Trending Communities';

  @override
  String get trySearchingFor => 'Intentando buscar por...';

  @override
  String get unableToFindCommunity => 'Imposible encontrar a la comunidad';

  @override
  String unableToFindCommunityName(Object communityName) {
    return 'No se ha podido encontrar la comunidad \'$communityName\'';
  }

  @override
  String get unableToFindInstance => 'No se encuentra la instancia';

  @override
  String get unableToFindLanguage => 'No se encuentra el idioma';

  @override
  String get unableToFindUser => 'No se encuentra el usuario';

  @override
  String get unableToLoadImage => 'No es posible cargar la imagen';

  @override
  String unableToLoadImageFrom(Object domain) {
    return 'No se ha podido cargar la imagen de $domain';
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
  String get unblockInstance => 'Desbloquear la instancia';

  @override
  String get understandEnable => 'I Understand, Enable';

  @override
  String get unexpectedError => 'Error inesperado';

  @override
  String get unsubscribe => 'Eliminar suscripción';

  @override
  String get unsubscribeFromCommunity => 'Darse de baja de la comunidad';

  @override
  String get unsubscribePending => 'Eliminar suscripción (suscripción pendiente)';

  @override
  String get unsubscribed => 'Suscripción eliminada';

  @override
  String updateReleased(Object version) {
    return 'Actualización publicada: $version';
  }

  @override
  String get uploadImage => 'Subir imagen';

  @override
  String get upvote => 'Upvote';

  @override
  String get uriNotSupported => 'Este tipo de enlace no es compatible por el momento.';

  @override
  String get url => 'Dirección URL';

  @override
  String get useAdvancedShareSheet => 'Use Advanced Share Sheet';

  @override
  String get useCompactView => 'Activar para mensajes pequeños, desactivar para grandes.';

  @override
  String get useMaterialYouTheme => 'Use Material You Theme';

  @override
  String get useMaterialYouThemeDescription => 'Overrides the selected custom theme';

  @override
  String useSuggestedTitle(Object title) {
    return 'Utilice el título sugerido: $title';
  }

  @override
  String get userFormat => 'Formato del usuario';

  @override
  String get userNotLoggedIn => 'Usuario no conectado';

  @override
  String get userProfiles => 'Perfiles de los usuarios';

  @override
  String get userSettingDescription => 'Estos ajustes se sincronizan con tu cuenta de Lemmy y sólo se aplican por cuenta.';

  @override
  String get username => 'Nombre de usuario';

  @override
  String get users => 'Usuarios';

  @override
  String get viewAllComments => 'Ver todos los comentarios';

  @override
  String get visitCommunity => 'Visit Community';

  @override
  String get visitInstance => 'Instancia de la visita';

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
    return '$x puntuación';
  }

  @override
  String xUpvotes(Object x) {
    return '$x upvotes';
  }
}
