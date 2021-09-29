import 'package:feedbook/core/bloc/posts_cubit.dart';
import 'package:feedbook/ui/screens/desktop_home_screen.dart';
import 'package:feedbook/ui/screens/mobile_home_screen.dart';
import 'package:feedbook/ui/widgets/responsive.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (_) => PostsCubit()..loadPosts(),
        child: Providerbody(),
      ),
    );
  }
}

class Providerbody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Responsive(
      desktop: HomeScreenDesktop(scrollController(context)),
      mobile: HomeScreenMobile(scrollController(context)),
    );
  }

  ScrollController scrollController(BuildContext context) {
    final _controller = ScrollController();
    _controller.addListener(() {
      if (_controller.position.atEdge && _controller.position.pixels != 0)
        context.read<PostsCubit>().loadPosts();
    });
    return _controller;
  }
}
