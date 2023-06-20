import 'package:capstone_mobile/model/create_thread_response.dart';
import 'package:capstone_mobile/model/list_thread_response.dart';
import 'package:dio/dio.dart';

class ThreadService {
  Future<ResponseThread> getAllThread() async {
    final response = await Dio().get(
      "http://ec2-54-206-29-131.ap-southeast-2.compute.amazonaws.com:8000/Allthreads",
      options: Options(
        headers: {
          'Content-Type': 'application/json;charset=UTF-8',
          'Authorization':
              'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJleHAiOjE2ODcyNzY2OTQsIm5hbWUiOiJyYXloYW4iLCJyb2xlIjoiVXNlciIsInVzZXJfaWQiOjN9.z7M0E7pouLB3VTHDEqxLpBusEmNztZjixFVrZr4U0v8'
        },
      ),
    );
    print(response);
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
