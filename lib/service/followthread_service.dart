// import 'package:capstone_mobile/service/login_service.dart';
// ignore_for_file: unused_catch_clause, prefer_const_constructors

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

// import '../constant.dart';
import '../constant.dart';
import '../model/list_followthread_response.dart';
import '../style/color_style.dart';
import '../style/font_style.dart';
import 'login_service.dart';

class FollowThreadService {
  Future<ListFollowThreadResponse> getAllFollowThread() async {
    // ignore: unused_local_variable
    String cekUser = await getToken();

    final response = await Dio().get(
      "$baseUrl/follow",
      options: Options(
        headers: {
          'Content-Type': 'application/json;charset=UTF-8',
          'Authorization': 'Bearer $cekUser'
        },
      ),
    );
    return ListFollowThreadResponse.fromJson(response.data);
  }

// create follow thread
  Future<void> postFollowThread({
    required int userId,
    required int threadId,
    required BuildContext context,
  }) async {
    String cekUser = await getToken();
    try {
      final response = await Dio().post("$baseUrl/follow",
          options: Options(headers: {
            'Content-Type': 'application/json;charset=UTF-8',
            'Authorization': 'Bearer $cekUser'
          }),
          data: {
            "user_id": userId,
            "thread_id": threadId,
          });
      if (response.statusCode == 200) {
        final snackBar = SnackBar(
          content: Container(
            height: 47,
            decoration: BoxDecoration(
                color: primary500, borderRadius: BorderRadius.circular(24)),
            child: Center(
                child: Text(
              "Thread Telah Diikuti",
              style: smallBold.copyWith(color: Colors.white),
            )),
          ),
          behavior: SnackBarBehavior.floating,
          elevation: 0,
          backgroundColor: Colors.transparent,
        );
        // ignore: use_build_context_synchronously
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      }
    } on DioException catch (e) {
      final snackBar = SnackBar(
        content: const Text('Thread Gagal Diikuti'),
      );
      // ignore: use_build_context_synchronously
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }
  }
}
