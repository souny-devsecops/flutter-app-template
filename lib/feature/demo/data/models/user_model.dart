import 'package:json_annotation/json_annotation.dart';
import 'package:template/feature/demo/domain/entities/user.dart';

part 'user_model.g.dart';

@JsonSerializable()
class GeoModel extends GeoEntity {
  @override
  final String? lat;
  @override
  final String? lng;

  const GeoModel({this.lat, this.lng});

  factory GeoModel.fromJson(Map<String, dynamic> json) =>
      _$GeoModelFromJson(json);

  Map<String, dynamic> toJson() => _$GeoModelToJson(this);
}

@JsonSerializable()
class AddressModel extends AddressEntity {
  @override
  final String? street;
  @override
  final String? suite;
  @override
  final String? city;
  @override
  final String? zipcode;
  @override
  final GeoModel? geo;

  const AddressModel({
    this.street,
    this.suite,
    this.city,
    this.zipcode,
    this.geo,
  });

  factory AddressModel.fromJson(Map<String, dynamic> json) =>
      _$AddressModelFromJson(json);

  Map<String, dynamic> toJson() => _$AddressModelToJson(this);
}

@JsonSerializable()
class CompanyModel extends CompanyEntity {
  @override
  final String? name;
  @override
  final String? catchPhrase;
  @override
  final String? bs;
  const CompanyModel({
    this.name,
    this.catchPhrase,
    this.bs,
  });
  factory CompanyModel.fromJson(Map<String, dynamic> json) =>
      _$CompanyModelFromJson(json);

  Map<String, dynamic> toJson() => _$CompanyModelToJson(this);
}

@JsonSerializable()
class TodoModel extends TodoEntity {
  @override
  final int? userId;
  @override
  final int? id;
  @override
  final String? title;
  @override
  final bool? completed;

  const TodoModel({
    this.userId,
    this.id,
    this.title,
    this.completed,
  });

  factory TodoModel.fromJson(Map<String, dynamic> json) =>
      _$TodoModelFromJson(json);

  Map<String, dynamic> toJson() => _$TodoModelToJson(this);
}

@JsonSerializable()
class UserModel extends UserEntity {
  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? username;
  @override
  final String? email;
  @override
  final AddressModel? address;
  @override
  final String? phone;
  @override
  final String? website;
  @override
  final CompanyModel? company;
  @override
  final List<TodoModel>? todos;

  const UserModel({
    this.id,
    this.name,
    this.username,
    this.email,
    this.address,
    this.phone,
    this.website,
    this.company,
    this.todos,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);

  Map<String, dynamic> toJson() => _$UserModelToJson(this);
}

@JsonSerializable()
class DataModel extends DataEntity {
  final List<UserModel>? data;
  @override
  final String? msg;

  const DataModel({
    this.data,
    this.msg,
  }) : super(msg: msg, users: data);

  factory DataModel.fromJson(Map<String, dynamic> json) =>
      _$DataModelFromJson(json);

  Map<String, dynamic> toJson() => _$DataModelToJson(this);
}
