// To parse this JSON data, do
//
//     final listFollowThreadResponse = listFollowThreadResponseFromJson(jsonString);

import 'dart:convert';

ListFollowThreadResponse listFollowThreadResponseFromJson(String str) => ListFollowThreadResponse.fromJson(json.decode(str));

String listFollowThreadResponseToJson(ListFollowThreadResponse data) => json.encode(data.toJson());

class ListFollowThreadResponse {
    List<Datum>? data;
    String? message;

    ListFollowThreadResponse({
        this.data,
        this.message,
    });

    factory ListFollowThreadResponse.fromJson(Map<String, dynamic> json) => ListFollowThreadResponse(
        data: json["data"] == null ? [] : List<Datum>.from(json["data"]!.map((x) => Datum.fromJson(x))),
        message: json["message"],
    );

    Map<String, dynamic> toJson() => {
        "data": data == null ? [] : List<dynamic>.from(data!.map((x) => x.toJson())),
        "message": message,
    };
}

class Datum {
    int? id;
    DateTime? createdAt;
    DateTime? updatedAt;
    dynamic deletedAt;
    int? userId;
    int? threadId;
    Thread? thread;

    Datum({
        this.id,
        this.createdAt,
        this.updatedAt,
        this.deletedAt,
        this.userId,
        this.threadId,
        this.thread,
    });

    factory Datum.fromJson(Map<String, dynamic> json) => Datum(
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
    int? likeCountDefault0;
    int? commentCount;

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
        this.likeCountDefault0,
        this.commentCount,
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
