// To parse this JSON data, do
//
//     final createFollowThreadResponse = createFollowThreadResponseFromJson(jsonString);

import 'dart:convert';

CreateFollowThreadResponse createFollowThreadResponseFromJson(String str) => CreateFollowThreadResponse.fromJson(json.decode(str));

String createFollowThreadResponseToJson(CreateFollowThreadResponse data) => json.encode(data.toJson());

class CreateFollowThreadResponse {
    Data? data;
    String? message;

    CreateFollowThreadResponse({
        this.data,
        this.message,
    });

    factory CreateFollowThreadResponse.fromJson(Map<String, dynamic> json) => CreateFollowThreadResponse(
        data: json["data"] == null ? null : Data.fromJson(json["data"]),
        message: json["message"],
    );

    Map<String, dynamic> toJson() => {
        "data": data?.toJson(),
        "message": message,
    };
}

class Data {
    int? id;
    DateTime? createdAt;
    DateTime? updatedAt;
    dynamic deletedAt;
    int? userId;
    int? threadId;
    Thread? thread;

    Data({
        this.id,
        this.createdAt,
        this.updatedAt,
        this.deletedAt,
        this.userId,
        this.threadId,
        this.thread,
    });

    factory Data.fromJson(Map<String, dynamic> json) => Data(
        id: json["ID"],
        createdAt: json["CreatedAt"] == null ? null : DateTime.parse(json["CreatedAt"]),
        updatedAt: json["UpdatedAt"] == null ? null : DateTime.parse(json["UpdatedAt"]),
        deletedAt: json["DeletedAt"],
        userId: json["user_id"],
        threadId: json["thread_id"],
        thread: json["thread"] == null ? null : Thread.fromJson(json["thread"]),
    );

    Map<String, dynamic> toJson() => {
        "ID": id,
        "CreatedAt": createdAt?.toIso8601String(),
        "UpdatedAt": updatedAt?.toIso8601String(),
        "DeletedAt": deletedAt,
        "user_id": userId,
        "thread_id": threadId,
        "thread": thread?.toJson(),
    };
}

class Thread {
    int? id;
    DateTime? createdAt;
    DateTime? updatedAt;
    dynamic deletedAt;
    String? title;
    String? content;
    String? file;
    int? userId;
    User? user;
    dynamic comment;
    dynamic bookmarkedUser;
    dynamic like;

    Thread({
        this.id,
        this.createdAt,
        this.updatedAt,
        this.deletedAt,
        this.title,
        this.content,
        this.file,
        this.userId,
        this.user,
        this.comment,
        this.bookmarkedUser,
        this.like,
    });

    factory Thread.fromJson(Map<String, dynamic> json) => Thread(
        id: json["ID"],
        createdAt: json["CreatedAt"] == null ? null : DateTime.parse(json["CreatedAt"]),
        updatedAt: json["UpdatedAt"] == null ? null : DateTime.parse(json["UpdatedAt"]),
        deletedAt: json["DeletedAt"],
        title: json["title"],
        content: json["content"],
        file: json["file"],
        userId: json["user_id"],
        user: json["user"] == null ? null : User.fromJson(json["user"]),
        comment: json["comment"],
        bookmarkedUser: json["BookmarkedUser"],
        like: json["like"],
    );

    Map<String, dynamic> toJson() => {
        "ID": id,
        "CreatedAt": createdAt?.toIso8601String(),
        "UpdatedAt": updatedAt?.toIso8601String(),
        "DeletedAt": deletedAt,
        "title": title,
        "content": content,
        "file": file,
        "user_id": userId,
        "user": user?.toJson(),
        "comment": comment,
        "BookmarkedUser": bookmarkedUser,
        "like": like,
    };
}

class User {
    int? id;
    DateTime? createdAt;
    DateTime? updatedAt;
    dynamic deletedAt;
    String? username;
    String? email;
    String? password;
    String? imageUrl;
    int? age;
    String? bio;
    String? role;
    dynamic threads;
    dynamic bookmarked;

    User({
        this.id,
        this.createdAt,
        this.updatedAt,
        this.deletedAt,
        this.username,
        this.email,
        this.password,
        this.imageUrl,
        this.age,
        this.bio,
        this.role,
        this.threads,
        this.bookmarked,
    });

    factory User.fromJson(Map<String, dynamic> json) => User(
        id: json["ID"],
        createdAt: json["CreatedAt"] == null ? null : DateTime.parse(json["CreatedAt"]),
        updatedAt: json["UpdatedAt"] == null ? null : DateTime.parse(json["UpdatedAt"]),
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
        "CreatedAt": createdAt?.toIso8601String(),
        "UpdatedAt": updatedAt?.toIso8601String(),
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
