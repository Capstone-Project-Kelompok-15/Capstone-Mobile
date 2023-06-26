import 'package:capstone_mobile/model/list_search.dart';
import 'package:dio/dio.dart';

import '../constant.dart';
import 'login_service.dart';

class Search {
  Future<SearchThread> searchTitle(String title) async {
    String token = await getToken();

    final response = await Dio().get("$baseUrl/threads",
        queryParameters: {"title": title},
        options: Options(headers: {"Authorization": "Bearer $token"}));

    return SearchThread.fromJson(response.data);
  }
}
