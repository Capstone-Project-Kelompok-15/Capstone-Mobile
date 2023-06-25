import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import '../constant.dart';
import '../model/list_bookmark_response.dart';
import '../style/color_style.dart';
import '../style/font_style.dart';
import 'login_service.dart';

class BookmarkService {
  Future<ListBookmarkResponse> getAllBookmark() async {
    String cekUser = await getToken();

    final response = await Dio().get("$baseUrl/bookmark",
        options: Options(
          headers: {
            'Content-Type': 'application/json;charset=UTF-8',
            'Authorization': 'Bearer $cekUser'
          },
        ));
    print(response);
    return ListBookmarkResponse.fromJson(response.data);
  }


  // create follow thread
  Future<void> postBookmark({
    required int threadId,
    required BuildContext context,
  }) async {
    String cekUser = await getToken();
    try {
      final response = await Dio().post("$baseUrl/bookmark",
          options: Options(headers: {
            'Content-Type': 'application/json;charset=UTF-8',
            'Authorization': 'Bearer $cekUser'
          }),
          data: {
            "thread_id": threadId,
          });
      if (response.statusCode == 200) {
        print("Tambah Ke Bookmark");
        print(response.data);
        final snackBar = SnackBar(
          content: Container(
            height: 47,
            decoration: BoxDecoration(
                color: primary500, borderRadius: BorderRadius.circular(24)),
            child: Center(
                child: Text(
              "Thread Telah Ditambahkan ke Bookmark",
              style: smallBold.copyWith(color: Colors.white),
            )),
          ),
          behavior: SnackBarBehavior.floating,
          elevation: 0,
          backgroundColor: Colors.transparent,
        );
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      }

    } on DioError catch (e) {
      print(e.response?.data);
      final snackBar = SnackBar(
        content: const Text('Thread Gagal Ditambahkan ke Bookmark'),
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }
  }
}