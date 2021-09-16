import 'dart:async';

import 'package:feedbook/core/models/models.dart';
import 'package:feedbook/core/repository..dart';

class HomePageBloc {
  Repository _repository = Repository();

  final _postListController = StreamController<List<Post>>();

  Stream<List<Post>> get postsListStream => _postListController.stream;

  Future<void> getPosts() async {
    List<Post> _postList = await _repository.fetchPosts();
    _postListController.sink.add(_postList);
  }

  dispose() {
    _postListController.close();
  }
}
