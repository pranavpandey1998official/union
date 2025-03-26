import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:dynamic_color/dynamic_color.dart';
import 'package:equatable/equatable.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:l10n_esperanto/l10n_esperanto.dart';
import 'package:path_provider/path_provider.dart';
import 'package:uniun/common/locator.dart';
import 'package:uniun/core/bloc/thunder/thunder_bloc.dart';
import 'package:uniun/core/bloc/uniun/uniun_bloc.dart';
import 'package:uniun/core/bloc/uniun/uniun_state.dart';
import 'package:uniun/core/bloc/user/user_bloc.dart';
import 'package:uniun/core/enum/theme_type.dart';
import 'package:uniun/core/log/log.dart';
import 'package:uniun/core/router.dart';
import 'package:uniun/search/bloc/search_bloc.dart';
import 'package:uniun/utils/global_context.dart';
import 'package:uniun/flutter_gen/gen_l10n/app_localizations.dart';


Future<void>  main() async{
  WidgetsFlutterBinding.ensureInitialized();
  EquatableConfig.stringify = true;

  final HydratedStorage storage = await HydratedStorage.build(
    storageDirectory: kIsWeb
        ? HydratedStorage.webStorageDirectory
        : await getTemporaryDirectory(),
  );
  HydratedBloc.storage = storage;

  // initializing dependency injection
  await configure();
  Log.init();

  // Theme
  final AdaptiveThemeMode? savedThemeMode = await AdaptiveTheme.getThemeMode();

  runApp(Union(
    savedThemeMode: savedThemeMode
  ));
}

class Union extends StatelessWidget {
  const Union({
    super.key,
    this.savedThemeMode,
  });
  final AdaptiveThemeMode? savedThemeMode;
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(providers: [
          BlocProvider(create: (context) => UniunBloc()),
          BlocProvider(create: (context) => UserBloc()..add(CheckAuth())),
          BlocProvider(create: (context) => ThunderBloc()),
          BlocProvider(create: (context) => getIt<SearchBloc>()),
        ], 
        child: BlocBuilder<UserBloc, UserState>(
          builder: (context, state) {
            return BlocBuilder<UniunBloc, UniunState>(
              builder: (context, state) {
                return DynamicColorBuilder(
                builder: (lightColorScheme, darkColorScheme) {
                
                ThemeData theme = FlexThemeData.light(useMaterial3: true, scheme: FlexScheme.values.byName(state.selectedTheme.name));
                ThemeData darkTheme = FlexThemeData.dark(useMaterial3: true, scheme: FlexScheme.values.byName(state.selectedTheme.name), darkIsTrueBlack: state.themeType == ThemeType.pureBlack);
            
                const PageTransitionsTheme pageTransitionsTheme = PageTransitionsTheme(builders: {
                  TargetPlatform.android: CupertinoPageTransitionsBuilder(),
                  TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
                });
            
                if (state.useMaterialYouTheme == true) {
                  theme = ThemeData(
                    colorScheme: lightColorScheme,
                    useMaterial3: true,
                  );
            
                  darkTheme = FlexThemeData.dark(
                    useMaterial3: true,
                    colorScheme: darkColorScheme,
                    darkIsTrueBlack: state.themeType == ThemeType.pureBlack,
                  );
                }
            
                theme = theme.copyWith(
                  pageTransitionsTheme: pageTransitionsTheme,
                );
                
                darkTheme = darkTheme.copyWith(
                  pageTransitionsTheme: pageTransitionsTheme,
                );
            
                SystemChrome.setSystemUIOverlayStyle(
                    SystemUiOverlayStyle(
                      systemNavigationBarColor: Colors.black.withOpacity(0.0001),
                    ),
                );
            
                Locale? locale = AppLocalizations.supportedLocales.where((Locale locale) => locale.languageCode == state.appLanguageCode).firstOrNull;
                return MaterialApp.router(
                    title: 'Uniun',
                    routerConfig: routeGenerator(),
                    locale: locale,
                      localizationsDelegates: const [
                        ...AppLocalizations.localizationsDelegates,
                        MaterialLocalizationsEo.delegate,
                        CupertinoLocalizationsEo.delegate,
                      ],
                      supportedLocales: const [
                        ...AppLocalizations.supportedLocales,
                        Locale('eo'), // Additional locale which is not officially supported: Esperanto
                      ],
                    themeMode: state.themeType == ThemeType.system ? ThemeMode.system : (state.themeType == ThemeType.light ? ThemeMode.light : ThemeMode.dark),
                    theme: theme,
                    darkTheme: darkTheme,
                    scaffoldMessengerKey: GlobalContext.scaffoldMessengerKey,
                );
              }
            );
            });
          }
        )
    );
  }
}

