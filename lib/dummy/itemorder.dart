import 'package:flutter/material.dart';
import 'package:show_bakso/template/order.dart';
import 'package:show_bakso/model/menuModel.dart';
import 'package:show_bakso/template/pajak.dart';
import 'package:show_bakso/template/total.dart';
import 'package:show_bakso/template/transaksi.dart';

// ignore: must_be_immutable
class ItemOrder extends StatefulWidget {
  Bakso order1, order2, order3, order4, order5;

  ItemOrder(this.order1, this.order2, this.order3, this.order4, this.order5,
      {Key key})
      : super(key: key);

  @override
  _ItemOrderState createState() => _ItemOrderState();
}

// ignore: must_be_immutable
class TransaksiItem extends StatefulWidget {
  Bakso order1, order2, order3, order4, order5;

  TransaksiItem(this.order1, this.order2, this.order3, this.order4, this.order5,
      {Key key})
      : super(key: key);

  @override
  State<TransaksiItem> createState() => _TransaksiItemState();
}

// ignore: must_be_immutable
class ItemPajak extends StatefulWidget {
  Bakso order1, order2, order3, order4, order5;

  ItemPajak(this.order1, this.order2, this.order3, this.order4, this.order5,
      {Key key})
      : super(key: key);

  @override
  State<ItemPajak> createState() => _ItemPajakState();
}

// ignore: must_be_immutable
class ItemTotal extends StatefulWidget {
  Bakso order1, order2, order3, order4, order5;

  ItemTotal(this.order1, this.order2, this.order3, this.order4, this.order5,
      {Key key})
      : super(key: key);

  @override
  State<ItemTotal> createState() => _ItemTotalState();
}


class _ItemOrderState extends State<ItemOrder> {
  int jumlah = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(child: (() {
            if (widget.order1.jumlah > 0) {
              return OrderCard(
                name: widget.order1.name,
                harga: widget.order1.harga,
                image: widget.order1.image,
                jumlah: widget.order1.jumlah,
              );
            }
          })()),
          Container(child: (() {
            if (widget.order2.jumlah > 0) {
              return OrderCard(
                name: widget.order2.name,
                harga: widget.order2.harga,
                image: widget.order2.image,
                jumlah: widget.order2.jumlah,
              );
            }
          })()),
          Container(child: (() {
            if (widget.order3.jumlah > 0) {
              return OrderCard(
                name: widget.order3.name,
                harga: widget.order3.harga,
                image: widget.order3.image,
                jumlah: widget.order3.jumlah,
              );
            }
          })()),
          Container(child: (() {
            if (widget.order4.jumlah > 0) {
              return OrderCard(
                name: widget.order4.name,
                harga: widget.order4.harga,
                image: widget.order4.image,
                jumlah: widget.order4.jumlah,
              );
            }
          })()),
          Container(child: (() {
            if (widget.order5.jumlah > 0) {
              return OrderCard(
                name: widget.order5.name,
                harga: widget.order5.harga,
                image: widget.order5.image,
                jumlah: widget.order5.jumlah,
              );
            }
          })()),
        ],
      ),
    );
  }
}

class _TransaksiItemState extends State<TransaksiItem> {
  int total = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(child: (() {
            if (widget.order1.jumlah > 0) {
              return TransaksiCard(
                name: widget.order1.name,
                harga: widget.order1.harga * widget.order1.jumlah,
                jumlah: widget.order1.jumlah,
              );
            }
          })()),
          Container(child: (() {
            if (widget.order2.jumlah > 0) {
              return TransaksiCard(
                name: widget.order2.name,
                harga: widget.order2.harga * widget.order2.jumlah,
                jumlah: widget.order2.jumlah,
              );
            }
          })()),
          Container(child: (() {
            if (widget.order3.jumlah > 0) {
              return TransaksiCard(
                name: widget.order3.name,
                harga: widget.order3.harga * widget.order3.jumlah,
                jumlah: widget.order3.jumlah,
              );
            }
          })()),
          Container(child: (() {
            if (widget.order4.jumlah > 0) {
              return TransaksiCard(
                name: widget.order4.name,
                harga: widget.order4.harga * widget.order4.jumlah,
                jumlah: widget.order4.jumlah,
              );
            }
          })()),
          Container(child: (() {
            if (widget.order5.jumlah > 0) {
              return TransaksiCard(
                name: widget.order5.name,
                harga: widget.order5.harga * widget.order5.jumlah,
                jumlah: widget.order5.jumlah,
              );
            }
          })()),
        ],
      ),
    );
  }
}

class _ItemPajakState extends State<ItemPajak> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          PajakCard(
            pajak: "10%",
            totalPajak: (widget.order1.harga * widget.order1.jumlah
              +
              widget.order2.harga * widget.order2.jumlah
              +
              widget.order3.harga * widget.order3.jumlah
              +
              widget.order4.harga * widget.order4.jumlah
              +
              widget.order5.harga * widget.order5.jumlah) * 10/100
              ,
          )
        ],
      ),
    );
  }
}



class _ItemTotalState extends State<ItemTotal> {
  @override
  Widget build(BuildContext context) {
    // ignore: non_constant_identifier_names
    num TotalHarga = (widget.order1.harga * widget.order1.jumlah
              +
              widget.order2.harga * widget.order2.jumlah
              +
              widget.order3.harga * widget.order3.jumlah
              +
              widget.order4.harga * widget.order4.jumlah
              +
              widget.order5.harga * widget.order5.jumlah) ;
    return Container(
      child: Row(
        children: [
          TotalCard(
            total: (TotalHarga + TotalHarga*10/100).toString(),
          )
        ],
      ),
    );
  }
}