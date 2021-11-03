import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:show_bakso/model/menuModel.dart';

// ignore: must_be_immutable
class ButtonMenu extends StatefulWidget {
  Bakso order1, order2, order3, order4, order5;

  ButtonMenu(this.order1, this.order2, this.order3, this.order4, this.order5,
      {Key key})
      : super(key: key);

  @override
  _ButtonMenuState createState() => _ButtonMenuState();
}

class _ButtonMenuState extends State<ButtonMenu> {
  @override
  Widget build(BuildContext context) {
    num totalharga = widget.order1.harga * widget.order1.jumlah +
        widget.order2.harga * widget.order2.jumlah +
        widget.order3.harga * widget.order3.jumlah +
        widget.order4.harga * widget.order4.jumlah +
        widget.order5.harga * widget.order5.jumlah;
    var size = MediaQuery.of(context).size;
    return Padding(
      padding:
          EdgeInsets.only(bottom: size.height * 0.05, right: size.width * 0.05),
      child: Container(
        width: size.width * 0.92,
        height: 68.41,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: const Color(0xffEA8F06),
        ),
        child: Row(
          children: [
            Padding(
              padding: EdgeInsets.only(left: size.width * 0.05, top: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    (widget.order1.jumlah +
                                widget.order2.jumlah +
                                widget.order3.jumlah +
                                widget.order4.jumlah +
                                widget.order5.jumlah)
                            .toString() +
                        " Menu",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: size.width * 0.05,
                        fontFamily: 'Poppins'),
                  ),
                  Text(
                    "klik untuk melanjutkan",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: size.width * 0.03,
                        fontFamily: 'Poppins'),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: size.width * 0.15),
              child: Container(
                child: Text(
                  NumberFormat.currency(
                          locale: 'id', symbol: 'Rp ', decimalDigits: 0)
                      .format(num.parse(totalharga.toString())),
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: size.width * 0.05,
                      fontFamily: 'Poppins'),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
