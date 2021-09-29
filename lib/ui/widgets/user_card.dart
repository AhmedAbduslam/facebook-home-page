import 'package:feedbook/core/models/models.dart';
import 'package:feedbook/ui/app_colors.dart';
import 'package:feedbook/ui/widgets/widgets.dart';
import 'package:flutter/material.dart';

class UserCard extends StatelessWidget {
  final User user;
  final bool isFullName;

  const UserCard({
    required this.user,
    this.isFullName = true,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          ProfileAvatar(imageUrl: user.imageUrl),
          const SizedBox(width: 6.0),
          Flexible(
            child: Text(
              "${user.firstName} ${isFullName ? user.lastName : ''}",
              overflow: TextOverflow.ellipsis,
              style: StyleText.bodyText,
            ),
          ),
        ],
      ),
    );
  }
}
