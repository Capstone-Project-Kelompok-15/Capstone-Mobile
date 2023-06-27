// import 'package:dio/dio.dart';

// import '../constant.dart';
// import '../model/list_thread_response.dart';
// import 'login_service.dart';

// class LeaderboardService {
//   Future<ResponseThread> getAllThread() async {
//     // ignore: unused_local_variable
//     String cekUser = await getToken();

//     final response = await Dio().get(
//       "$baseUrl/Allthreads",
//       options: Options(
//         headers: {
//           'Content-Type': 'application/json;charset=UTF-8',
//           'Authorization': 'Bearer $cekUser'
//         },
//       ),
//     );
//     return ResponseThread.fromJson(response.data);
//   }
//   }