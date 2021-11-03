import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

// ignore: must_be_immutable
class OrderCard extends StatefulWidget {
  final String name, image;
  int jumlah , harga;

  OrderCard({Key key, this.name, this.harga, this.image, this.jumlah})
      : super(key: key);

  @override
  _OrderCardState createState() => _OrderCardState();
}

class _OrderCardState extends State<OrderCard> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.only(left: size.width * 0.03, top: 20),
            child: Container(
              height: 100,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: size.width * 0.28,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 3),
                          child: Text(
                            widget.name,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Poppins'),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 3),
                          child: Text(
                            NumberFormat.currency(locale: 'id',symbol: 'Rp ',decimalDigits: 0).format(int.parse(widget.harga.toString())),
                            style: TextStyle(fontFamily: 'Poppins'),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 3),
                          child: Row(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  //bapak
                                },
                                child: Container(
                                  width: 25,
                                  height: 25,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      width: 3,
                                      color: const Color(0xffEA8F06),
                                    ),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Center(
                                    child: GestureDetector(
                                      child: Icon(
                                        CupertinoIcons.minus,
                                        color: Colors.black,
                                        size: 12,
                                      ),
                                      onTap: () {
                                        setState(() {
                                          if (widget.jumlah > 0) {
                                            widget.jumlah--;
                                            
                                          }
                                        });
                                      },
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: size.width * 0.03),
                                child: Container(
                                  width: size.width * 0.03,
                                  child: Text(
                                    widget.jumlah.toString(),
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.black),
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    widget.jumlah++;
                                  });
                                },
                                child: Padding(
                                  padding:
                                      EdgeInsets.only(left: size.width * 0.03),
                                  child: Container(
                                    width: 25,
                                    height: 25,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        width: 3,
                                        color: const Color(0xffEA8F06),
                                      ),
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Center(
                                      child: Icon(
                                        CupertinoIcons.add,
                                        color: Colors.black,
                                        size: 12,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: size.width * 0.3, top: 10),
            child: Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(widget.image), fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(20)),
            ),
          ),
        ],
      ),
    );
  }
}
