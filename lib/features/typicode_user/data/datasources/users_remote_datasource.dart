import 'package:dartz/dartz_unsafe.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:tdd/core/data/datasources/remote_datasource_base.dart';
import 'package:tdd/core/data/network/network_service.dart';
import 'package:tdd/core/data/network/network_service_impl.dart';
import 'package:tdd/core/utilities/error_helpers.dart';
import 'package:tdd/features/typicode_user/data/datasources/users_endpoints.dart';
import 'package:tdd/features/typicode_user/data/model/users_model.dart';

abstract class UserRemoteDatasource implements RemoteDatasource {
  Future<List<UserModel>> getUsers();
}

class UserRemoteDatasourceImpl implements UserRemoteDatasource {
  final NetworkService _networkService;

  UserRemoteDatasourceImpl(this._networkService);

  @override
  void dispose() {}

  @override
  Future<List<UserModel>> getUsers() async {
    List<UserModel> _data = <UserModel>[];
    try {
      final res = await _networkService.getHttp(
        UserEndPoint.users,
      );
       res.data.forEach((e) => 
      
      _data.add(UserModel.fromJson(e)));
      
    } on DioError catch (e) {
      handleApiFailure(
        source: 'getUsers',
        errorMessage: e.message,
        errorCode: e as ApiErrors,
      );
    } catch (e) {
      handleApiFailure(
        source: 'getUsers',
        errorMessage: e.toString(),
        errorCode: e as ApiErrors,
      );
    }


    return _data;
  }
}
