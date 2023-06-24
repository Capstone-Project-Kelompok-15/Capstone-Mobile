import 'package:capstone_mobile/model/detail_user_response.dart';
import 'package:capstone_mobile/model/update_detail_user_response.dart';
import 'package:capstone_mobile/service/thread_service.dart';
import 'package:dio/dio.dart';

class UserService {
  String path = 'https://capstone-production-c8c9.up.railway.app/user';
  Future<DetailUserResponse> getdetailUser() async {
    final response = await Dio().get(
      path,
      options: Options(
        headers: {
          'Content-Type': 'application/json;charset=UTF-8',
          'Authorization':
              'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJleHAiOjE2ODc2MjY1NTUsIm5hbWUiOiJoYWhhaGEiLCJyb2xlIjoiVXNlciIsInVzZXJfaWQiOjEyfQ.vSj39Mm8iP6iK5h6sQDKkDDUnH9rRauQv0mPMLYs3k0'
        },
      ),
    );
    print(response);
    return DetailUserResponse.fromMap(response.data);
  }

  Future<UpdateDetailUserResponse> updatedetailUser(
      {required String bio, required String username}) async {
    try {
      var response = await Dio().put(
        path,
        data: {
          'username': username,
          'bio': bio,
        },
      );
      if (response.statusCode == 200) {
        return UpdateDetailUserResponse.fromMap(response.data);
      }
      return UpdateDetailUserResponse();
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}
