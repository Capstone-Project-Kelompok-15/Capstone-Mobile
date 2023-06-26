// To parse this JSON data, do
//
//     final responseThread = responseThreadFromJson(jsonString);

import 'dart:convert';

ResponseThread responseThreadFromJson(String str) =>
    ResponseThread.fromJson(json.decode(str));

String responseThreadToJson(ResponseThread data) => json.encode(data.toJson());

class ResponseThread {
  List<Datum> data;
  String message;

  ResponseThread({
    required this.data,
    required this.message,
  });

  factory ResponseThread.fromJson(Map<String, dynamic> json) => ResponseThread(
        data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
        message: json["message"],
      );

  Map<String, dynamic> toJson() => {
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
        "message": message,
      };
}

class Datum {
  int id;
  String title;
  String content;
  String file;
  int userId;
  User user;

  Datum({
    required this.id,
    required this.title,
    required this.content,
    required this.file,
    required this.userId,
    required this.user,
  });

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["ID"],
        title: json["title"],
        content: json["content"],
        file: json["file"],
        userId: json["user_id"],
        user: User.fromJson(json["user"]),
      );

  Map<String, dynamic> toJson() => {
        "ID": id,
        "title": title,
        "content": content,
        "file": file,
        "user_id": userId,
        "user": user.toJson(),
      };
}

class User {
  int id;
  String username;
  String email;
  String password;
  String imageUrl;
  int age;
  String bio;

  User({
    required this.id,
    required this.username,
    required this.email,
    required this.password,
    required this.imageUrl,
    required this.age,
    required this.bio,
  });

  factory User.fromJson(Map<String, dynamic> json) => User(
        id: json["ID"],
        username: json["username"],
        email: json["email"],
        password: json["password"],
        imageUrl: json["image_url"],
        age: json["age"],
        bio: json["bio"],
      );

  Map<String, dynamic> toJson() => {
        "ID": id,
        "username": username,
        "email": email,
        "password": password,
        "image_url": imageUrl,
        "age": age,
        "bio": bio,
      };
}
