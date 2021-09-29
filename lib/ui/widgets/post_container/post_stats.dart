import 'package:feedbook/core/models/models.dart';
import 'package:feedbook/ui/app_colors.dart';
import 'package:feedbook/ui/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PostStats extends StatelessWidget {
  final Post post;
  const PostStats({required this.post});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              padding: const EdgeInsets.all(4.0),
              decoration: BoxDecoration(
                color: AppColors.faceBlue,
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.thumb_up,
                size: 10.0,
                color: Colors.white,
              ),
            ),
            const SizedBox(width: 4.0),
            Expanded(
              child: InteractionDetails(text: '${post.likers.length}'),
            ),
            const SizedBox(width: 8.0),
            InteractionDetails(text: '${post.comments} Comments'),
            const SizedBox(width: 8.0),
            InteractionDetails(
                text: '${post.likers.length}' '${post.shares} Shares'),
          ],
        ),
        const Divider(),
        Row(
          children: [
            PostButton(
              icon: FontAwesomeIcons.thumbsUp,
              label: 'Like',
              onTap: () => print('Like'),
            ),
            PostButton(
              icon: FontAwesomeIcons.comment,
              label: 'Comment',
              onTap: () => print('Comment'),
            ),
            PostButton(
              icon: FontAwesomeIcons.share,
              label: 'Share',
              onTap: () => print('Share'),
            )
          ],
        ),
      ],
    );
  }
}

class InteractionDetails extends StatelessWidget {
  const InteractionDetails({required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(color: AppColors.grey),
    );
  }
}
