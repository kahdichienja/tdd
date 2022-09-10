part of 'get_users_cubit.dart';


@freezed
abstract class GetUsersState with _$GetUsersState {
  const factory GetUsersState.initial({required GetUsersStatePayload payload}) = _InitialGetUsersState;
  const factory GetUsersState.laoding({required GetUsersStatePayload payload}) = _LoadingGetUsersState;
  const factory GetUsersState.error({required GetUsersStatePayload payload}) = _ErrorGetUsersState;
  const factory GetUsersState.laoded({required GetUsersStatePayload payload}) = _LoadedGetUsersState;

}

@freezed
abstract class GetUsersStatePayload with _$GetUsersStatePayload {
  const factory GetUsersStatePayload({
    required String error,
    List<UserModel>? users,

  }) = _GetUsersStatePayload;

  factory GetUsersStatePayload.fromJson(Map<String, dynamic> json) => _$GetUsersStatePayloadFromJson(json);
}
