import 'package:capstone_mobile/model/create_thread_response.dart';
import 'package:capstone_mobile/model/list_thread_response.dart';
import 'package:capstone_mobile/service/login_service.dart';
import 'package:dio/dio.dart';

class ThreadService {
  Future<ResponseThread> getAllThread() async {
    String cekUser = await getToken();
    final response = await Dio().get(
      "https://capstone-production-c8c9.up.railway.app/Allthreads",
      options: Options(
        headers: {
          'Content-Type': 'application/json;charset=UTF-8',
          'Authorization':
              'Bearer $cekUser'
        },
      ),
    );
    print(response.statusMessage);
    // print(response);
    return ResponseThread.fromJson(response.data);
  }

  // create Thread
  Future<void> postThread(
      {required String title, required String content}) async {
    final response = await Dio().post(
        "http://ec2-54-206-29-131.ap-southeast-2.compute.amazonaws.com:8000/threads",
        options: Options(headers: {
          'Content-Type': 'application/json;charset=UTF-8',
          'Authorization':
              'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJleHAiOjE2ODcyNzY2OTQsIm5hbWUiOiJyYXloYW4iLCJyb2xlIjoiVXNlciIsInVzZXJfaWQiOjN9.z7M0E7pouLB3VTHDEqxLpBusEmNztZjixFVrZr4U0v8'
        }),
        data: {
          "title": title,
          "content": content,
        });
    if (response.statusCode == 200) {
      print("berhasil");
    }
  }
}
