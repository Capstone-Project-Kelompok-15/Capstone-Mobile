import 'package:capstone_mobile/constant.dart';
import 'package:dio/dio.dart';

class CommentThread {
  Future<void> postComment({
    required int threadId,
    required String comment,
  }) async {
    try {
      final response = await Dio().post(
        "$baseUrl/comment",
        data: {
          "thread_id": threadId,
          "comment": comment,
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
