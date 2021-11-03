// To parse this JSON data, do
//
//     final postLoc = postLocFromJson(jsonString);

import 'dart:convert';

PostLoc postLocFromJson(String str) => PostLoc.fromJson(json.decode(str));

String postLocToJson(PostLoc data) => json.encode(data.toJson());

class PostLoc {
  PostLoc({
    this.status,
    this.error,
    this.response,
  });

  int status;
  dynamic error;
  Response response;

  factory PostLoc.fromJson(Map<String, dynamic> json) => PostLoc(
        status: json["status"],
        error: json["error"],
        response: Response.fromJson(json["response"]),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "error": error,
        "response": response.toJson(),
      };
}

class Response {
  Response({
    this.fieldCount,
    this.affectedRows,
    this.insertId,
    this.serverStatus,
    this.warningCount,
    this.message,
    this.protocol41,
    this.changedRows,
  });

  int fieldCount;
  int affectedRows;
  int insertId;
  int serverStatus;
  int warningCount;
  String message;
  bool protocol41;
  int changedRows;

  factory Response.fromJson(Map<String, dynamic> json) => Response(
        fieldCount: json["fieldCount"],
        affectedRows: json["affectedRows"],
        insertId: json["insertId"],
        serverStatus: json["serverStatus"],
        warningCount: json["warningCount"],
        message: json["message"],
        protocol41: json["protocol41"],
        changedRows: json["changedRows"],
      );

  Map<String, dynamic> toJson() => {
        "fieldCount": fieldCount,
        "affectedRows": affectedRows,
        "insertId": insertId,
        "serverStatus": serverStatus,
        "warningCount": warningCount,
        "message": message,
        "protocol41": protocol41,
        "changedRows": changedRows,
      };
}
