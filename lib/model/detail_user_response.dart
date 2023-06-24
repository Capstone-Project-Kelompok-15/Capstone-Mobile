// To parse this JSON data, do
//
//     final detailUserResponse = detailUserResponseFromMap(jsonString);

import 'dart:convert';

DetailUserResponse detailUserResponseFromMap(String str) =>
    DetailUserResponse.fromMap(json.decode(str));

String detailUserResponseToMap(DetailUserResponse data) =>
    json.encode(data.toMap());

class DetailUserResponse {
  String? message;
  List<User>? user;

  DetailUserResponse({
    this.message,
    this.user,
  });

  factory DetailUserResponse.fromMap(Map<String, dynamic> json) =>
      DetailUserResponse(
        message: json["message"],
        user: json["user"] == null
            ? []
            : List<User>.from(json["user"]!.map((x) => User.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "message": message,
        "user":
            user == null ? [] : List<dynamic>.from(user!.map((x) => x.toMap())),
      };
}

class User {
  int? id;
  String? username;
  String? email;
  String? imageUrl;
  int? age;
  String? bio;
  List<Thread>? threads;

  User({
    this.id,
    this.username,
    this.email,
    this.imageUrl,
    this.age,
    this.bio,
    this.threads,
  });

  factory User.fromMap(Map<String, dynamic> json) => User(
        id: json["ID"],
        username: json["username"],
        email: json["email"],
        imageUrl: json["image_url"],
        age: json["age"],
        bio: json["bio"],
        threads: json["threads"] == null
            ? []
            : List<Thread>.from(json["threads"]!.map((x) => Thread.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "ID": id,
        "username": username,
        "email": email,
        "image_url": imageUrl,
        "age": age,
        "bio": bio,
        "threads": threads == null
            ? []
            : List<dynamic>.from(threads!.map((x) => x.toMap())),
      };
}

class Thread {
  int? id;
  String? title;
  String? content;

  Thread({
    this.id,
    this.title,
    this.content,
  });

  factory Thread.fromMap(Map<String, dynamic> json) => Thread(
        id: json["ID"],
        title: json["title"],
        content: json["content"],
      );

  Map<String, dynamic> toMap() => {
        "ID": id,
        "title": title,
        "content": content,
      };
}
