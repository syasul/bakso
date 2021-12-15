class MultiOrder {
  final num menuid;
  final num pieces;
  final num price;

  MultiOrder(this.menuid, this.pieces, this.price);
  MultiOrder.fromJson(Map<num, dynamic> json)
      : menuid = json['id'],
        pieces = json['jumlah'],
        price = json['harga'];
  Map<String, dynamic> toJson() {
    return {
      'menu_id': menuid,
      'pieces': pieces,
      'price': price * pieces,
    };
  }
}
