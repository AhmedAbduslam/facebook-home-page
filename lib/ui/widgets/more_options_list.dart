import 'package:feedbook/ui/app_snackbar.dart';
import 'package:feedbook/core/models/models.dart';
import 'package:feedbook/ui/app_colors.dart';
import 'package:feedbook/ui/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MoreOptionsList extends StatelessWidget {
  final List<List> _moreOptionsList = const [
    [FontAwesomeIcons.userFriends, Colors.cyan, 'Friends'],
    [FontAwesomeIcons.history, Colors.deepPurple, 'Memories'],
    [FontAwesomeIcons.users, AppColors.faceBlue, 'Groups'],
    [Icons.flag, Colors.orange, 'Pages'],
    [FontAwesomeIcons.store, AppColors.faceBlue, 'Marketplace'],
    [Icons.ondemand_video, AppColors.faceBlue, 'Watch'],
    [FontAwesomeIcons.calendar, Colors.red, 'Events'],
  ];

  final User currentUser;

  const MoreOptionsList({required this.currentUser});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxWidth: 280.0),
      child: ListView.builder(
        itemCount: _moreOptionsList.length,
        itemBuilder: (BuildContext context, int index) {
          if (index == 0) {
            return Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: UserCard(user: currentUser),
            );
          }
          final List option = _moreOptionsList[index];
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: _Option(
              icon: option[0],
              color: option[1],
              label: option[2],
            ),
          );
        },
      ),
    );
  }
}

class _Option extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String label;

  const _Option({
    required this.icon,
    required this.color,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => AppSnackBar.show(context, label),
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Icon(icon, size: 30, color: color),
          ),
          const SizedBox(width: 16.0),
          Flexible(
            child: Text(
              label,
              style: StyleText.bodyText,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}
