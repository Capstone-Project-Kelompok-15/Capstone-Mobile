import 'package:dio/dio.dart';

class Registrasi {
  Future<int> createUser({
    required String username,
    required String email,
    required String password,
    required int age,
  }) async {
    try {
      final response = await Dio().post(
        "http://ec2-54-206-29-131.ap-southeast-2.compute.amazonaws.com:8000/user",
        data: {
          "username": username,
          "email": email,
          "password": password,
          "age": age,
          "image_url":
              "https://res.cloudinary.com/dwvq529jy/image/upload/v1687364629/Uploads/empty.jpg.jpg"
        },
      );
      print(response);
      if (response.statusCode == 200) {
        print("User berhasil dibuat");
        return 1;
      } else {
        return 0;
      }
    } on DioException catch (e) {
      print(e);
      return 0;
    }
  }
}
