import 'package:feedbook/ui/app_snackbar.dart';
import 'package:feedbook/core/constants.dart';
import 'package:feedbook/ui/app_colors.dart';
import 'package:feedbook/data.dart';
import 'package:feedbook/ui/widgets/responsive.dart';
import 'package:feedbook/ui/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NavScreen extends StatelessWidget {
  final _scrollController = ScrollController();
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return Responsive(
      desktop: DefaultTabController(
        length: Constants.webIcons.length,
        child: Scaffold(
          appBar: PreferredSize(
            preferredSize: Size(screenSize.width, 60.0),
            child: CustomAppBar(currentUser: currentUser),
          ),
          body: TabBarView(children: Constants.webScreens),
        ),
      ),
      mobile: DefaultTabController(
        length: Constants.icons.length,
        child: NestedScrollView(
          controller: _scrollController,
          floatHeaderSlivers: true,
          body: TabBarView(children: Constants.screens),
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            _addTabControllerListener(context);
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
                    onPressed: () => AppSnackBar.show(context, 'Search'),
                  ),
                  SizedBox(width: 10.0),
                  CircleButton(
                    icon: FontAwesomeIcons.facebookMessenger,
                    onPressed: () => AppSnackBar.show(context, 'Messenger'),
                  ),
                ],
                bottom: TabBar(
                  unselectedLabelColor: Colors.black,
                  labelColor: AppColors.faceBlue,
                  tabs: List.generate(
                    Constants.icons.length,
                    (i) => Tab(icon: Icon(Constants.icons[i])),
                  ),
                ),
              ),
            ];
          },
        ),
      ),
    );
  }

  void _addTabControllerListener(BuildContext context) {
    TabController? _tabController;
    _tabController ??= DefaultTabController.of(context)!
      ..addListener(() {
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
      });
  }
}
