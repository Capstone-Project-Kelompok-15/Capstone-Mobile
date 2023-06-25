// import 'package:capstone_mobile/service/login_service.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

// import '../constant.dart';
import '../constant.dart';
import '../model/list_followthread_response.dart';
import 'login_service.dart';

class FollowThreadService {
  Future<ListFollowThreadResponse> getAllFollowThread() async {
    // ignore: unused_local_variable
    String cekUser = await getToken();

    final response = await Dio().get(
      "$baseUrl/follow",
      options: Options(
        headers: {
          'Content-Type': 'application/json;charset=UTF-8',
          'Authorization': 'Bearer $cekUser'
        },
      ),
    );
    print(getAllFollowThread());
    return ListFollowThreadResponse.fromJson(response.data);
  }

// create follow thread
  Future<void> postFollowThread({
    required int userId,
    required int threadId,
    required BuildContext context,
  }) async {
    String cekUser = await getToken();
    try {
      final response = await Dio().post("$baseUrl/follow",
          options: Options(headers: {
            'Content-Type': 'application/json;charset=UTF-8',
            'Authorization': 'Bearer $cekUser'
          }),
          data: {
            "user_id": userId,
            "thread_id": threadId,
          });
      if (response.statusCode == 200) {
        print("Ikuti Thread");
        print(response.data);
        final snackBar = SnackBar(
            content: const Text('Yay! A SnackBar!'),
          );

          // Find the ScaffoldMessenger in the widget tree
          // and use it to show a SnackBar.
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
      }
    } on DioError catch (e) {
      print(e.response?.data);
      final snackBar = SnackBar(
            content: const Text('Yay! A Gagal!'),
          );

          // Find the ScaffoldMessenger in the widget tree
          // and use it to show a SnackBar.
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }
  }
}


// class FollowThreadService {
//   Future<ListFollowThreadResponse> getAllFollowThread() async {
//     final response = await Dio()
//         .get("https://capstone-production-c8c9.up.railway.app/follow",
//             options: Options(
//               headers: {
//                 'Content-Type': 'application/json;charset=UTF-8',
//                 'Authorization':
//                     'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJleHAiOjE2ODc3NTg5NjMsIm5hbWUiOiJhamVuZzEiLCJyb2xlIjoiVXNlciIsInVzZXJfaWQiOjE0fQ.aylqqBJic9GHD_MbHGmZOnVO4Qa3Siwp9KKeXZDhl4g'
//               },
//             ));
//     print(response);
//     return ListFollowThreadResponse.fromJson(response.data);
//   }
// }



