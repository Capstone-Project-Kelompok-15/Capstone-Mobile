// To parse this JSON data, do
//
//     final updateUserResponse = updateUserResponseFromMap(jsonString);

import 'dart:convert';

UpdateUserResponse updateUserResponseFromMap(String str) =>
    UpdateUserResponse.fromMap(json.decode(str));

String updateUserResponseToMap(UpdateUserResponse data) =>
    json.encode(data.toMap());

class UpdateUserResponse {
  Data? data;
  String? message;

  UpdateUserResponse({
    this.data,
    this.message,
  });

  factory UpdateUserResponse.fromMap(Map<String, dynamic> json) =>
      UpdateUserResponse(
        data: json["data"] == null ? null : Data.fromMap(json["data"]),
        message: json["message"],
      );

  Map<String, dynamic> toMap() => {
        "data": data?.toMap(),
        "message": message,
      };
}

class Data {
  int? id;
  String? username;
  String? email;
  String? imageUrl;
  int? age;
  String? bio;

  Data({
    this.id,
    this.username,
    this.email,
    this.imageUrl,
    this.age,
    this.bio,
  });

  factory Data.fromMap(Map<String, dynamic> json) => Data(
        id: json["ID"],
        username: json["username"],
        email: json["email"],
        imageUrl: json["image_url"],
        age: json["age"],
        bio: json["bio"],
      );

  Map<String, dynamic> toMap() => {
        "ID": id,
        "username": username,
        "email": email,
        "image_url": imageUrl,
        "age": age,
        "bio": bio,
      };
}
