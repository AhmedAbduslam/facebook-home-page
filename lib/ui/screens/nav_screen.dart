import 'package:feedbook/app_snackbar.dart';
import 'package:feedbook/ui/colors.dart';
import 'package:feedbook/data.dart';
import 'package:feedbook/ui/screens/home_screen.dart';
import 'package:feedbook/ui/widgets/widgets.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NavScreen extends StatefulWidget {
  @override
  _NavScreenState createState() => _NavScreenState();
}

class _NavScreenState extends State<NavScreen> {
  final _scrollController = ScrollController();
  TabController? _tabController;

  void _handleTabSelection() {
    if (_tabController?.index != _tabController?.previousIndex) {
      switch (_tabController?.index) {
        case 0:
          _scrollController.position.moveTo(
              _scrollController.position.minScrollExtent,
              duration: Duration(milliseconds: 500),
              curve: Curves.easeInOut);
          break;
        default:
          _scrollController.position.moveTo(
              _scrollController.position.maxScrollExtent,
              duration: Duration(milliseconds: 500),
              curve: Curves.easeInOut);
          break;
      }
    }
  }

  @override
  void dispose() {
    _scrollController.dispose();
    _tabController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return kIsWeb
        ? DefaultTabController(
            length: _webIcons.length,
            child: Scaffold(
              appBar: PreferredSize(
                preferredSize: Size(screenSize.width, 60.0),
                child: CustomAppBar(
                  currentUser: currentUser,
                  icons: _webIcons,
                ),
              ),
              body: TabBarView(children: _webScreens),
            ),
          )
        : DefaultTabController(
            length: _icons.length,
            child: NestedScrollView(
              controller: _scrollController,
              floatHeaderSlivers: true,
              body: TabBarView(children: _screens),
              headerSliverBuilder: (context, innerBoxIsScrolled) {
                _tabController ??= DefaultTabController.of(context)!
                  ..addListener(_handleTabSelection);
                return [
                  SliverAppBar(
                    backgroundColor: Colors.white,
                    elevation: 1,
                    centerTitle: false,
                    pinned: true,
                    floating: true,
                    snap: true,
                    title: Text(
                      'facebook',
                      style: const TextStyle(
                        color: AppColors.faceBlue,
                        fontSize: 28.0,
                        fontWeight: FontWeight.bold,
                        letterSpacing: -1.2,
                      ),
                    ),
                    actions: [
                      CircleButton(
                        icon: Icons.search,
                        iconSize: 28.0,
                        onPressed: () => AppSnackBar.show(context, 'Search'),
                      ),
                      SizedBox(width: 10.0),
                      CircleButton(
                        icon: FontAwesomeIcons.facebookMessenger,
                        iconSize: 28.0,
                        onPressed: () => AppSnackBar.show(context, 'Messenger'),
                      ),
                    ],
                    bottom: TabBar(
                      unselectedLabelColor: Colors.black,
                      labelColor: AppColors.faceBlue,
                      tabs: List.generate(
                        _icons.length,
                        (i) => Tab(icon: Icon(_icons[i])),
                      ),
                    ),
                  ),
                ];
              },
            ),
          );
  }

  final List<Widget> _screens = [
    HomeScreen(),
    Scaffold(body: Center(child: Icon(FontAwesomeIcons.userFriends))),
    Scaffold(body: Center(child: Icon(FontAwesomeIcons.userCircle))),
    Scaffold(body: Center(child: Icon(FontAwesomeIcons.solidFlag))),
    Scaffold(body: Center(child: Icon(FontAwesomeIcons.solidBell))),
    Scaffold(body: Center(child: Icon(Icons.menu))),
  ];

  final List<Widget> _webScreens = [
    HomeScreen(),
    Scaffold(body: Center(child: Icon(FontAwesomeIcons.solidFlag))),
    Scaffold(body: Center(child: Icon(Icons.ondemand_video))),
    Scaffold(body: Center(child: Icon(FontAwesomeIcons.store))),
    Scaffold(body: Center(child: Icon(FontAwesomeIcons.users))),
  ];

  final List<IconData> _icons = const [
    Icons.home,
    FontAwesomeIcons.userFriends,
    FontAwesomeIcons.userCircle,
    FontAwesomeIcons.solidFlag,
    FontAwesomeIcons.solidBell,
    Icons.menu,
  ];
  final List<IconData> _webIcons = const [
    Icons.home,
    FontAwesomeIcons.flag,
    Icons.ondemand_video,
    FontAwesomeIcons.store,
    FontAwesomeIcons.users,
  ];
}
