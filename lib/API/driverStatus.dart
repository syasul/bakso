import 'dart:convert';

DriverSetStatus driverSetStatusFromJson(String str) =>
    DriverSetStatus.fromJson(json.decode(str));

String driverSetStatusToJson(DriverSetStatus data) =>
    json.encode(data.toJson());

class DriverSetStatus {
  DriverSetStatus({
    this.status,
    this.values,
  });

  int status;
  Values values;

  factory DriverSetStatus.fromJson(Map<String, dynamic> json) =>
      DriverSetStatus(
        status: json["status"],
        values: Values.fromJson(json["values"]),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "values": values.toJson(),
      };
}

class Values {
  Values({
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

  factory Values.fromJson(Map<String, dynamic> json) => Values(
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
