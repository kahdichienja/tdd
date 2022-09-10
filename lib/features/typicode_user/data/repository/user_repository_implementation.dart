import 'package:tdd/core/utilities/data/guarded_datasource_calls.dart';
import 'package:tdd/features/typicode_user/data/datasources/users_remote_datasource.dart';
import 'package:tdd/features/typicode_user/data/model/users_model.dart';
import 'package:tdd/features/typicode_user/domain/repository/user_repository.dart';

class UserRepositoryImpl implements UserRepository {
  // final UserLocalDatasource _localDatasource;

  final UserRemoteDatasource _remoteDatasource;

  UserRepositoryImpl(/*this._localDatasource,*/ this._remoteDatasource);

  @override
  Future<List<UserModel>> getUsers()async {
        final res = await guardedApiCall<List<UserModel>>(
      _remoteDatasource.getUsers,
    );
    //incase on failure, query lacal data
    // if (res != null) {
    //   await guardedCacheAccess(
    //     () => _localDatasource.saveWallet(res),
    //   );
    // }

    return res;
  }
}
