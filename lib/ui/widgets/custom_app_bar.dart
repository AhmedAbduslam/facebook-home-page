import 'package:feedbook/app_snackbar.dart';
import 'package:feedbook/core/models/models.dart';
import 'package:feedbook/ui/colors.dart';
import 'package:feedbook/ui/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomAppBar extends StatelessWidget {
  final User currentUser;
  final List<IconData> icons;

  const CustomAppBar({
    required this.currentUser,
    required this.icons,
  });

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
          Expanded(
            child: _LeftSection(),
          ),
          Spacer(),
          Expanded(
            flex: 2,
            child: _MidSection(icons: icons),
          ),
          Spacer(),
          Expanded(
            child: FittedBox(
              child: _RightSection(currentUser: currentUser),
            ),
          ),
        ],
      ),
    );
  }
}

class _RightSection extends StatelessWidget {
  const _RightSection({required this.currentUser});

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

class _MidSection extends StatelessWidget {
  const _MidSection({required this.icons});

  final List<IconData> icons;

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
        tabs: List.generate(icons.length, (i) => Tab(icon: Icon(icons[i]))),
      ),
    );
  }
}

class _LeftSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: double.infinity,
          child: Icon(
            FontAwesomeIcons.facebook,
            color: AppColors.faceBlue,
          ),
        ),
        SizedBox(
          width: 5.0,
        ),
        Expanded(
          child: TextField(
            decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(32.0)),
                  borderSide: BorderSide.none,
                ),
                filled: true,
                hintStyle: TextStyle(color: Colors.grey[800]),
                hintText: 'Search Feedbook',
                fillColor: Colors.blueGrey[50]),
          ),
        ),
      ],
    );
  }
}
