// To parse this JSON data, do
//
//     final listResponseThread = listResponseThreadFromJson(jsonString);

import 'dart:convert';

ListResponseThread listResponseThreadFromJson(String str) =>
    ListResponseThread.fromJson(json.decode(str));

String listResponseThreadToJson(ListResponseThread data) =>
    json.encode(data.toJson());

class ListResponseThread {
  List<Datum> data;
  String message;

  ListResponseThread({
    required this.data,
    required this.message,
  });

  factory ListResponseThread.fromJson(Map<String, dynamic> json) =>
      ListResponseThread(
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
  DateTime createdAt;
  DateTime updatedAt;
  dynamic deletedAt;
  String comment;
  int threadId;
  Thread thread;
  int userId;
  User user;

  Datum({
    required this.id,
    required this.createdAt,
    required this.updatedAt,
    this.deletedAt,
    required this.comment,
    required this.threadId,
    required this.thread,
    required this.userId,
    required this.user,
  });

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["ID"],
        createdAt: DateTime.parse(json["CreatedAt"]),
        updatedAt: DateTime.parse(json["UpdatedAt"]),
        deletedAt: json["DeletedAt"],
        comment: json["comment"],
        threadId: json["thread_id"],
        thread: Thread.fromJson(json["thread"]),
        userId: json["user_id"],
        user: User.fromJson(json["user"]),
      );

  Map<String, dynamic> toJson() => {
        "ID": id,
        "CreatedAt": createdAt.toIso8601String(),
        "UpdatedAt": updatedAt.toIso8601String(),
        "DeletedAt": deletedAt,
        "comment": comment,
        "thread_id": threadId,
        "thread": thread.toJson(),
        "user_id": userId,
        "user": user.toJson(),
      };
}

class Thread {
  int id;
  DateTime createdAt;
  DateTime updatedAt;
  dynamic deletedAt;
  String title;
  String content;
  String file;
  int userId;
  User user;
  dynamic comment;
  dynamic bookmarkedUser;
  dynamic like;

  Thread({
    required this.id,
    required this.createdAt,
    required this.updatedAt,
    this.deletedAt,
    required this.title,
    required this.content,
    required this.file,
    required this.userId,
    required this.user,
    this.comment,
    this.bookmarkedUser,
    this.like,
  });

  factory Thread.fromJson(Map<String, dynamic> json) => Thread(
        id: json["ID"],
        createdAt: DateTime.parse(json["CreatedAt"]),
        updatedAt: DateTime.parse(json["UpdatedAt"]),
        deletedAt: json["DeletedAt"],
        title: json["title"],
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
