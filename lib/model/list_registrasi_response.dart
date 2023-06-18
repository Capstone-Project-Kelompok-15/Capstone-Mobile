import 'dart:convert';

ListResponseRegistrasi listResponseRegistrasiFromJson(String str) =>
    ListResponseRegistrasi.fromJson(json.decode(str));

String listResponseRegistrasiToJson(ListResponseRegistrasi data) =>
    json.encode(data.toJson());

class ListResponseRegistrasi {
  String message;
  User user;

  ListResponseRegistrasi({
    required this.message,
    required this.user,
  });

  factory ListResponseRegistrasi.fromJson(Map<String, dynamic> json) =>
      ListResponseRegistrasi(
        message: json["message"],
        user: User.fromJson(json["user"]),
      );

  Map<String, dynamic> toJson() => {
        "message": message,
        "user": user.toJson(),
      };
}

class User {
  int id;
  DateTime createdAt;
  DateTime updatedAt;
  dynamic deletedAt;
  String username;
  String email;
  String password;
  String photo;
  String bio;
  String role;
  dynamic threads;
  dynamic bookmarked;
  dynamic follows;

  User({
    required this.id,
    required this.createdAt,
    required this.updatedAt,
    this.deletedAt,
    required this.username,
    required this.email,
    required this.password,
    required this.photo,
    required this.bio,
    required this.role,
    this.threads,
    this.bookmarked,
    this.follows,
  });

  factory User.fromJson(Map<String, dynamic> json) => User(
        id: json["ID"],
        createdAt: DateTime.parse(json["CreatedAt"]),
        updatedAt: DateTime.parse(json["UpdatedAt"]),
        deletedAt: json["DeletedAt"],
        username: json["username"],
        email: json["email"],
        password: json["password"],
        photo: json["photo"],
        bio: json["bio"],
        role: json["role"],
        threads: json["threads"],
        bookmarked: json["Bookmarked"],
        follows: json["follows"],
      );

  Map<String, dynamic> toJson() => {
        "ID": id,
        "CreatedAt": createdAt.toIso8601String(),
        "UpdatedAt": updatedAt.toIso8601String(),
        "DeletedAt": deletedAt,
        "username": username,
        "email": email,
        "password": password,
        "photo": photo,
        "bio": bio,
        "role": role,
        "threads": threads,
        "Bookmarked": bookmarked,
        "follows": follows,
      };
}
