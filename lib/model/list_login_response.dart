// To parse this JSON data, do
//
//     final listResponseLogin = listResponseLoginFromJson(jsonString);

import 'dart:convert';

ListResponseLogin listResponseLoginFromJson(String str) => ListResponseLogin.fromJson(json.decode(str));

String listResponseLoginToJson(ListResponseLogin data) => json.encode(data.toJson());

class ListResponseLogin {
    String? message;
    User? user;

    ListResponseLogin({
        this.message,
        this.user,
    });

    factory ListResponseLogin.fromJson(Map<String, dynamic> json) => ListResponseLogin(
        message: json["message"],
        user: json["user"] == null ? null : User.fromJson(json["user"]),
    );

    Map<String, dynamic> toJson() => {
        "message": message,
        "user": user?.toJson(),
    };
}

class User {
    int? id;
    String? name;
    String? email;
    String? token;

    User({
        this.id,
        this.name,
        this.email,
        this.token,
    });

    factory User.fromJson(Map<String, dynamic> json) => User(
        id: json["id"],
        name: json["name"],
        email: json["email"],
        token: json["token"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "email": email,
        "token": token,
    };
}
