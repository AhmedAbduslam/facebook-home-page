import 'package:feedbook/core/bloc/%20bloc_provider.dart';
import 'package:feedbook/core/models/models.dart';
import 'package:feedbook/core/bloc/home_page_bloc.dart';
import 'package:feedbook/data.dart';
import 'package:feedbook/ui/widgets/shimmer_post_container.dart';
import 'package:feedbook/ui/widgets/widgets.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  HomePageBloc _bloc = HomePageBloc();

  @override
  void initState() {
    super.initState();
    _bloc.getPosts();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        bloc: _bloc,
        child: kIsWeb ? _HomeScreenDesktop() : _HomeScreenMobile(),
      ),
    );
  }
}

class _HomeScreenDesktop extends StatelessWidget {
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
          _MidSection(),
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
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * .5,
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: CustomScrollView(
        controller: TrackingScrollController(),
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
            child: StreamBuilder<List<Post>>(
              stream: BlocProvider.of(context).bloc.postsListStream,
              builder: (context, snapshot) {
                return snapshot.hasData
                    ? Column(
                        children: [
                          ...List.generate(
                            snapshot.data!.length,
                            (index) => Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20.0),
                              child: PostContainer(post: snapshot.data![index]),
                            ),
                          )
                        ],
                      )
                    : Container(
                        margin: const EdgeInsets.symmetric(horizontal: 20.0),
                        height: MediaQuery.of(context).size.height * .2,
                        color: Colors.white,
                        child: Shimmer.fromColors(
                          highlightColor: Colors.white,
                          baseColor: (Colors.grey[300])!,
                          child: ShimmerPostContainer(),
                        ),
                      );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class _HomeScreenMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () async => BlocProvider.of(context).bloc.getPosts(),
      child: CustomScrollView(
        physics: ClampingScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(
            child: CreatePostContainer(currentUser: currentUser),
          ),
          SliverToBoxAdapter(child: SizedBox(height: 10)),
          SliverToBoxAdapter(
            child: Stories(currentUser: currentUser, stories: stories),
          ),
          SliverToBoxAdapter(child: SizedBox(height: 5)),
          SliverToBoxAdapter(
            child: StreamBuilder<List<Post>>(
              stream: BlocProvider.of(context).bloc.postsListStream,
              builder: (context, snapshot) {
                return snapshot.connectionState == ConnectionState.waiting
                    ? Container(
                        margin: const EdgeInsets.only(top: 5.0),
                        height: MediaQuery.of(context).size.height * .2,
                        color: Colors.white,
                        child: Shimmer.fromColors(
                          highlightColor: Colors.white,
                          baseColor: (Colors.grey[300])!,
                          child: ShimmerPostContainer(),
                        ),
                      )
                    : Column(
                        children: [
                          ...List.generate(
                            snapshot.data!.length,
                            (index) =>
                                PostContainer(post: snapshot.data![index]),
                          ),
                        ],
                      );
              },
            ),
          ),
        ],
      ),
    );
  }
}
