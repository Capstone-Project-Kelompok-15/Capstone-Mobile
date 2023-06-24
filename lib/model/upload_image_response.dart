// To parse this JSON data, do
//
//     final updateDetailUserResponse = updateDetailUserResponseFromMap(jsonString);

import 'dart:convert';

UpdateDetailUserResponse updateDetailUserResponseFromMap(String str) => UpdateDetailUserResponse.fromMap(json.decode(str));

String updateDetailUserResponseToMap(UpdateDetailUserResponse data) => json.encode(data.toMap());

class UpdateDetailUserResponse {
    String? data;
    String? message;

    UpdateDetailUserResponse({
        this.data,
        this.message,
    });

    factory UpdateDetailUserResponse.fromMap(Map<String, dynamic> json) => UpdateDetailUserResponse(
        data: json["Data"],
        message: json["Message"],
    );

    Map<String, dynamic> toMap() => {
        "Data": data,
        "Message": message,
    };
}
