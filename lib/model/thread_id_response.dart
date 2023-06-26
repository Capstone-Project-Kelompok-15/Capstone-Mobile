// To parse this JSON data, do
//
//     final threadIdResponse = threadIdResponseFromJson(jsonString);

import 'dart:convert';

ThreadIdResponse threadIdResponseFromJson(String str) =>
    ThreadIdResponse.fromJson(json.decode(str));

String threadIdResponseToJson(ThreadIdResponse data) =>
    json.encode(data.toJson());

class ThreadIdResponse {
  Data data;
  String message;

  ThreadIdResponse({
    required this.data,
    required this.message,
  });

  factory ThreadIdResponse.fromJson(Map<String, dynamic> json) =>
      ThreadIdResponse(
        data: Data.fromJson(json["data"]),
        message: json["message"],
      );

  Map<String, dynamic> toJson() => {
        "data": data.toJson(),
        "message": message,
      };
}

class Data {
  int id;
  String title;
  String content;
  String file;
  DataAuthor author;
  int commentCount;
  List<Comment> comment;
  List<dynamic> likeUser;
  int like;

  Data({
    required this.id,
    required this.title,
    required this.content,
    required this.file,
    required this.author,
    required this.commentCount,
    required this.comment,
    required this.likeUser,
    required this.like,
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        id: json["ID"],
        title: json["title"],
        content: json["content"],
        file: json["file"],
        author: DataAuthor.fromJson(json["author"]),
        commentCount: json["CommentCount"],
        comment:
            List<Comment>.from(json["comment"].map((x) => Comment.fromJson(x))),
        likeUser: List<dynamic>.from(json["likeUser"].map((x) => x)),
        like: json["like"],
      );

  Map<String, dynamic> toJson() => {
        "ID": id,
        "title": title,
        "content": content,
        "file": file,
        "author": author.toJson(),
        "CommentCount": commentCount,
        "comment": List<dynamic>.from(comment.map((x) => x.toJson())),
        "likeUser": List<dynamic>.from(likeUser.map((x) => x)),
        "like": like,
      };
}

class DataAuthor {
  String username;
  String email;
  String profil;

  DataAuthor({
    required this.username,
    required this.email,
    required this.profil,
  });

  factory DataAuthor.fromJson(Map<String, dynamic> json) => DataAuthor(
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

class Comment {
  int id;
  String comment;
  CommentAuthor author;
  DateTime createdAt;
  DateTime updateAt;

  Comment({
    required this.id,
    required this.comment,
    required this.author,
    required this.createdAt,
    required this.updateAt,
  });

  factory Comment.fromJson(Map<String, dynamic> json) => Comment(
        id: json["id"],
        comment: json["comment"],
        author: CommentAuthor.fromJson(json["author"]),
        createdAt: DateTime.parse(json["createdAt"]),
        updateAt: DateTime.parse(json["updateAt"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "comment": comment,
        "author": author.toJson(),
        "createdAt": createdAt.toIso8601String(),
        "updateAt": updateAt.toIso8601String(),
      };
}

class CommentAuthor {
  int userId;
  String username;
  String profil;

  CommentAuthor({
    required this.userId,
    required this.username,
    required this.profil,
  });

  factory CommentAuthor.fromJson(Map<String, dynamic> json) => CommentAuthor(
        userId: json["user_ID"],
        username: json["username"],
        profil: json["profil"],
      );

  Map<String, dynamic> toJson() => {
        "user_ID": userId,
        "username": username,
        "profil": profil,
      };
}
