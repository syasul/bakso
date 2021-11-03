import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

// ignore: must_be_immutable
class TransaksiCard extends StatelessWidget {
  final String name, pajak;
  int jumlah, harga;

  TransaksiCard({
    Key key,
    this.name,
    this.jumlah,
    this.harga,
    this.pajak,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      child: Column(
        children: [
          Container(
            child: Row(
              children: [
                Container(
                  width: size.width * 0.6,
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: size.width * 0.03),
                        child: Text(
                          name,
                          style: TextStyle(fontFamily: 'Poppins'),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: size.width * 0.04, top: size.width * 0.03),
                        child: Text(
                          "x",
                          style: TextStyle(fontFamily: 'Poppins'),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: size.width * 0.05, top: size.width * 0.03),
                        child: Text(
                          jumlah.toString(),
                          style: TextStyle(fontFamily: 'Poppins'),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: size.width * 0.021, top: size.width * 0.03),
                  child: Container(
                    width: size.width * 0.24,
                    child: Row(
                      children: [
                        Text(
                    "Rp ",
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.normal,
                        fontSize: 14),
                  ),
                  Container(
                    width: size.width * 0.15,
                    child: FittedBox(
                      fit: BoxFit.contain,
                      child: Text(
                        NumberFormat.currency(
                                locale: 'id', symbol: "", decimalDigits: 0)
                            .format(num.parse(harga.toString())),
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.normal,
                            fontSize: 14),
                      ),
                    ),
                  ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
