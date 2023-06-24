// To parse this JSON data, do
//
//     final updateDetailUserResponse = updateDetailUserResponseFromMap(jsonString);

import 'dart:convert';

UpdateDetailUserResponse updateDetailUserResponseFromMap(String str) => UpdateDetailUserResponse.fromMap(json.decode(str));

String updateDetailUserResponseToMap(UpdateDetailUserResponse data) => json.encode(data.toMap());

class UpdateDetailUserResponse {
    String? message;
    User? user;

    UpdateDetailUserResponse({
        this.message,
        this.user,
    });

    factory UpdateDetailUserResponse.fromMap(Map<String, dynamic> json) => UpdateDetailUserResponse(
        message: json["message"],
        user: json["user"] == null ? null : User.fromMap(json["user"]),
    );

    Map<String, dynamic> toMap() => {
        "message": message,
        "user": user?.toMap(),
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
    });

    factory User.fromMap(Map<String, dynamic> json) => User(
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
    );

    Map<String, dynamic> toMap() => {
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
    };
}
