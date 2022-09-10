import 'package:tdd/features/typicode_user/data/model/users_model.dart';

abstract class UserRepository {
  Future<List<UserModel>> getUsers();
}

