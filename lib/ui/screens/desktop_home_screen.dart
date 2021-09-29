import 'package:feedbook/data.dart';
import 'package:feedbook/ui/widgets/widgets.dart';
import 'package:flutter/material.dart';

class HomeScreenDesktop extends StatelessWidget {
  final ScrollController _scrollController;
  const HomeScreenDesktop(this._scrollController);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: MoreOptionsList(currentUser: currentUser),
          ),
          Spacer(),
          _MidSection(_scrollController),
          Spacer(),
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.only(top: 20.0, right: 5.0),
              child: ContactsList(users: users),
            ),
          ),
        ],
      ),
    );
  }
}

class _MidSection extends StatelessWidget {
  final ScrollController _scrollController;
  const _MidSection(this._scrollController);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * .5,
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: CustomScrollView(
        controller: _scrollController,
        slivers: [
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Stories(currentUser: currentUser, stories: stories),
            ),
          ),
          SliverToBoxAdapter(child: SizedBox(height: 10.0)),
          SliverToBoxAdapter(
            child: CreatePostContainer(currentUser: currentUser),
          ),
          SliverToBoxAdapter(child: SizedBox(height: 10.0)),
          SliverToBoxAdapter(
            child: Rooms(
              onlineUsers: users,
              scrollController: ScrollController(),
            ),
          ),
          SliverToBoxAdapter(child: SizedBox(height: 10.0)),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: PostsListWidget(),
            ),
          ),
        ],
      ),
    );
  }
}
