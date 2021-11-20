// To parse this JSON data, do
//
//     final menuApi = menuApiFromJson(jsonString);

import 'dart:convert';

MenuApi menuApiFromJson(String str) => MenuApi.fromJson(json.decode(str));

String menuApiToJson(MenuApi data) => json.encode(data.toJson());

class MenuApi {
  MenuApi({
    this.status,
    this.values,
  });

  int status;
  List<Value> values;

  factory MenuApi.fromJson(Map<String, dynamic> json) => MenuApi(
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
    this.menuId,
    this.menuName,
    this.price,
    this.image,
  });

  int menuId;
  String menuName;
  String price;
  String image;

  factory Value.fromJson(Map<String, dynamic> json) => Value(
        menuId: json["menu_id"],
        menuName: json["menu_name"],
        price: json["price"],
        image: json["image"],
      );

  Map<String, dynamic> toJson() => {
        "menu_id": menuId,
        "menu_name": menuName,
        "price": price,
        "image": image,
      };
}
