import 'package:capstone_mobile/constant.dart';
import 'package:capstone_mobile/model/list_bookmark_response.dart';
import 'package:capstone_mobile/service/login_service.dart';
import 'package:dio/dio.dart';

class BookmarkService {
  Future<GetAllBookmarkResponse> getAllBookmark() async {
    final response = await Dio().get(
      "https://capstone-production-c8c9.up.railway.app/bookmark",
      options: Options(
        headers: {
          'Content-Type': 'application/json;charset=UTF-8',
          'Authorization':
              'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJleHAiOjE2ODc2NzczODEsIm5hbWUiOiJ3aW5keSIsInJvbGUiOiJVc2VyIiwidXNlcl9pZCI6MTh9.8PLYCmFmDjgbK70qtelaHtq1AUZME8EXmszR7-Taw_I'
        },
      ),
    );
    print(response);
    return GetAllBookmarkResponse.fromJson(response.data);
  }

  // create bookmark
  Future<void> addBookmark({
    String? title,
    String? content,
    String? imageFile,
  }) async {
    String cekUser = await getToken();
    try {
      final response = await Dio().post(
        "$baseUrl/threads",
        options: Options(
          headers: {
            'Content-Type': 'application/json;charset=UTF-8',
            'Authorization': 'Bearer $cekUser'
          },
        ),
        data: {
          "title": title,
          "content": content,
          "file": imageFile!,
        },
      );
      if (response.statusCode == 200) {
        print("berhasil");
      }
    } on DioException catch (e) {
      print(e);
    }
  }
}
