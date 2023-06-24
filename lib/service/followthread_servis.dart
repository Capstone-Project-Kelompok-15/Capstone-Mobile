import 'package:dio/dio.dart';

import '../model/list_followthread_response.dart';

class FollowThreadService {
  Future<ListFollowThreadResponse> getAllFollowThread() async {
    final response = await Dio()
        .get("https://capstone-production-c8c9.up.railway.app/follow",
            options: Options(
              headers: {
                'Content-Type': 'application/json;charset=UTF-8',
                'Authorization':
                    'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJleHAiOjE2ODc2MTU2NjksIm5hbWUiOiJ3YWh5dSIsInJvbGUiOiJVc2VyIiwidXNlcl9pZCI6NX0.14tBeLXMpp0ozwBiQrgnQIYzvvzjP_voupGqy3TN_9o'
              },
            ));
    print(response);
    return ListFollowThreadResponse.fromJson(response.data);
  }
}
