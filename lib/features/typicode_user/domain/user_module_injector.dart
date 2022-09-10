import 'package:kiwi/kiwi.dart';
import 'package:tdd/core/data/network/network_service.dart';
import 'package:tdd/features/typicode_user/data/datasources/users_remote_datasource.dart';
import 'package:tdd/features/typicode_user/data/repository/user_repository_implementation.dart';
import 'package:tdd/features/typicode_user/domain/repository/user_repository.dart';
import 'package:tdd/features/typicode_user/domain/usecases/get_users.dart';



part 'user_module_injector.g.dart';

abstract class UserModuleInjector {
  static KiwiContainer? container;
  // ignore: always_specify_types
  static final resolve = container!.resolve;

  void setup() {
    container = KiwiContainer();
    _$UserModuleInjector()._configure();
  }

  @Register.factory(UserRemoteDatasource, from: UserRemoteDatasourceImpl)
  // @Register.factory(UsertLocalDatasource, from: UsertLocalDatasourceImpl)
  @Register.factory(UserRepository, from: UserRepositoryImpl)
  @Register.singleton(GetUser)

  void _configure(); // ignore: unused_element
}

UserModuleInjector userModuleInjector() => _$UserModuleInjector();