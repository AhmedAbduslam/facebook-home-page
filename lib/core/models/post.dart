import 'package:feedbook/core/models/models.dart';

class Post {
  final String id;
  final User user;
  final String text;
  final DateTime postDate;
  final List<String>? imageUrl;
  final List<User> likers;
  final int comments;
  final int shares;

  const Post({
    required this.id,
    required this.user,
    required this.text,
    required this.postDate,
    this.imageUrl,
    required this.likers,
    required this.comments,
    required this.shares,
  });
}
