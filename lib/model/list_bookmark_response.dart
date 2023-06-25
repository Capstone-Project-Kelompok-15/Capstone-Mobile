// To parse this JSON data, do
//
//     final getAllBookmarkResponse = getAllBookmarkResponseFromJson(jsonString);

import 'dart:convert';

GetAllBookmarkResponse getAllBookmarkResponseFromJson(String str) => GetAllBookmarkResponse.fromJson(json.decode(str));

String getAllBookmarkResponseToJson(GetAllBookmarkResponse data) => json.encode(data.toJson());

class GetAllBookmarkResponse {
    List<Datum>? data;
    String? message;

    GetAllBookmarkResponse({
        this.data,
        this.message,
    });

    factory GetAllBookmarkResponse.fromJson(Map<String, dynamic> json) => GetAllBookmarkResponse(
        data: json["data"] == null ? [] : List<Datum>.from(json["data"]!.map((x) => Datum.fromJson(x))),
        message: json["message"],
    );

    Map<String, dynamic> toJson() => {
        "data": data == null ? [] : List<dynamic>.from(data!.map((x) => x.toJson())),
        "message": message,
    };
}

class Datum {
    int? threadId;
    String? title;
    String? content;
    Author? author;
    DateTime? createdAt;
    DateTime? updatedAt;

    Datum({
        this.threadId,
        this.title,
        this.content,
        this.author,
        this.createdAt,
        this.updatedAt,
    });

    factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        threadId: json["thread_id"],
        title: json["title"],
        content: json["content"],
        author: json["author"] == null ? null : Author.fromJson(json["author"]),
        createdAt: json["createdAt"] == null ? null : DateTime.parse(json["createdAt"]),
        updatedAt: json["updatedAt"] == null ? null : DateTime.parse(json["updatedAt"]),
    );

    Map<String, dynamic> toJson() => {
        "thread_id": threadId,
        "title": title,
        "content": content,
        "author": author?.toJson(),
        "createdAt": createdAt?.toIso8601String(),
        "updatedAt": updatedAt?.toIso8601String(),
    };
}

class Author {
    String? username;
    String? email;

    Author({
        this.username,
        this.email,
    });

    factory Author.fromJson(Map<String, dynamic> json) => Author(
        username: json["username"],
        email: json["email"],
    );

    Map<String, dynamic> toJson() => {
        "username": username,
        "email": email,
    };
}
