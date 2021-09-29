import 'package:feedbook/ui/app_snackbar.dart';
import 'package:feedbook/core/models/models.dart';
import 'package:feedbook/ui/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RightSection extends StatelessWidget {
  const RightSection({required this.currentUser});

  final User currentUser;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        UserCard(user: currentUser, isFullName: false),
        const SizedBox(width: 5.0),
        CircleButton(
          icon: Icons.grid_4x4,
          onPressed: () => AppSnackBar.show(context, 'menu'),
        ),
        const SizedBox(width: 5.0),
        CircleButton(
          icon: FontAwesomeIcons.facebookMessenger,
          onPressed: () => AppSnackBar.show(context, 'Messenger'),
        ),
        const SizedBox(width: 5.0),
        CircleButton(
          icon: Icons.notification_important,
          onPressed: () => AppSnackBar.show(context, 'notfication'),
        ),
        const SizedBox(width: 5.0),
        CircleButton(
          icon: Icons.arrow_drop_down,
          onPressed: () => AppSnackBar.show(context, 'settings'),
        )
      ],
    );
  }
}
