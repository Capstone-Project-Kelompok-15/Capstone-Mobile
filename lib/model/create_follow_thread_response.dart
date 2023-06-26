// To parse this JSON data, do
//
//     final createFollowThreadResponse = createFollowThreadResponseFromJson(jsonString);

import 'dart:convert';

CreateFollowThreadResponse createFollowThreadResponseFromJson(String str) => CreateFollowThreadResponse.fromJson(json.decode(str));

String createFollowThreadResponseToJson(CreateFollowThreadResponse data) => json.encode(data.toJson());

class CreateFollowThreadResponse {
    List<Datum>? data;
    String? message;

    CreateFollowThreadResponse({
        this.data,
        this.message,
    });

    factory CreateFollowThreadResponse.fromJson(Map<String, dynamic> json) => CreateFollowThreadResponse(
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
