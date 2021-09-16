import 'package:feedbook/core/api_service.dart';
import 'package:feedbook/core/models/models.dart';

class Repository {
  ApiService _apiService = ApiService();
  Future<List<Post>> fetchPosts() =>
      Future.delayed(Duration(seconds: 2), () => _apiService.getData());
}
