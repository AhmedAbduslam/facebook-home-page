part of 'posts_cubit.dart';

@immutable
abstract class PostsState {}

class PostsInitial extends PostsState {}

class PostsLoaded extends PostsState {
  final List<Post> posts;

  PostsLoaded(this.posts);
}

class PostsLoading extends PostsState {
  final List<Post> oldPosts;

  PostsLoading(this.oldPosts);
}
