import 'package:feedbook/core/models/models.dart';
import 'package:feedbook/ui/widgets/widgets.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  final User currentUser;

  const CustomAppBar({required this.currentUser});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 8.0),
      height: 65.0,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            offset: Offset(0, 2),
            blurRadius: 4.0,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(child: LeftSection()),
          Spacer(),
          Expanded(flex: 2, child: MidSection()),
          Spacer(),
          Expanded(
            child: FittedBox(
              child: RightSection(currentUser: currentUser),
            ),
          ),
        ],
      ),
    );
  }
}
