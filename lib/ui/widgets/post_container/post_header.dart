import 'package:feedbook/ui/app_snackbar.dart';
import 'package:feedbook/core/models/models.dart';
import 'package:feedbook/ui/app_colors.dart';
import 'package:feedbook/ui/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class PostHeader extends StatelessWidget {
  final Post post;

  const PostHeader({required this.post});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ProfileAvatar(imageUrl: post.user.imageUrl),
        const SizedBox(width: 8.0),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '${post.user.firstName} ${post.user.lastName}',
                style: const TextStyle(fontWeight: FontWeight.w600),
              ),
              Row(
                children: [
                  Text(
                    DateTime.now().difference(post.postDate).inDays > 7
                        ? DateFormat('MMM dd, yyy').format(post.postDate)
                        : '${DateTime.now().difference(post.postDate).inDays.toString()} days ago ',
                    style: TextStyle(
                      color: AppColors.grey,
                      fontSize: 12.0,
                    ),
                  ),
                  Icon(
                    Icons.public,
                    color: AppColors.grey,
                    size: 12.0,
                  )
                ],
              ),
            ],
          ),
        ),
        IconButton(
          icon: const Icon(Icons.more_horiz),
          onPressed: () => AppSnackBar.show(context, 'More'),
        ),
      ],
    );
  }
}
