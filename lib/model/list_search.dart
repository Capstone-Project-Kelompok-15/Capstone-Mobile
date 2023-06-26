// To parse this JSON data, do
//
//     final searchThread = searchThreadFromJson(jsonString);

import 'dart:convert';

SearchThread searchThreadFromJson(String str) => SearchThread.fromJson(json.decode(str));

String searchThreadToJson(SearchThread data) => json.encode(data.toJson());

class SearchThread {
    String? message;
    List<Thread>? thread;

    SearchThread({
        this.message,
        this.thread,
    });

    factory SearchThread.fromJson(Map<String, dynamic> json) => SearchThread(
        message: json["message"],
        thread: json["thread"] == null ? [] : List<Thread>.from(json["thread"]!.map((x) => Thread.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "message": message,
        "thread": thread == null ? [] : List<dynamic>.from(thread!.map((x) => x.toJson())),
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
