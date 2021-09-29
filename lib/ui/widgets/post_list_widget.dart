import 'package:feedbook/core/bloc/posts_cubit.dart';
import 'package:feedbook/core/models/models.dart';
import 'package:feedbook/ui/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PostsListWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PostsCubit, PostsState>(
      builder: (context, state) {
        List<Post> posts = [];

        if (state is PostsLoading) {
          posts = state.oldPosts;
        } else if (state is PostsLoaded) {
          posts = state.posts;
        }

        return Column(
          children: [
            ...List.generate(
              posts.length,
              (index) => PostContainer(post: posts[index]),
            ),
            ShimmerPostContainer(),
          ],
        );
      },
    );
  }
}
