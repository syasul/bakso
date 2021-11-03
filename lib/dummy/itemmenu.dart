// ignore_for_file: type_init_formals

import 'package:flutter/material.dart';
import 'package:show_bakso/model/menuModel.dart';
import 'package:show_bakso/template/menu.dart';

// ignore: must_be_immutable
class MenuItem extends StatefulWidget {

  Bakso menu1 ,menu2 , menu3 , menu4 , menu5;
  MenuItem( Bakso this.menu1, Bakso this.menu2 , Bakso this.menu3, Bakso this.menu4, Bakso this.menu5, {Key key}) : super(key: key);

  @override
  _MenuItemState createState() => _MenuItemState();
}
class _MenuItemState extends State<MenuItem> {
  int jumlah = 0;
  
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          MenuCard(
            image: widget.menu1.image,
            name: widget.menu1.name,
            harga: widget.menu1.harga,
            jumlah: widget.menu1.jumlah,
          ),
          MenuCard(
            image: widget.menu2.image,
            name: widget.menu2.name,
            harga: widget.menu2.harga,
            jumlah: widget.menu2.jumlah,
          ),
          MenuCard(
            image: widget.menu3.image,
            name: widget.menu3.name,
            harga: widget.menu3.harga,
            jumlah: widget.menu3.jumlah,
          ),
          MenuCard(
            image: widget.menu4.image,
            name: widget.menu4.name,
            harga: widget.menu4.harga,
            jumlah: widget.menu4.jumlah,
          ),
          MenuCard(
            image: widget.menu5.image,
            name: widget.menu5.name,
            harga: widget.menu5.harga,
            jumlah: widget.menu5.jumlah,
          ),
        ],
      ),
    );
  }
}
