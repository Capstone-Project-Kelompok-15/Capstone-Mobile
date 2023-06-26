import 'package:capstone_mobile/constant.dart';
import 'package:capstone_mobile/model/thread_id_response.dart';
import 'package:capstone_mobile/service/login_service.dart';
import 'package:dio/dio.dart';

class CommentThread {
  Future<void> postComment({
    required int threadId,
    required String comment,
  }) async {
    String cekUser = await getToken();
    try {
      final response = await Dio().post(
        "$baseUrl/comment",
        data: {
          "thread_id": threadId,
          "comment": comment,
        },
        options: Options(
          headers: {
            'Content-Type': 'application/json;charset=UTF-8',
            'Authorization': 'Bearer $cekUser'
          },
        ),
      );
      if (response.statusCode == 200) {
        print("berhasil");
      }
    } on DioException catch (e) {
      print(e);
    }
  }

  Future<ThreadIdResponse> getThreadByID({required int id}) async {
    String cekUser = await getToken();
    final response = await Dio().get(
      "$baseUrl/threads/$id",
      options: Options(
        headers: {
          'Content-Type': 'application/json;charset=UTF-8',
          'Authorization': 'Bearer $cekUser'
        },
      ),
    );
    print(response);
    return ThreadIdResponse.fromJson(response.data);
  }
}
