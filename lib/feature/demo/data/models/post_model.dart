import 'package:json_annotation/json_annotation.dart';
import 'package:template/feature/demo/domain/entities/post.dart';

part 'post_model.g.dart';

@JsonSerializable()
class PostModel extends PostEntity {
  @override
  final int? id;
  @override
  final String? title;
  @override
  final String? body;
  @override
  final int? userId;

  const PostModel({
    this.id,
    this.title,
    this.body,
    this.userId,
  });

  factory PostModel.fromJson(Map<String, dynamic> json) =>
      _$PostModelFromJson(json);

  Map<String, dynamic> toJson() => _$PostModelToJson(this);
}
