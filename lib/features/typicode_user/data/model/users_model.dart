import 'package:freezed_annotation/freezed_annotation.dart';
part 'users_model.freezed.dart';
part 'users_model.g.dart';
@freezed
abstract class UserModel with _$UserModel {
  const factory UserModel({
    int? id,
    String? name,
    String? username,
    String? email,
    String? phone,
    String? website,
    Address? address,
    Company? company,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) => _$UserModelFromJson(
        Map.castFrom<dynamic, dynamic, String, dynamic>(json),
      );
}

@freezed
abstract class Address with _$Address {
  const factory Address({
    String? street,
    String? suite,
    String? city,
    String? zipcode,
    Geo? geo,
  }) = _Address;

  factory Address.fromJson(Map<String, dynamic> json) => _$AddressFromJson(
        Map.castFrom<dynamic, dynamic, String, dynamic>(json),
      );
}

@freezed
abstract class Geo with _$Geo {
  const factory Geo({
    String? lat,
    String? lng,
  }) = _Geo;

  factory Geo.fromJson(Map<String, dynamic> json) => _$GeoFromJson(
        Map.castFrom<dynamic, dynamic, String, dynamic>(json),
      );
}
@freezed
abstract class Company with _$Company {
  const factory Company({
    String? name,
    String? catchPhrase,
    String? bs,
  }) = _Company;

  factory Company.fromJson(Map<String, dynamic> json) => _$CompanyFromJson(
        Map.castFrom<dynamic, dynamic, String, dynamic>(json),
      );
}