// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_users_cubit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GetUsersStatePayload _$_$_GetUsersStatePayloadFromJson(
    Map<String, dynamic> json) {
  return _$_GetUsersStatePayload(
    error: json['error'] as String,
    users: (json['users'] as List<dynamic>?)
        ?.map((e) => UserModel.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$_$_GetUsersStatePayloadToJson(
        _$_GetUsersStatePayload instance) =>
    <String, dynamic>{
      'error': instance.error,
      'users': instance.users,
    };
