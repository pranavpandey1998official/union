import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

/// The translations for Russian (`ru`).
class AppLocalizationsRu extends AppLocalizations {
  AppLocalizationsRu([String locale = 'ru']) : super(locale);

  @override
  String get about => 'О приложении';

  @override
  String get accessibility => 'Специальные возможности';

  @override
  String get accessibilityProfilesDescription => 'Специальные возможности позволяют одновременно применять несколько настроек для удовлетворения конкретного требования доступности.';

  @override
  String account(num count) {
    return 'Аккаунт';
  }

  @override
  String get accountSettings => 'Настройки аккаунта';

  @override
  String get actions => 'Действия';

  @override
  String get active => 'Активный';

  @override
  String get add => 'Добавить';

  @override
  String get addAccount => 'Добавить аккаунт';

  @override
  String get addAccountToSeeProfile => 'Войдите, чтобы увидеть свой аккаунт.';

  @override
  String get addAnonymousInstance => 'Добавить анонимный инстанс';

  @override
  String get addKeywordFilter => 'Добавить ключевое слово';

  @override
  String get addToFavorites => 'Добавить в избранное';

  @override
  String get addedCommunityToSubscriptions => 'Подписались на сообщество';

  @override
  String get advanced => 'Дополнительно';

  @override
  String get all => 'Все';

  @override
  String get allPosts => 'Все посты';

  @override
  String get allowOpenSupportedLinks => 'Разрешить приложению открывать поддерживаемые ссылки.';

  @override
  String get alreadyPostedTo => 'Уже опубликовано в';

  @override
  String andXMore(Object count) {
    return 'и ещё $count';
  }

  @override
  String get animations => 'Анимации';

  @override
  String get anonymous => 'Анонимно';

  @override
  String get appLanguage => 'Язык приложения';

  @override
  String get appearance => 'Внешний вид';

  @override
  String get applied => 'Применено';

  @override
  String get apply => 'Применить';

  @override
  String get back => 'Назад';

  @override
  String get backButton => 'Кнопка назад';

  @override
  String get backToTop => 'Наверх';

  @override
  String get backgroundCheckWarning => 'Note that notification checks will consume additional battery';

  @override
  String get base => 'Base';

  @override
  String get blockCommunity => 'Заблокировать сообщество';

  @override
  String get blockInstance => 'Заблокировать инстанс';

  @override
  String get blockUser => 'Заблокировать пользователя';

  @override
  String get blockedCommunities => 'Заблокированные сообщества';

  @override
  String get blockedInstances => 'Заблокированные инстансы';

  @override
  String get blockedUsers => 'Заблокированные пользователи';

  @override
  String browsingAnonymously(Object instance) {
    return 'Вы уже просматриваете $instance анонимно.';
  }

  @override
  String get cancel => 'Отмена';

  @override
  String get cannotReportOwnComment => 'Вы не можете пожаловаться на свой комментарий.';

  @override
  String get cantBlockAdmin => 'Вы не можете заблокировать администратора инстанса.';

  @override
  String get cantBlockYourself => 'Вы можете не блокировать себя.';

  @override
  String get cardView => 'Карточки';

  @override
  String get cardViewDescription => 'Включите вид карточек чтобы применить настройки';

  @override
  String get cardViewSettings => 'Настройки карточек';

  @override
  String get changeSort => 'Изменить сортировку';

  @override
  String clearCache(Object cacheSize) {
    return 'Clear Cache ($cacheSize)';
  }

  @override
  String get clearDatabase => 'Очистить базу данных';

  @override
  String get clearPreferences => 'Очистить предпочтения';

  @override
  String get clearSearch => 'Очистить поиск';

  @override
  String get clearedCache => 'Cleared cache successfully.';

  @override
  String get clearedDatabase => 'Локальная база данных очищена. Перезапустить Thunder, чтобы изменения вступили в силу.';

  @override
  String get clearedUserPreferences => 'Очищены все пользовательские параметры';

  @override
  String get close => 'Закрыть';

  @override
  String get collapseCommentPreview => 'Свернуть предпросмотр комментария';

  @override
  String get collapseInformation => 'Свернуть информацию';

  @override
  String get collapseParentCommentBodyOnGesture => 'Hide Parent Comment when Collapsed';

  @override
  String get collapsePost => 'Свернуть публикацию';

  @override
  String get collapsePostPreview => 'Свернуть предпросмотр сообщения';

  @override
  String get collapseSpoiler => 'Свернуть спойлер';

  @override
  String get combineCommentScores => 'Combine Comment Scores';

