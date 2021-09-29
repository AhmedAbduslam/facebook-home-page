import 'package:bloc/bloc.dart';
import 'package:feedbook/core/models/models.dart';
import 'package:feedbook/core/repository..dart';
import 'package:feedbook/data.dart';
import 'package:meta/meta.dart';

part 'posts_state.dart';

class PostsCubit extends Cubit<PostsState> {
  PostsCubit() : super(PostsInitial());

  int page = 0;
  Repository _repository = Repository();

  void loadPosts() {
    if (page >= posts.length) return;
    if (state is PostsLoading) return;
    final currentState = state;

    var oldPosts = <Post>[];
    if (currentState is PostsLoaded) {
      oldPosts = currentState.posts;
    }

    emit(PostsLoading(oldPosts));

    _repository.fetchPosts(page).then((newPosts) {
      page++;

      final posts = (state as PostsLoading).oldPosts;
      posts.addAll(newPosts);

      emit(PostsLoaded(posts));
    });
  }
}
