import 'package:capstone_mobile/model/list_bookmark_response.dart';
import 'package:dio/dio.dart';


class BookmarkService {
  Future<GetAllBookmarkResponse> getAllBookmark() async {
    final response = await Dio()
        .get("https://capstone-production-c8c9.up.railway.app/bookmark",
            options: Options(
              headers: {
                'Content-Type': 'application/json;charset=UTF-8',
                'Authorization':
                    'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJleHAiOjE2ODc2NzczODEsIm5hbWUiOiJ3aW5keSIsInJvbGUiOiJVc2VyIiwidXNlcl9pZCI6MTh9.8PLYCmFmDjgbK70qtelaHtq1AUZME8EXmszR7-Taw_I'
              },
            ));
    print(response);
    return GetAllBookmarkResponse.fromJson(response.data);
  }
}