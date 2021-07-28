import 'package:flutter_firebase_blog/domain/user/user.dart';
import 'package:intl/intl.dart';

class Post {
  final String? title;
  final String? content;
  final UserModel? user;
  final DateTime? created;
  final DateTime? updated;

  Post({
    this.title,
    this.content,
    this.user,
    this.created,
    this.updated,
  });

  Post.fromJson(Map<String, dynamic> json)
      : title = json['title'],
        content = json['content'],
        user = UserModel.fromMap(json['user']),
        created = DateFormat("yyyy-mm-dd").parse(json['created']),
        updated = DateFormat("yyyy-mm-dd").parse(json['updated']);

  Map<String, Object?> toJson() {
    return {
      'title': title,
      'content': content,
      'user': user!.toJson(),
      'created': created,
      'updated': updated,
    };
  }
}
