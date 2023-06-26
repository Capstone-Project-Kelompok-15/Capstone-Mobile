// To parse this JSON data, do
//
//     final ListBookmarkResponse = ListBookmarkResponseFromJson(jsonString);

import 'dart:convert';

// ignore: non_constant_identifier_names
ListBookmarkResponse ListBookmarkResponseFromJson(String str) => ListBookmarkResponse.fromJson(json.decode(str));

// ignore: non_constant_identifier_names
String ListBookmarkResponseToJson(ListBookmarkResponse data) => json.encode(data.toJson());

class ListBookmarkResponse {
    List<Datum>? data;
    String? message;

    ListBookmarkResponse({
        this.data,
        this.message,
    });

    factory ListBookmarkResponse.fromJson(Map<String, dynamic> json) => ListBookmarkResponse(
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
    String? profil;

    Author({
        this.username,
        this.email,
        this.profil,
    });

    factory Author.fromJson(Map<String, dynamic> json) => Author(
        username: json["username"],
        email: json["email"],
        profil: json["profil"],
    );

    Map<String, dynamic> toJson() => {
        "username": username,
        "email": email,
        "profil": profil,
    };
}
