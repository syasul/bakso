// To parse this JSON data, do
//
//     final dataOrder = dataOrderFromJson(jsonString);

import 'dart:convert';

DataOrder dataOrderFromJson(String str) => DataOrder.fromJson(json.decode(str));

String dataOrderToJson(DataOrder data) => json.encode(data.toJson());

class DataOrder {
  DataOrder({
    this.status,
    this.values,
  });

  int status;
  List<Value> values;

  factory DataOrder.fromJson(Map<String, dynamic> json) => DataOrder(
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
    this.orderId,
    this.menuId,
    this.driverId,
    this.price,
    this.pieces,
  });

  int orderId;
  int menuId;
  int driverId;
  String price;
  String pieces;

  factory Value.fromJson(Map<String, dynamic> json) => Value(
        orderId: json["order_id"],
        menuId: json["menu_id"],
        driverId: json["driver_id"],
        price: json["price"],
        pieces: json["pieces"],
      );

  Map<String, dynamic> toJson() => {
        "order_id": orderId,
        "menu_id": menuId,
        "driver_id": driverId,
        "price": price,
        "pieces": pieces,
      };
}
