// To parse this JSON data, do
//
//     final detailUserResponse = detailUserResponseFromMap(jsonString);

import 'dart:convert';

DetailUserResponse detailUserResponseFromMap(String str) =>
    DetailUserResponse.fromMap(json.decode(str));

String detailUserResponseToMap(DetailUserResponse data) =>
    json.encode(data.toMap());

class DetailUserResponse {
  Data? data;
  String? message;

  DetailUserResponse({
    this.data,
    this.message,
  });

  factory DetailUserResponse.fromMap(Map<String, dynamic> json) =>
      DetailUserResponse(
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
  List<dynamic>? followed;
  int? following;
  int? follower;

  Data({
    this.id,
    this.username,
    this.email,
    this.imageUrl,
    this.age,
    this.bio,
    this.followed,
    this.following,
    this.follower,
  });

  factory Data.fromMap(Map<String, dynamic> json) => Data(
        id: json["ID"],
        username: json["username"],
        email: json["email"],
        imageUrl: json["image_url"],
        age: json["age"],
        bio: json["bio"],
        followed: json["followed"] == null
            ? []
            : List<dynamic>.from(json["followed"]!.map((x) => x)),
        following: json["following"],
        follower: json["follower"],
      );

  Map<String, dynamic> toMap() => {
        "ID": id,
        "username": username,
        "email": email,
        "image_url": imageUrl,
        "age": age,
        "bio": bio,
        "followed":
            followed == null ? [] : List<dynamic>.from(followed!.map((x) => x)),
        "following": following,
        "follower": follower,
      };
}
