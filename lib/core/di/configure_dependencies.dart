

import 'package:tdd/features/typicode_user/domain/user_module_injector.dart';

import 'core_injector.dart';

void configureDependencies() {
  coreInjector().setup();
  userModuleInjector().setup();
}