  @override
  String get combineCommentScoresLabel => 'Свернуть оценки комментария';

  @override
  String get combineNavAndFab => 'Плавающая кнопка действия будет отображаться между кнопками навигации.';

  @override
  String get combineNavAndFabDescription => 'Floating Action Button will be shown between navigation buttons.';

  @override
  String get comment => 'Комментарий';

  @override
  String get commentBehaviourSettings => 'Комментарии';

  @override
  String get commentFontScale => 'Comment Content Font Scale';

  @override
  String get commentPreview => 'Показать предпросмотр комментариев с заданными настройками';

  @override
  String get commentReported => 'Этот комментарий был отмечен для рассмотрения.';

  @override
  String get commentSavedAsDraft => 'Комментарий сохранен как черновик';

  @override
  String get commentShowUserInstance => 'Показывать инстанс пользователя';

  @override
  String get commentSortType => 'Тип сортировки комментариев';

  @override
  String get commentSwipeActions => 'Comment Swipe Actions';

  @override
  String get commentSwipeGesturesHint => 'Хотите вместо этого использовать кнопки? Включите их в разделе комментариев в общих настройках.';

  @override
  String get comments => 'Комментарии';

  @override
  String get communities => 'Сообщества';

  @override
  String get community => 'Сообщество';

  @override
  String get communityFormat => 'Формат сообщества';

  @override
  String get compactView => 'Компактный вид';

  @override
  String get compactViewDescription => 'Включите компактный вид, чтобы настроить параметры';

  @override
  String get compactViewSettings => 'Настройки компактного вида';

  @override
  String get condensed => 'Сжатый';

  @override
  String get confirm => 'Confirm';

  @override
  String get confirmLogOutBody => 'Вы уверены, что хотите выйти?';

  @override
  String get confirmLogOutTitle => 'Выйти?';

  @override
  String get confirmMarkAllAsReadBody => 'Вы уверены, что хотите отметить все сообщения прочитанными?';

  @override
  String get confirmMarkAllAsReadTitle => 'Пометить всё прочитанным?';

  @override
  String get confirmResetCommentPreferences => 'Это сбросит все настройки комментариев. Вы уверены, что хотите продолжить?';

  @override
  String get confirmResetPostPreferences => 'Это сбросит все настройки публикаций. Вы уверены, что хотите продолжить?';

  @override
  String get controversial => 'Разговор';

  @override
  String get copiedToClipboard => 'Скопировано в буфер обмена';

  @override
  String get copy => 'Копировать';

  @override
  String get copyText => 'Копировать текст';

  @override
  String get couldNotDetermineCommentDelete => 'Ошибка: не удалось определить публикацию для удаления комментария.';

  @override
  String get couldNotDeterminePostComment => 'Ошибка: не удалось определить публикацию для комментария.';

  @override
  String get couldntCreateReport => 'В настоящее время не удалось отправить ваш отчет о комментариях. Пожалуйста, повторите попытку позже';

  @override
  String countSubscribers(Object count) {
    return '$count подписчиков';
  }

  @override
  String countUsers(Object count) {
    return '$count пользователей';
  }

  @override
  String get createAccount => 'Создать аккаунт';

  @override
  String get createComment => 'Создать комментарий';

  @override
  String get createNewCrossPost => 'Создать новый кросс-пост';

  @override
  String get createPost => 'Создать пост';

  @override
  String get creator => 'Создатель';

  @override
  String crossPostedFrom(Object postUrl) {
    return 'cross-posted from:  $postUrl';
  }

  @override
  String get crossPostedTo => 'Кросс-пост в';

  @override
  String get currentLongPress => 'В настоящее время установлено как длительное нажатие';

  @override
  String get currentSinglePress => 'В настоящее время установлено как однократное нажатие';

  @override
  String get customizeSwipeActions => 'Настройте действия свайпа (нажмите, чтобы изменить)';

  @override
  String get dangerZone => 'Danger Zone';

  @override
  String get dark => 'Dark';

  @override
  String get debug => 'Отладка';

  @override
  String get debugDescription => 'Следующие параметры отладки следует использовать только в целях устранения неполадок.';

  @override
  String get defaultCommentSortType => 'Default Comment Sort Type';

  @override
  String get defaultFeedSortType => 'Default Feed Sort Type';

  @override
  String get defaultFeedType => 'Default Feed Type';

  @override
  String get delete => 'Удалить';

  @override
  String get deleteAccount => 'Delete Account';

  @override
  String get deleteAccountDescription => 'To permanently delete your account, you will be redirected to your instance site. \n\nAre you sure you want to continue?';

