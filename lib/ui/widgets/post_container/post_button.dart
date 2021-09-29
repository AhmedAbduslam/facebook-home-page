import 'package:feedbook/ui/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PostButton extends StatelessWidget {
  final IconData icon;
  final String label;
  final void Function() onTap;

  const PostButton({
    required this.icon,
    required this.label,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextButton.icon(
        onPressed: onTap,
        icon: FaIcon(
          icon,
          color: AppColors.grey,
          size: 20.0,
        ),
        label: Text(
          label,
          style: TextStyle(color: AppColors.grey),
        ),
        style: ButtonStyle(
          padding: MaterialStateProperty.all(EdgeInsets.zero),
        ),
      ),
    );
  }
}
