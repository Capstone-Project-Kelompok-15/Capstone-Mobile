// To parse this JSON data, do
//
//     final listResponseThread = listResponseThreadFromJson(jsonString);

import 'dart:convert';

ListResponseThread listResponseThreadFromJson(String str) => ListResponseThread.fromJson(json.decode(str));

String listResponseThreadToJson(ListResponseThread data) => json.encode(data.toJson());

class ListResponseThread {
    List<Datum>? data;
    String? message;

    ListResponseThread({
        this.data,
        this.message,
    });

    factory ListResponseThread.fromJson(Map<String, dynamic> json) => ListResponseThread(
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
    String? title;
    String? content;
    String? file;
    int? comment;
    Author? author;
    List<dynamic>? likeUser;
    int? like;

    Datum({
        this.id,
        this.title,
        this.content,
        this.file,
        this.comment,
        this.author,
        this.likeUser,
        this.like,
    });

    factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["ID"],
        title: json["title"],
        content: json["content"],
        file: json["file"],
        comment: json["comment"],
        author: json["author"] == null ? null : Author.fromJson(json["author"]),
        likeUser: json["likeUser"] == null ? [] : List<dynamic>.from(json["likeUser"]!.map((x) => x)),
        like: json["like"],
    );

    Map<String, dynamic> toJson() => {
        "ID": id,
        "title": title,
        "content": content,
        "file": file,
        "comment": comment,
        "author": author?.toJson(),
        "likeUser": likeUser == null ? [] : List<dynamic>.from(likeUser!.map((x) => x)),
        "like": like,
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
