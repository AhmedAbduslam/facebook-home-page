import 'package:feedbook/data.dart';
import 'package:flutter/material.dart';
import 'package:feedbook/ui/widgets/widgets.dart';

class HomeScreenMobile extends StatelessWidget {
  final ScrollController _scrollController;
  const HomeScreenMobile(this._scrollController);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      controller: _scrollController,
      physics: ClampingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
            child: CreatePostContainer(currentUser: currentUser)),
        SliverToBoxAdapter(child: SizedBox(height: 10)),
        SliverToBoxAdapter(
            child: Stories(currentUser: currentUser, stories: stories)),
        SliverToBoxAdapter(child: SizedBox(height: 5)),
        SliverToBoxAdapter(child: PostsListWidget()),
      ],
    );
  }
}
