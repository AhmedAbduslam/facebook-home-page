import 'package:feedbook/core/models/models.dart';
import 'package:feedbook/ui/widgets/custom_indicator.dart';
import 'package:feedbook/ui/widgets/widgets.dart';
import 'package:flutter/material.dart';

class PostContainer extends StatelessWidget {
  final Post post;

  const PostContainer({required this.post});

  @override
  Widget build(BuildContext context) {
    final postImage = post.imageUrl ?? [];
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5.0),
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      color: Colors.white,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                PostHeader(post: post),
                const SizedBox(height: 4.0),
                Text(post.text),
                post.imageUrl != null
                    ? const SizedBox.shrink()
                    : const SizedBox(height: 6.0),
              ],
            ),
          ),
          if (post.imageUrl != null) CustomIndicator(postImage),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: PostStats(post: post),
          ),
        ],
      ),
    );
  }
}
