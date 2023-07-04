import 'package:capstone_mobile/constant.dart';
import 'package:capstone_mobile/service/login_service.dart';
import 'package:dio/dio.dart';

class UserImageService {
  Future<void> postImage({
    String? imageFile,
  }) async {
    String cekUser = await getToken();
    try {
      final response = await Dio().post("$baseUrl/userprofile",
          options: Options(headers: {
            'Content-Type': 'application/json;charset=UTF-8',
            'Authorization': 'Bearer $cekUser'
          }),
          data: {
            "file": imageFile,
          });
      if (response.statusCode == 200) {
        // ignore: avoid_print
        print("berhasil");
      }
    } on DioException catch (e) {
      // ignore: avoid_print
      print(e);
    }
  }

  Future<String> uploadImage(imageFile) async {
    // ignore: unused_local_variable
    FormData formData = FormData.fromMap({
      'image_url': await MultipartFile.fromFile(imageFile!.path),
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
