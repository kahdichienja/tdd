import 'package:dartz/dartz.dart';
import 'package:tdd/features/typicode_user/data/model/users_model.dart';
import 'package:tdd/features/typicode_user/domain/repository/user_repository.dart';
import '../../../../core/failures.dart';
import '../../../../core/usecase_typedefs.dart';
import '../../../../core/utilities/utilities.dart';


class GetUser implements Usecase<List<UserModel>, NoParams> {
  final UserRepository _repo;

  GetUser(this._repo);

  @override
  Future<Either<UIError, List<UserModel>>> call([NoParams? params]) async {
    try {
      final res = await _repo.getUsers();

      return Right(res);
    } on NetworkFailure catch (e, s) {
      return Left(getUIErrorFromUsecaseFailure(e.message, e, s));
    } on CacheFailure catch (e, s) {
      return Left(getUIErrorFromUsecaseFailure(e.message, e, s));
    }
  }
}
