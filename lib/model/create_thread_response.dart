// To parse this JSON data, do
//
//     final responseChreateThread = responseChreateThreadFromJson(jsonString);

import 'dart:convert';

ResponseChreateThread responseChreateThreadFromJson(String str) =>
    ResponseChreateThread.fromJson(json.decode(str));

String responseChreateThreadToJson(ResponseChreateThread data) =>
    json.encode(data.toJson());

class ResponseChreateThread {
  Data data;
  String message;

  ResponseChreateThread({
    required this.data,
    required this.message,
  });

  factory ResponseChreateThread.fromJson(Map<String, dynamic> json) =>
      ResponseChreateThread(
        data: Data.fromJson(json["data"]),
        message: json["message"],
      );

  Map<String, dynamic> toJson() => {
        "data": data.toJson(),
        "message": message,
      };
}

class Data {
  int id;
  DateTime createdAt;
  DateTime updatedAt;
  dynamic deletedAt;
  String title;
  String topic;
  String content;
  String file;
  int userId;
  User user;
  dynamic comment;
  dynamic bookmarkedUser;
  dynamic like;

  Data({
    required this.id,
    required this.createdAt,
    required this.updatedAt,
    this.deletedAt,
    required this.title,
    required this.topic,
    required this.content,
    required this.file,
    required this.userId,
    required this.user,
    this.comment,
    this.bookmarkedUser,
    this.like,
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        id: json["ID"],
        createdAt: DateTime.parse(json["CreatedAt"]),
        updatedAt: DateTime.parse(json["UpdatedAt"]),
        deletedAt: json["DeletedAt"],
        title: json["title"],
        topic: json["topic"],
        content: json["content"],
        file: json["file"],
        userId: json["user_id"],
        user: User.fromJson(json["user"]),
        comment: json["comment"],
        bookmarkedUser: json["BookmarkedUser"],
        like: json["like"],
      );

  Map<String, dynamic> toJson() => {
        "ID": id,
        "CreatedAt": createdAt.toIso8601String(),
        "UpdatedAt": updatedAt.toIso8601String(),
        "DeletedAt": deletedAt,
        "title": title,
        "topic": topic,
        "content": content,
        "file": file,
        "user_id": userId,
        "user": user.toJson(),
        "comment": comment,
        "BookmarkedUser": bookmarkedUser,
        "like": like,
      };
}

class User {
  int id;
  DateTime createdAt;
  DateTime updatedAt;
  dynamic deletedAt;
  String username;
  String email;
  String password;
  String imageUrl;
  int age;
  String bio;
  String role;
  dynamic threads;
  dynamic bookmarked;

  User({
    required this.id,
    required this.createdAt,
    required this.updatedAt,
    this.deletedAt,
    required this.username,
    required this.email,
    required this.password,
    required this.imageUrl,
    required this.age,
    required this.bio,
    required this.role,
    this.threads,
    this.bookmarked,
  });

  factory User.fromJson(Map<String, dynamic> json) => User(
        id: json["ID"],
        createdAt: DateTime.parse(json["CreatedAt"]),
        updatedAt: DateTime.parse(json["UpdatedAt"]),
        deletedAt: json["DeletedAt"],
        username: json["username"],
        email: json["email"],
        password: json["password"],
        imageUrl: json["image_url"],
        age: json["age"],
        bio: json["bio"],
        role: json["role"],
        threads: json["threads"],
        bookmarked: json["Bookmarked"],
      );

  Map<String, dynamic> toJson() => {
        "ID": id,
        "CreatedAt": createdAt.toIso8601String(),
        "UpdatedAt": updatedAt.toIso8601String(),
        "DeletedAt": deletedAt,
        "username": username,
        "email": email,
        "password": password,
        "image_url": imageUrl,
        "age": age,
        "bio": bio,
        "role": role,
        "threads": threads,
        "Bookmarked": bookmarked,
      };
}
