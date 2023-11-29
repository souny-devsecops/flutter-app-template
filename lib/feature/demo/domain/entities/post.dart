import 'package:equatable/equatable.dart';

class PostEntity extends Equatable {
  final int? id;
  final String? title;
  final String? body;
  final int? userId;

  const PostEntity({
    this.id,
    this.title,
    this.body,
    this.userId,
  });

  @override
  List<Object?> get props => [id, title, body, userId];
}
