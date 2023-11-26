import 'package:equatable/equatable.dart';

class GeoEntity extends Equatable {
  final String? lat;
  final String? lng;

  const GeoEntity({
    this.lat,
    this.lng,
  });

  @override
  List<Object?> get props => [lat, lng];
}

class AddressEntity extends Equatable {
  final String? street;
  final String? suite;
  final String? city;
  final String? zipcode;
  final GeoEntity? geo;

  const AddressEntity({
    this.street,
    this.suite,
    this.city,
    this.zipcode,
    this.geo,
  });

  @override
  List<Object?> get props => [street, suite, city, zipcode, geo];
}

class CompanyEntity extends Equatable {
  final String? name;
  final String? catchPhrase;
  final String? bs;

  const CompanyEntity({
    this.name,
    this.catchPhrase,
    this.bs,
  });
  @override
  List<Object?> get props => [name, catchPhrase, bs];
}

class TodoEntity extends Equatable {
  final int? userId;
  final int? id;
  final String? title;
  final bool? completed;

  const TodoEntity({
    this.userId,
    this.id,
    this.title,
    this.completed,
  });

  @override
  List<Object?> get props => [userId, id, title, completed];
}

class UserEntity extends Equatable {
  final int? id;
  final String? name;
  final String? username;
  final String? email;
  final AddressEntity? address;
  final String? phone;
  final String? website;
  final CompanyEntity? company;
  final List<TodoEntity>? todos;

  const UserEntity({
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

  @override
  List<Object?> get props =>
      [id, name, username, email, address, phone, website, company, todos];
}

class DataEntity extends Equatable {
  final List<UserEntity>? users;
  final String? msg;

  const DataEntity({
    this.users,
    this.msg,
  });

  @override
  List<Object?> get props => [
        users,
        msg,
      ];
}