  @override
  String get deleteLocalDatabase => 'Удалить локальную базу данных';

  @override
  String get deleteLocalDatabaseDescription => 'Это действие удалит локальную базу данных и сбросит вас из всех ваших аккаунтов.\n\nВы уверены, что хотите продолжить?';

  @override
  String get deleteLocalPreferences => 'Удалить локальные предпочтения';

  @override
  String get deleteLocalPreferencesDescription => 'Это очистит все ваши пользовательские предпочтения и настройки в Thunder.\n\nВы хотите продолжить?';

  @override
  String get dimReadPosts => 'Прочитанные сообщения будут выделены серым цветом';

  @override
  String get disable => 'Disable';

  @override
  String get dismissRead => 'Отклонить чтение';

  @override
  String get displayUserScore => 'Показывать очки пользователей (Карма).';

  @override
  String get downloadingMedia => 'Загрузка медиа для отправки…';

  @override
  String get downvote => 'Понизить';

  @override
  String get downvotesDisabled => 'На этом инстансе отключены голоса \"Против\".';

  @override
  String get edit => 'Редактировать';

  @override
  String get editComment => 'Изменить комментарий';

  @override
  String get editPost => 'Изменение поста';

  @override
  String get empty => 'Пусто';

  @override
  String get emptyInbox => 'Пустые входящие';

  @override
  String get emptyUri => 'Ссылка пуста. Пожалуйста, предоставьте действительную динамическую ссылку для продолжения.';

  @override
  String get enableCommentNavigation => 'Enable Comment Navigation';

  @override
  String get enableFeedFab => 'Включить плавающую кнопку в лентах';

  @override
  String get enableFloatingButtonOnFeeds => 'Enable Floating Button On Feeds';

  @override
  String get enableFloatingButtonOnPosts => 'Enable Floating Button On Posts';

  @override
  String get enableInboxNotifications => 'Enable Inbox Notifications (Experimental)';

  @override
  String get enablePostFab => 'Включить плавающую кнопку в сообщениях';

  @override
  String get endSearch => 'Конец поиска';

  @override
  String errorDownloadingMedia(Object errorMessage) {
    return 'Не удалось загрузить медиа для отправки: $errorMessage';
  }

  @override
  String get exceptionProcessingUri => 'При обработке ссылки произошла ошибка. Она не может быть доступна на вашем инстансе.';

  @override
  String get expandCommentPreview => 'Расширить предпросмотр комментариев';

  @override
  String get expandInformation => 'Расширить информацию';

  @override
  String get expandOptions => 'Развернуть параметры';

  @override
  String get expandPost => 'Развернуть публикацию';

  @override
  String get expandPostPreview => 'Развернуть предпросмотр сообщения';

  @override
  String get expandSpoiler => 'Развернуть спойлер';

  @override
  String get expanded => 'Расширенный';

  @override
  String get extraLarge => 'Extra Large';

  @override
  String failedToBlock(Object errorMessage) {
    return 'Не удалось заблокировать : $errorMessage';
  }

  @override
  String failedToLoadBlocks(Object errorMessage) {
    return 'Невозможно загрузить заблокированных: $errorMessage';
  }

  @override
  String failedToUnblock(Object errorMessage) {
    return 'Не удалось разблокировать: $errorMessage';
  }

  @override
  String get favorites => 'Избранные';

  @override
  String get feed => 'Новости';

  @override
  String get feedBehaviourSettings => 'Новости';

  @override
  String get feedTypeAndSorts => 'Тип новостей по умолчанию и сортировка';

  @override
  String get fetchAccountError => 'Не удалось определить аккаунт';

  @override
  String filteringBy(Object entity) {
    return 'Отсортировано по $entity';
  }

  @override
  String get filters => 'Фильтры';

  @override
  String get floatingActionButton => 'Действия летающей кнопки';

  @override
  String get floatingActionButtonInformation => 'Thunder имеет полностью настраиваемый интерфейс FAB, поддерживающий несколько жестов.\n- Проведите пальцем вверх, чтобы открыть дополнительные действия FAB.\n- Проведите пальцем вниз/вверх, чтобы скрыть или показать FAB.\n\nЧтобы настроить основные и дополнительные действия для FAB, нажмите и удерживайте одно из действий ниже.';

  @override
  String get floatingActionButtonLongPressDescription => 'обозначает длительное нажатие действия FAB.';

  @override
  String get floatingActionButtonSinglePressDescription => 'обозначает однократное нажатие FAB.';

  @override
  String get fonts => 'Fonts';

  @override
  String get fullScreenNavigationSwipeDescription => 'Проведите пальцем в любом месте, чтобы вернуться назад, когда жесты слева направо отключены';

