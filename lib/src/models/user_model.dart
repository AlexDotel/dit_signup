// To parse this JSON data, do
//
//     final userModel = userModelFromJson(jsonString);

import 'dart:convert';

UserModel userModelFromJson(String str) => UserModel.fromJson(json.decode(str));

String userModelToJson(UserModel data) => json.encode(data.toJson());

class UserModel {
    UserModel({
        this.firstName,
        this.lastName,
        this.email,
        this.userId,
        this.role,
        this.locale,
    });

    String firstName;
    String lastName;
    String email;
    String userId;
    String role;
    String locale;

    factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        firstName: json["firstName"],
        lastName: json["lastName"],
        email: json["email"],
        userId: json["userId"],
        role: json["role"],
        locale: json["locale"],
    );

    Map<String, dynamic> toJson() => {
        "firstName": firstName,
        "lastName": lastName,
        "email": email,
        "userId": userId,
        "role": role,
        "locale": locale,
    };
}
