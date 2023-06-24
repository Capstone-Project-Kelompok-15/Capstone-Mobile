import 'package:capstone_mobile/model/update_detail_user_response.dart';
import 'package:dio/dio.dart';

class UploadImageService {
  Future<UpdateDetailUserResponse> uploadImage(String imagePath) async {
    try {
      FormData formData = FormData.fromMap({
        "image": await MultipartFile.fromFile(imagePath),
      });

      Response response = await Dio().post(
        'http://ec2-54-206-29-131.ap-southeast-2.compute.amazonaws.com:8000/uploadImage',
        data: formData,
      );

      if (response.statusCode == 200) {
        // Assuming the response is in JSON format
        Map<String, dynamic> responseData = response.data;

        // Parse the response data into UpdateDetailUserResponse object
        UpdateDetailUserResponse updateDetailUserResponse =
            UpdateDetailUserResponse.fromMap(responseData);

        return updateDetailUserResponse;
      } else {
        throw 'Error uploading image';
      }
    } catch (error) {
      throw error.toString();
    }
  }

  
}
