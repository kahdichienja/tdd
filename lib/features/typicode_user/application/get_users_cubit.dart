import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tdd/features/typicode_user/data/model/users_model.dart';
import 'package:tdd/features/typicode_user/domain/usecases/get_users.dart';

part 'get_users_state.dart';
part 'get_users_cubit.freezed.dart';
part 'get_users_cubit.g.dart';

class GetUsersCubit extends Cubit<GetUsersState> {
  final GetUser _getUser;

  GetUsersCubit(this._getUser)
      : super(
          const GetUsersState.initial(
            payload: GetUsersStatePayload(
              error: '',
              users: [],
            ),
          ),
        );

  Future<void> getUsers() async {
    emit(GetUsersState.laoding(payload: state.payload.copyWith()));

    final result = await _getUser();

    result.fold(
      (l) => emit(GetUsersState.error(
          payload: state.payload.copyWith(error: l.message))),
      (r) => emit(
        GetUsersState.laoded(payload: state.payload.copyWith(users: r)),
      ),
    );
  }
}
