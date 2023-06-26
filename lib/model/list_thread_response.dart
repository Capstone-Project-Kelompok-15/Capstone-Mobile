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
  String title;
  String content;
  String file;
  int comment;
  Author author;
  List<dynamic> likeUser;
  int like;

  Datum({
    required this.id,
    required this.title,
    required this.content,
    required this.file,
    required this.comment,
    required this.author,
    required this.likeUser,
    required this.like,
  });

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["ID"],
        title: json["title"],
        content: json["content"],
        file: json["file"],
        comment: json["comment"],
        author: Author.fromJson(json["author"]),
        likeUser: List<dynamic>.from(json["likeUser"].map((x) => x)),
        like: json["like"],
      );

  Map<String, dynamic> toJson() => {
        "ID": id,
        "title": title,
        "content": content,
        "file": file,
        "comment": comment,
        "author": author.toJson(),
        "likeUser": List<dynamic>.from(likeUser.map((x) => x)),
        "like": like,
      };
}

class Author {
  String username;
  String email;
  String profil;

  Author({
    required this.username,
    required this.email,
    required this.profil,
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
