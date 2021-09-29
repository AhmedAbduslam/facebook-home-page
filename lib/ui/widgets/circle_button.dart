import 'package:feedbook/ui/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CircleButton extends StatelessWidget {
  final IconData icon;
  final void Function() onPressed;

  const CircleButton({
    required this.icon,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.blueGrey,
        shape: BoxShape.circle,
      ),
      child: IconButton(
        padding: const EdgeInsets.all(0.0),
        icon: FaIcon(icon),
        color: Colors.black,
        onPressed: onPressed,
      ),
    );
  }
}
