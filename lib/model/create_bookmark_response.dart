// To parse this JSON data, do
//
//     final getAllBookmarkResponse = getAllBookmarkResponseFromJson(jsonString);

import 'dart:convert';

CreateBookmarkResponse CreateBookmarkResponseFromJson(String str) => CreateBookmarkResponse.fromJson(json.decode(str));

String CreateBookmarkResponseToJson(CreateBookmarkResponse data) => json.encode(data.toJson());

class CreateBookmarkResponse {
    Data? data;
    String? message;

    CreateBookmarkResponse({
        this.data,
        this.message,
    });

    factory CreateBookmarkResponse.fromJson(Map<String, dynamic> json) => CreateBookmarkResponse(
        data: json["data"] == null ? null : Data.fromJson(json["data"]),
        message: json["message"],
    );

    Map<String, dynamic> toJson() => {
        "data": data?.toJson(),
        "message": message,
    };
}

class Data {
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
    List<dynamic>? bookmarked;

    Data({
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
    });

    factory Data.fromJson(Map<String, dynamic> json) => Data(
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
        bookmarked: json["Bookmarked"] == null ? [] : List<dynamic>.from(json["Bookmarked"]!.map((x) => x)),
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
        "Bookmarked": bookmarked == null ? [] : List<dynamic>.from(bookmarked!.map((x) => x)),
    };
}
