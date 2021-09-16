import 'package:feedbook/ui/colors.dart';
import 'package:flutter/material.dart';

class CircleButton extends StatelessWidget {
  final IconData icon;
  final double? iconSize;
  final void Function() onPressed;

  const CircleButton({
    required this.icon,
    this.iconSize,
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
        icon: Icon(icon),
        color: Colors.black,
        onPressed: onPressed,
      ),
    );
  }
}
