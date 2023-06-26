// To parse this JSON data, do
//
//     final searchThread = searchThreadFromJson(jsonString);

import 'dart:convert';

SearchThread searchThreadFromJson(String str) => SearchThread.fromJson(json.decode(str));

String searchThreadToJson(SearchThread data) => json.encode(data.toJson());

class SearchThread {
    String message;
    List<Thread> thread;

    SearchThread({
        required this.message,
        required this.thread,
    });

    factory SearchThread.fromJson(Map<String, dynamic> json) => SearchThread(
        message: json["message"],
        thread: List<Thread>.from(json["thread"].map((x) => Thread.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "message": message,
        "thread": List<dynamic>.from(thread.map((x) => x.toJson())),
    };
}

class Thread {
    int id;
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
