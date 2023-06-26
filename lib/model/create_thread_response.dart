// To parse this JSON data, do
//
//     final responseChreateThread = responseChreateThreadFromJson(jsonString);

import 'dart:convert';

ResponseChreateThread responseChreateThreadFromJson(String str) => ResponseChreateThread.fromJson(json.decode(str));

String responseChreateThreadToJson(ResponseChreateThread data) => json.encode(data.toJson());

class ResponseChreateThread {
    Data? data;
    String? message;

    ResponseChreateThread({
        this.data,
        this.message,
    });

    factory ResponseChreateThread.fromJson(Map<String, dynamic> json) => ResponseChreateThread(
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
    String? title;
    String? content;
    String? file;
    int? userId;
    User? user;
    dynamic comment;
    dynamic bookmarkedUser;
    dynamic like;
    int? likeCountDefault0;
    int? commentCount;

    Data({
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
        this.likeCountDefault0,
        this.commentCount,
    });

    factory Data.fromJson(Map<String, dynamic> json) => Data(
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
        like: json["Like"],
        likeCountDefault0: json["likeCount; default:0"],
        commentCount: json["commentCount"],
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
        "Like": like,
        "likeCount; default:0": likeCountDefault0,
        "commentCount": commentCount,
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
    dynamic followed;
    dynamic likedThread;

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
        this.followed,
        this.likedThread,
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
        followed: json["Followed"],
        likedThread: json["LikedThread"],
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
        "Followed": followed,
        "LikedThread": likedThread,
    };
}
