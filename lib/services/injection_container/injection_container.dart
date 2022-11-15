import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:pokemon_recruitment_task/services/injection_container/injection_container.config.dart';

final getIt = GetIt.instance;

@InjectableInit(
  initializerName: r'$initGetIt',
  preferRelativeImports: false,
)
void configureInjector() => $initGetIt(getIt);
