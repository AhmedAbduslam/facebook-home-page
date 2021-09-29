import 'package:feedbook/ui/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LeftSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: double.infinity,
          child: FaIcon(
            FontAwesomeIcons.facebook,
            color: AppColors.faceBlue,
          ),
        ),
        SizedBox(width: 5.0),
        Expanded(
          child: TextField(
            decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(32.0)),
                  borderSide: BorderSide.none,
                ),
                filled: true,
                hintStyle: TextStyle(color: AppColors.grey),
                hintText: 'Search Feedbook',
                fillColor: AppColors.blueGrey),
          ),
        ),
      ],
    );
  }
}
