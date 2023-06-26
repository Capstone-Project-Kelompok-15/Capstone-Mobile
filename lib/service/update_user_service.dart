import 'dart:async';

import 'package:capstone_mobile/model/update_detail_user_response.dart';
import 'package:dio/dio.dart';

import '../constant.dart';
import 'login_service.dart';

class UpdateUser {
  Future<UpdateUserResponse> updateUser(
    String username,
    String bio,
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
}
