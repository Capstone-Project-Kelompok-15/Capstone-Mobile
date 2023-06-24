// ignore_for_file: unused_import

import 'dart:io';

import 'package:capstone_mobile/constant.dart';
import 'package:capstone_mobile/model/list_thread_response.dart';
import 'package:capstone_mobile/service/login_service.dart';
import 'package:dio/dio.dart';
import 'package:image_picker/image_picker.dart';

class ThreadService {
  Future<ResponseThread> getAllThread() async {
    // ignore: unused_local_variable
    String cekUser = await getToken();

    final response = await Dio().get(
      "$baseUrl/Allthreads",
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
  Future<void> postThread({
    required String title,
    required String content,
    String? imageFile,
  }) async {
    String cekUser = await getToken();
    try {
      final response = await Dio().post("$baseUrl/threads",
          options: Options(headers: {
            'Content-Type': 'application/json;charset=UTF-8',
            'Authorization': 'Bearer $cekUser'
          }),
          data: {
            "title": title,
            "content": content,
            "file": imageFile!,
          });
      if (response.statusCode == 200) {
        print("berhasil");
      }
    } on DioException catch (e) {
      print(e);
    }
  }
}
