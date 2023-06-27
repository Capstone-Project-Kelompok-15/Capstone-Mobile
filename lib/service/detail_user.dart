import 'package:capstone_mobile/constant.dart';
import 'package:capstone_mobile/model/detail_user_response.dart';
import 'package:capstone_mobile/model/update_detail_user_response.dart';
import 'package:capstone_mobile/service/login_service.dart';
import 'package:capstone_mobile/service/thread_service.dart';
import 'package:dio/dio.dart';

class UserService {
  Future<DetailUserResponse> getdetailUser() async {
    String cekUser = await getToken();
    final response = await Dio().get(
      '$baseUrl/user',
      options: Options(
        headers: {
          'Content-Type': 'application/json;charset=UTF-8',
          'Authorization': 'Bearer $cekUser'
        },
      ),
    );
    print(response);
    return DetailUserResponse.fromMap(response.data);
  }
}