  @override
  String get fullscreenSwipeGestures => 'Fullscreen Swipe Gestures';

  @override
  String get general => 'Общее';

  @override
  String get generalSettings => 'Общие настройки';

  @override
  String get gestures => 'Жесты';

  @override
  String get gettingStarted => 'Начало';

  @override
  String get hideNsfwPostsFromFeed => 'Hide NSFW Posts from Feed';

  @override
  String get hideNsfwPreviews => 'Hide NSFW Previews';

  @override
  String get hidePassword => 'Скрыть пароль';

  @override
  String get hideTopBarOnScroll => 'Hide Top Bar on Scroll';

  @override
  String get hot => 'Горячее';

  @override
  String get image => 'Изображение';

  @override
  String get importExportSettings => 'Импорт/экспорт настроек';

  @override
  String get importSettings => 'Настройки импорта';

  @override
  String inReplyTo(Object community, Object post) {
    return 'Ответ на $post в $community';
  }

  @override
  String get inbox => 'Входящие';

  @override
  String get includeCommunity => 'Включить сообщество';

  @override
  String get includeExternalLink => 'Включить внешние ссылки';

  @override
  String get includeImage => 'Включить изображение';

  @override
  String get includePostLink => 'Включить ссылку на публикацию';

  @override
  String get includeText => 'Включить текст';

  @override
  String get includeTitle => 'Включить заголовок';

  @override
  String get information => 'Информация';

  @override
  String get instance => 'Инстанс';

  @override
  String instanceHasAlreadyBenAdded(Object instance) {
    return '$instance уже добавлен.';
  }

  @override
  String get internetOrInstanceIssues => 'Возможно, вы не подключены к Интернету или ваш инстанс в данный момент недоступен.';

  @override
  String get keywordFilterDescription => 'Фильтрует сообщения, содержащие любые ключевые слова в заголовке или тексте';

  @override
  String get keywordFilters => 'Фильтры ключевых слов';

  @override
  String get language => 'Язык';

