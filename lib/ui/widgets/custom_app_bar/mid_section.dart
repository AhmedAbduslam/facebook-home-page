import 'package:feedbook/core/constants.dart';
import 'package:feedbook/ui/app_colors.dart';
import 'package:flutter/material.dart';

class MidSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: 600.0,
      child: TabBar(
        unselectedLabelColor: Colors.black,
        labelColor: AppColors.faceBlue,
        indicatorPadding: EdgeInsets.zero,
        indicator: BoxDecoration(
            border: Border(
          bottom: BorderSide(
            color: AppColors.faceBlue,
            width: 3.0,
          ),
        )),
        tabs: List.generate(Constants.webIcons.length,
            (i) => Tab(icon: Icon(Constants.webIcons[i]))),
      ),
    );
  }
}
