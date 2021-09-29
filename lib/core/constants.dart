import 'package:feedbook/ui/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Constants {
  static final List<Widget> screens = [
    HomeScreen(),
    Scaffold(body: Center(child: FaIcon(FontAwesomeIcons.userFriends))),
    Scaffold(body: Center(child: FaIcon(FontAwesomeIcons.userCircle))),
    Scaffold(body: Center(child: FaIcon(FontAwesomeIcons.solidFlag))),
    Scaffold(body: Center(child: FaIcon(FontAwesomeIcons.solidBell))),
    Scaffold(body: Center(child: Icon(Icons.menu))),
  ];

  static final List<Widget> webScreens = [
    HomeScreen(),
    Scaffold(body: Center(child: FaIcon(FontAwesomeIcons.solidFlag))),
    Scaffold(body: Center(child: Icon(Icons.ondemand_video))),
    Scaffold(body: Center(child: FaIcon(FontAwesomeIcons.store))),
    Scaffold(body: Center(child: FaIcon(FontAwesomeIcons.users))),
  ];

  static final List<IconData> icons = const [
    Icons.home,
    FontAwesomeIcons.userFriends,
    FontAwesomeIcons.userCircle,
    FontAwesomeIcons.solidFlag,
    FontAwesomeIcons.solidBell,
    Icons.menu,
  ];
  static final List<IconData> webIcons = const [
    Icons.home,
    FontAwesomeIcons.flag,
    Icons.ondemand_video,
    FontAwesomeIcons.store,
    FontAwesomeIcons.users,
  ];
}
