import 'dart:async';
import 'dart:io';

import 'package:capstone_mobile/model/update_detail_user_response.dart';
import 'package:dio/dio.dart';

import '../constant.dart';
import 'login_service.dart';

class UpdateUser {
  Future<UpdateUserResponse> updateUser(
    String username,
    String bio,
    String imageUrl,
  ) async {
    String token = await getToken();

    try {
      final response = await Dio().put("$baseUrl/userprofile",
          options: Options(
            headers: {"Authorization": "Bearer $token"},
          ),
          data: {
            'username': username,
            'bio': bio,
            'image_url': imageUrl,
          });
      if (response.statusCode == 200) {
        print("berhasil");
        print(response.data);
        return UpdateUserResponse.fromMap(response.data);
      }
    } on DioException catch (e) {
      print(e.response?.data);
    }
    throw Exception('Failed to update user.');
  }

  Future<String> uploadImage(imageFile) async {
    // ignore: unused_local_variable
    FormData formData = FormData.fromMap({
      'image_url': await MultipartFile.fromFile(imageFile.path),
    });
    try {
      final response = await Dio().post(
          "http://ec2-54-206-29-131.ap-southeast-2.compute.amazonaws.com:8000/uploadImage",
          data: formData);
      final url = response.data["Data"];
      // ignore: unnecessary_null_comparison
      print(url);
      // print("ini dalah url image terbaru $urlImage");
      return url;
    } on Exception catch (e) {
      print(e);
      // Berhasil mengunggah gambar
    }
    throw Exception('Failed to Updater Profile');
  }
}
