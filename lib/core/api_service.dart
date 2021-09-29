import 'package:feedbook/core/models/models.dart';
import 'package:feedbook/data.dart';

class ApiService {
  Future<List<Post>> getData(int page) async => posts[page]..shuffle();
}
