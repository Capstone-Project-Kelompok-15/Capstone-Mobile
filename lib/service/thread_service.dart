import 'package:dio/dio.dart';

class ThreadService {
  Future<void> postThread(
      {required String title, required String content}) async {
    final response = await Dio().post("", data: {
      "title": title,
      "content": content,
    });
    if (response.statusCode == 200) {
      print("berhasil");
    }
  }
}
