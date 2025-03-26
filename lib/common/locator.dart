import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'locator.config.dart';

GetIt getIt = GetIt.instance;


@InjectableInit(initializerName: 'init', // default  
  preferRelativeImports: true, // default  
  asExtension: true,)
Future<GetIt> configure() => getIt.init();

