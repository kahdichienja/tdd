import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tdd/features/typicode_user/application/get_users_cubit.dart';
import 'package:tdd/features/typicode_user/domain/usecases/get_users.dart';
import 'package:tdd/features/typicode_user/domain/user_module_injector.dart';

final providers = [
  BlocProvider<GetUsersCubit>(
    create: (_) => GetUsersCubit(
      UserModuleInjector.resolve<GetUser>(),
    )..getUsers(),
  ),
];
