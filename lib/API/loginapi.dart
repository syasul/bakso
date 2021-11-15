// To parse this JSON data, do
//
//     final apiLogin = apiLoginFromJson(jsonString);

import 'dart:convert';

ApiLogin apiLoginFromJson(String str) => ApiLogin.fromJson(json.decode(str));

String apiLoginToJson(ApiLogin data) => json.encode(data.toJson());

class ApiLogin {
  ApiLogin({
    this.status,
    this.values,
  });

  int status;
  List<Value> values;

  factory ApiLogin.fromJson(Map<String, dynamic> json) => ApiLogin(
        status: json["status"],
        values: List<Value>.from(json["values"].map((x) => Value.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "values": List<dynamic>.from(values.map((x) => x.toJson())),
      };
}

class Value {
  Value({
    this.driverId,
    this.email,
    this.username,
    this.hashPassword,
    this.name,
    this.image,
    this.phoneNumber,
    this.idNumber,
    this.status,
  });

  int driverId;
  String email;
  String username;
  String hashPassword;
  String name;
  dynamic image;
  String phoneNumber;
  String idNumber;
  dynamic status;

  factory Value.fromJson(Map<String, dynamic> json) => Value(
        driverId: json["driver_id"],
        email: json["email"],
        username: json["username"],
        hashPassword: json["hash_password"],
        name: json["name"],
        image: json["image"],
        phoneNumber: json["phone_number"],
        idNumber: json["id_number"],
        status: json["status"],
      );

  Map<String, dynamic> toJson() => {
        "driver_id": driverId,
        "email": email,
        "username": username,
        "hash_password": hashPassword,
        "name": name,
        "image": image,
        "phone_number": phoneNumber,
        "id_number": idNumber,
        "status": status,
      };
}
