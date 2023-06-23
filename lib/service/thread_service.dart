import 'dart:io';

import 'package:capstone_mobile/model/create_thread_response.dart';
import 'package:capstone_mobile/model/list_thread_response.dart';
import 'package:capstone_mobile/service/login_service.dart';
import 'package:dio/dio.dart';

class ThreadService {
  Future<ResponseThread> getAllThread() async {
    // ignore: unused_local_variable
    String cekUser = await getToken();

    final response = await Dio().get(
      "https://capstone-production-c8c9.up.railway.app/Allthreads",
      options: Options(
        headers: {
          'Content-Type': 'application/json;charset=UTF-8',
          'Authorization': 'Bearer $cekUser'
        },
      ),
    );
    return ResponseThread.fromJson(response.data);
  }

  // create Thread
  Future<void> postThread(
      {required String title, required String content, File? imageFile}) async {
    String cekUser = await getToken();
    try {
      final response = await Dio()
          .post("https://capstone-production-c8c9.up.railway.app/threads",
              options: Options(headers: {
                'Content-Type': 'application/json;charset=UTF-8',
                'Authorization': 'Bearer $cekUser'
              }),
              data: {
            "title": title,
            "content": content,
            "file": imageFile,
          });
      if (response.statusCode == 200) {
        print("berhasil");
      }
    } on DioException catch (e) {
      print(e);
    }
  }
}