  @override
  String get languageNotAllowed => 'Сообщество, в котором вы публикуете сообщение, не разрешает публиковать сообщения на выбранном вами языке. Попробуйте другой язык.';

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
      other: 'Ссылки',
      one: 'Ссылка',
      zero: 'Ссылок',
    );
    return '$_temp0 ';
  }

  @override
  String get linkActions => 'Действие по ссылкам';

  @override
  String get linksBehaviourSettings => 'Ссылки';

  @override
  String loadMorePlural(Object count) {
    return 'Загрузить $count ответов…';
  }

  @override
  String loadMoreSingular(Object count) {
    return 'Загрузить $count ответ…';
  }

  @override
  String get local => 'Местные';

  @override
  String get localPosts => 'Местные посты';

  @override
  String get logOut => 'Выйти';

  @override
  String get login => 'Войти';

  @override
  String loginFailed(Object errorMessage) {
    return 'Не удалось войти. Попробуйте еще раз: ($errorMessage)';
  }

  @override
  String get loginSucceeded => 'Вход выполнен.';

  @override
  String get loginToPerformAction => 'Вам необходимо войти в систему, чтобы выполнить эту задачу.';

  @override
  String get loginToSeeInbox => 'Войдите, чтобы увидеть свои входящие';

  @override
  String get malformedUri => 'Предоставленная вами ссылка имеет неподдерживаемый формат. Пожалуйста, убедитесь, что это действительная ссылка.';

  @override
  String get manageAccounts => 'Управление аккаунтами';

  @override
  String get markAllAsRead => 'Пометить всё прочитанным';

  @override
  String get markPostAsReadOnMediaView => 'Mark Read After Viewing Media';

  @override
  String get medium => 'Medium';

  @override
  String mention(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Упоминаний',
      one: 'Упоминание',
      zero: 'Упоминаний',
    );
    return '$_temp0';
  }

  @override
  String message(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Сообщений',
      one: 'Сообщение',
      zero: 'Сообщений',
    );
    return '$_temp0';
  }

  @override
  String get metadataFontScale => 'Metadata Font Scale';

  @override
  String get missingErrorMessage => 'Сообщение об ошибке отсутствует';

  @override
  String get moderatedCommunities => 'Moderated Communities';

  @override
  String get mostComments => 'Большинство комментариев';

  @override
  String get mustBeLoggedInComment => 'Вы должны войти в систему, чтобы оставлять комментарии';

  @override
  String get mustBeLoggedInPost => 'Вам необходимо войти в систему, чтобы создать сообщение';

  @override
  String get navbarDoubleTapGestures => 'Navbar Double Tap Gestures';

  @override
  String get navbarSwipeGestures => 'Navbar Swipe Gestures';

  @override
  String get navigateDown => 'Следующий комментарий';

  @override
  String get navigateUp => 'Предыдущий комментарий';

  @override
  String get navigation => 'Навигация';

  @override
  String get nestedCommentIndicatorColor => 'Nested Comment Indicator Color';

  @override
  String get nestedCommentIndicatorStyle => 'Nested Comment Indicator Style';

  @override
  String get newComments => 'Новые комментарии';

  @override
  String get newPost => 'New Post';

  @override
  String get new_ => 'Новый';

  @override
  String get noComments => 'Ой. Нет комментариев.';

  @override
  String get noCommentsFound => 'Нет комментариев';

  @override
  String get noCommunitiesFound => 'Нет сообществ';

  @override
  String get noCommunityBlocks => 'Нет заблокированных сообществ.';

  @override
  String get noFavoritedCommunities => 'Нет избранных сообществ';

  @override
  String get noInstanceBlocks => 'Нет заблокированных инстансов.';

  @override
  String get noKeywordFilters => 'Фильтры ключевых слов не добавлены';

  @override
  String get noLanguage => 'Нет языка';

  @override
  String get noPosts => 'Нет постов';

  @override
  String get noPostsFound => 'Нет постов';

  @override
  String get noResultsFound => 'Результаты не найдены.';

  @override
  String get noSubscriptions => 'Нет подписок';

  @override
  String get noUserBlocks => 'Нет заблокированных пользователей.';

  @override
  String get noUsersFound => 'Нет пользователей';

  @override
  String notValidLemmyInstance(Object instance) {
    return '$instance не является действительным инстансом Lemmy';
  }

  @override
  String get notValidUrl => 'Недействительный URL-адрес';

  @override
  String get nothingToShare => 'Нечем поделиться';

  @override
  String notifications(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Уведомления',
      one: 'Уведомление',
      zero: 'Уведомлений',
    );
    return '$_temp0';
  }

  @override
  String get notificationsBehaviourSettings => 'Уведомления';

  @override
  String get notificationsNotAllowed => 'Notifications are not allowed for Thunder in system settings';

  @override
  String get notificationsWarningDialog => 'Notifications are an experimental feature which may not function correctly on all devices.\n\n· Checks will occur every ~15 minutes and will consume additional battery.\n\n· Disable battery optimizations for a higher likelihood of successful notifications.\n\nSee the following page for more information.';

  @override
  String get off => 'выключено';

  @override
  String get ok => 'OK';

  @override
  String get old => 'Старое';

  @override
  String get on => 'включено';

  @override
  String get onlyModsCanPostInCommunity => 'Только модераторы могут публиковать сообщения в этом сообществе';

  @override
  String get open => 'Открыть';

  @override
  String get openAccountSwitcher => 'Открыть переключение аккаунтов';

  @override
  String get openByDefault => 'Открыть по умолчанию';

  @override
  String get openInBrowser => 'Открыть в браузере';

  @override
  String get openInstance => 'Открыть инстанс';

  @override
  String get openLinksInExternalBrowser => 'Open Links in External Browser';

  @override
  String get openLinksInReaderMode => 'Open Links in Reader Mode';

  @override
  String get openSettings => 'Откройте настройки';

  @override
  String get overview => 'Обзор';

  @override
  String get password => 'Пароль';

  @override
  String get pending => 'Ожидание';

  @override
  String get permissionDenied => 'Разрешение не дано';

  @override
  String get permissionDeniedMessage => 'Для сохранения этого изображения Thunder требуются некоторые разрешения, которые были отклонены.';

  @override
  String get postBehaviourSettings => 'Посты';

  @override
  String get postBody => 'Текст сообщения';

  @override
  String get postBodySettings => 'Настройки тела сообщения';

  @override
  String get postBodySettingsDescription => 'Эти настройки влияют на отображение тела сообщения';

  @override
  String get postBodyViewType => 'Тип представления тела сообщения';

  @override
  String get postContentFontScale => 'Post Content Font Scale';

  @override
  String get postCreatedSuccessfully => 'Post created successfully!';

  @override
  String get postLocked => 'Пост заблокирован. Ответы не допускаются.';

  @override
  String get postNSFW => 'Пометить как NSFW';

  @override
  String get postPreview => 'Показать предпросмотр публикации с заданными настройками';

  @override
  String get postSavedAsDraft => 'Сообщение сохранено как черновик';

  @override
  String get postSwipeActions => 'Post Swipe Actions';

  @override
  String get postSwipeGesturesHint => 'Хотите вместо этого использовать кнопки? Измените, какие кнопки отображаются на открытках, в общих настройках.';

  @override
  String get postTitle => 'Название';

  @override
  String get postTitleFontScale => 'Post Title Font Scale';

  @override
  String get postTogglePreview => 'Переключить просмотр';

  @override
  String get postURL => 'Ссылка';

  @override
  String get postUploadImageError => 'Не удалось загрузить изображение';

  @override
  String get postViewType => 'Тип просмотра сообщения';

  @override
  String get posts => 'Посты';

  @override
  String get preview => 'Предпросмотр';

  @override
  String profileAppliedSuccessfully(Object profile) {
    return '$profile применён успешно!';
  }

  @override
  String get profiles => 'Профили';

  @override
  String get pureBlack => 'Pure Black';

  @override
  String get reachedTheBottom => 'Хм. Кажется, вы достигли конца.';

  @override
  String get readAll => 'Прочитать всё';

  @override
  String get reduceAnimations => 'Reduce Animations';

  @override
  String get reducesAnimations => 'Уменьшает количество анимаций, используемых в Thunder';

  @override
  String get refresh => 'Обновить';

  @override
  String get refreshContent => 'Обновить контент';

  @override
  String get remove => 'Удалить';

  @override
  String get removeAccount => 'Удалить аккаунт';

  @override
  String get removeFromFavorites => 'Удалить из избранных';

  @override
  String get removeInstance => 'Удалить инстанс';

  @override
  String removeKeyword(Object keyword) {
    return 'Удалить \"$keyword\"?';
  }

  @override
  String get removeKeywordFilter => 'Удалить ключевое слово';

  @override
  String get removedCommunityFromSubscriptions => 'Отписались от сообщества';

  @override
  String reply(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Ответы',
      one: 'Ответ',
      zero: 'Ответов',
    );
    return '$_temp0';
  }

  @override
  String get replyNotSupported => 'Ответ из этого инстанса в настоящее время пока не поддерживается';

  @override
  String get replyToPost => 'Ответ на пост';

  @override
  String replyingTo(Object author) {
    return 'Ответ $author';
  }

  @override
  String get report => 'Пожаловаться';

  @override
  String get reportComment => 'Пожаловаться на комментарий';

  @override
  String get reset => 'Сбросить';

  @override
  String get resetCommentPreferences => 'Сбросить параметры комментариев';

  @override
  String get resetPostPreferences => 'Сбросить параметры постов';

  @override
  String get resetPreferences => 'Сброс предпочтений';

  @override
  String get resetPreferencesAndData => 'Сбросить настройки и данные';

  @override
  String get restore => 'Восстановить';

  @override
  String get restoredCommentFromDraft => 'Восстановлен комментарий из черновика';

  @override
  String get restoredPostFromDraft => 'Восстановлен пост из черновика';

  @override
  String get retry => 'Ещё раз';

  @override
  String get rightLongSwipe => 'Right Long Swipe';

  @override
  String get rightShortSwipe => 'Right Short Swipe';

  @override
  String get save => 'Сохранить';

  @override
  String get saveSettings => 'Сохранить настройки';

  @override
  String get saved => 'Сохранено';

  @override
  String get scaled => 'Масштабированный';

  @override
  String get scrapeMissingLinkPreviews => 'Scrape Missing Link Previews';

  @override
  String get scrapeMissingPreviews => 'Включение приведет к снижению производительности.';

  @override
  String get screenReaderProfile => 'Профиль чтения экрана';

  @override
  String get screenReaderProfileDescription => 'Оптимизирует Thunder для программ чтения с экрана, уменьшая количество элементов и удаляя потенциально конфликтующие жесты.';

  @override
  String get search => 'Поиск';

  @override
  String get searchByText => 'Поиск по тексту';

  @override
  String get searchByUrl => 'Поиск по ссылке';

  @override
  String get searchComments => 'Поиск комментариев';

  @override
  String searchCommentsFederatedWith(Object instance) {
    return 'Поиск комментариев с помощью $instance';
  }

  @override
  String searchCommunitiesFederatedWith(Object instance) {
    return 'Поиск сообществ с $instance';
  }

  @override
  String searchInstance(Object instance) {
    return 'Поиск $instance';
  }

  @override
  String get searchPostSearchType => 'Выберите тип поиска сообщений';

  @override
  String searchPostsFederatedWith(Object instance) {
    return 'Поиск постов с $instance';
  }

  @override
  String get searchTerm => 'Поиск термина';

  @override
  String searchUsersFederatedWith(Object instance) {
    return 'Поиск пользователей с $instance';
  }

  @override
  String get selectCommunity => 'Выберите сообщество';

  @override
  String get selectFeedType => 'Выберите тип новостей';

  @override
  String get selectLanguage => 'Выберите язык';

  @override
  String get selectSearchType => 'Выберите тип поиска';

  @override
  String serverErrorComments(Object message) {
    return 'Ошибка сервера была обнаружена при получении дополнительных комментариев: $message';
  }

  @override
  String get setAction => 'Выбрать действие';

  @override
  String get setLongPress => 'Установить как действие при длительном нажатии';

  @override
  String get setShortPress => 'Установить как действие короткого нажатия';

  @override
  String settingTypeNotSupported(Object settingType) {
    return 'Настройки типа $settingType пока не поддерживаются.';
  }

  @override
  String get settings => 'Настройки';

  @override
  String get settingsFeedCards => 'Эти настройки применяются к карточкам в основной ленте, действия доступны всегда при фактическом открытии постов.';

  @override
  String get share => 'Поделиться';

  @override
  String get shareLink => 'Поделиться ссылкой';

  @override
  String get shareMedia => 'Поделиться медиа';

  @override
  String get sharePost => 'Поделиться постом';

  @override
  String get showAll => 'Показать все';

  @override
  String get showBotAccounts => 'Показать аккаунты ботов';

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
  String get showLess => 'Показать меньше';

  @override
  String get showMore => 'Показать больше';

  @override
  String get showPassword => 'Показать пароль';

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
  String get showReadPosts => 'Показать прочитанные сообщения';

  @override
  String get showScoreCounters => 'Display User Scores';

  @override
  String get showScores => 'Показать оценки сообщений/комментариев';

  @override
  String get showTextPostIndicator => 'Show Text Post Indicator';

  @override
  String get showThumbnailPreviewOnRight => 'Show Thumbnails on the Right';

  @override
  String get showUserDisplayNames => 'Show User Display Names';

  @override
  String get showUserInstance => 'Show User Instance';

  @override
  String get sidebar => 'Боковая панель';

  @override
  String get sidebarBottomNavDoubleTapDescription => 'Дважды коснитесь нижней панели навигации, чтобы открыть боковую панель';

  @override
  String get sidebarBottomNavSwipeDescription => 'Проведите пальцем по нижней панели навигации, чтобы открыть боковую панель';

  @override
  String get small => 'Small';

  @override
  String get somethingWentWrong => 'Упс! Что-то пошло не так!';

  @override
  String get sortBy => 'Сортировать по';

  @override
  String get sortByTop => 'Сортировать по топу';

  @override
  String get sortOptions => 'Опции сортировки';

  @override
  String get spoiler => 'Спойлер';

  @override
  String get submit => 'Отправить';

  @override
  String get subscribe => 'Подписаться';

  @override
  String get subscribeToCommunity => 'Subscribe to Community';

  @override
  String get subscribed => 'Подписано';

  @override
  String get subscriptions => 'Подписки';

  @override
  String get successfullyBlocked => 'Заблокировано.';

  @override
  String successfullyBlockedCommunity(Object communityName) {
    return 'Заблокировано $communityName';
  }

  @override
  String get successfullyUnblocked => 'Разблокировано.';

  @override
  String successfullyUnblockedCommunity(Object communityName) {
    return 'Разблокировано $communityName';
  }

  @override
  String get suggestedTitle => 'Предлагаемое название';

  @override
  String get system => 'System';

  @override
  String get tabletMode => 'Tablet Mode (2-column view)';

  @override
  String get tapToExit => 'Вернитесь дважды, чтобы выйти';

  @override
  String get tappableAuthorCommunity => 'Tappable Authors & Communities';

  @override
  String get text => 'Текст';

  @override
  String get theme => 'Theme';

  @override
  String get themeAccentColor => 'Accent Colors';

  @override
  String get theming => 'Темы';

  @override
  String get timeoutComments => 'Ошибка: тайм-аут при попытке получить комментарии';

  @override
  String get timeoutErrorMessage => 'Был тайм-аут ожидания ответа.';

  @override
  String get timeoutSaveComment => 'Ошибка: тайм-аут при попытке сохранить комментарий';

  @override
  String get timeoutSavingPost => 'Ошибка: тайм-аут при попытке сохранить сообщение.';

  @override
  String get timeoutUpvoteComment => 'Ошибка: тайм-аут при попытке проголосовать за комментарий';

  @override
  String get timeoutVotingPost => 'Ошибка: тайм-аут при попытке проголосовать за публикацию.';

  @override
  String get toggelRead => 'Переключить чтение';

  @override
  String get top => 'Топ';

  @override
  String get topAll => 'Топ за всё время';

  @override
  String get topDay => 'Популярно сегодня';

  @override
  String get topHour => 'Топ за час';

  @override
  String get topMonth => 'Популярно за месяц';

  @override
  String get topNineMonths => 'Топ за 9 месяцев';

  @override
  String get topSixHour => 'Топ за 6 часов';

  @override
  String get topSixMonths => 'Топ за полгода';

  @override
  String get topThreeMonths => 'Топ за 3 месяца';

  @override
  String get topTwelveHour => 'Топ за 12 часов';

  @override
  String get topWeek => 'Популярно за неделю';

  @override
  String get topYear => 'Популярно за год';

  @override
  String get totp => 'TOTP (необязательно)';

  @override
  String get translationsMayNotBeComplete => 'Обратите внимание, что переводы могут быть неполными';

  @override
  String get trendingCommunities => 'Популярные сообщества';

  @override
  String get trySearchingFor => 'Try searching for...';

  @override
  String get unableToFindCommunity => 'Не удалось найти сообщество';

  @override
  String unableToFindCommunityName(Object communityName) {
    return 'Unable to find community \'$communityName\'';
  }

  @override
  String get unableToFindInstance => 'Не удалось найти инстанс';

  @override
  String get unableToFindLanguage => 'Невозможно найти язык';

  @override
  String get unableToFindUser => 'Не удалось найти пользователя';

  @override
  String get unableToLoadImage => 'Невозможно загрузить изображение';

  @override
  String unableToLoadImageFrom(Object domain) {
    return 'Невозможно загрузить изображение с $domain';
  }

  @override
  String unableToLoadInstance(Object instance) {
    return 'Невозможно загрузить $instance';
  }

  @override
  String unableToLoadPostsFrominstance(Object instance) {
    return 'Невозможно загрузить посты из $instance';
  }

  @override
  String get unableToLoadReplies => 'Не удалось загрузить больше ответов.';

  @override
  String unableToNavigateToInstance(Object instanceHost) {
    return 'Unable to navigate to $instanceHost. It may not be a valid Lemmy instance.';
  }

  @override
  String get unblockInstance => 'Разблокировать инстанс';

  @override
  String get understandEnable => 'I Understand, Enable';

  @override
  String get unexpectedError => 'Неожиданная ошибка';

  @override
  String get unsubscribe => 'Отписаться';

  @override
  String get unsubscribeFromCommunity => 'Unsubscribe from Community';

  @override
  String get unsubscribePending => 'Отписаться (подписка в ожидании)';

  @override
  String get unsubscribed => 'Отписались';

  @override
  String updateReleased(Object version) {
    return 'Вышло обновление: $version';
  }

  @override
  String get uploadImage => 'Загрузка изображения';

  @override
  String get upvote => 'Против';

  @override
  String get uriNotSupported => 'Этот тип ссылки на данный момент не поддерживается.';

  @override
  String get url => 'Ссылка';

  @override
  String get useAdvancedShareSheet => 'Use Advanced Share Sheet';

  @override
  String get useCompactView => 'Включить для небольших постов, отключить для больших.';

  @override
  String get useMaterialYouTheme => 'Use Material You Theme';

  @override
  String get useMaterialYouThemeDescription => 'Overrides the selected custom theme';

  @override
  String useSuggestedTitle(Object title) {
    return 'Использовать предложенное название: $title';
  }

  @override
  String get userFormat => 'Формат пользователя';

  @override
  String get userNotLoggedIn => 'Пользователь не авторизован';

  @override
  String get userProfiles => 'Профили пользователей';

  @override
  String get userSettingDescription => 'Эти настройки синхронизируются с вашим аккаунтом Lemmy и применяются только к каждому аккаунту.';

  @override
  String get username => 'Имя пользователя';

  @override
  String get users => 'Пользователи';

  @override
  String get viewAllComments => 'Показать все комментарии';

  @override
  String get visitCommunity => 'Посетите сообщество';

  @override
  String get visitInstance => 'Посетите инстанс';

  @override
  String get visitUserProfile => 'Посетить профиль пользователя';

  @override
  String get warning => 'Warning';

  @override
  String xDownvotes(Object x) {
    return '$x против';
  }

  @override
  String xScore(Object x) {
    return '$x очков';
  }

  @override
  String xUpvotes(Object x) {
    return '$x за';
  }
}
