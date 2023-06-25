import 'package:dio/dio.dart';

import '../model/list_bookmark_response.dart';

class BookmarkService {
  Future<ListBookmarkResponse> getAllBookmark() async {
    final response = await Dio()
        .get("https://capstone-production-c8c9.up.railway.app/bookmark",
            options: Options(
              headers: {
                'Content-Type': 'application/json;charset=UTF-8',
                'Authorization':
                    'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJleHAiOjE2ODc4MDE3NDEsIm5hbWUiOiJhamVuZzEiLCJyb2xlIjoiVXNlciIsInVzZXJfaWQiOjE0fQ.AB08-IkYSiyJavrYLZfg5mihDN6EKPI_Hie3dwvRER0'
              },
            ));
    print(response);
    return ListBookmarkResponse.fromJson(response.data);
  }
}