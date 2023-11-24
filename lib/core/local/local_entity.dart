import 'package:floor/floor.dart';
import 'package:json_annotation/json_annotation.dart';

part 'local_entity.g.dart';

@Entity(tableName: "local", primaryKeys: [])
@JsonSerializable()
class LocalEntity {
  @primaryKey
  final String name;
  final String value;
  LocalEntity({
    required this.name,
    required this.value,
  });
  factory LocalEntity.fromJson(Map<String, dynamic> json) =>
      _$LocalEntityFromJson(json);
  Map<String, dynamic> toJson() => _$LocalEntityToJson(this);
}
