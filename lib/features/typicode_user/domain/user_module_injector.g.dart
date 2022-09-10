// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_module_injector.dart';

// **************************************************************************
// KiwiInjectorGenerator
// **************************************************************************

class _$UserModuleInjector extends UserModuleInjector {
  @override
  void _configure() {
    final KiwiContainer container = KiwiContainer();
    container
      ..registerFactory<UserRemoteDatasource>(
          (c) => UserRemoteDatasourceImpl(c<NetworkService>()))
      ..registerFactory<UserRepository>(
          (c) => UserRepositoryImpl(c<UserRemoteDatasource>()))
      ..registerSingleton((c) => GetUser(c<UserRepository>()));
  }
}
