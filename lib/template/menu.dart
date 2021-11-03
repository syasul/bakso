import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:show_bakso/model/menuModel.dart';

// ignore: must_be_immutable
class MenuCard extends StatefulWidget {
  final String image, name;
  int jumlah, harga;

  MenuCard({Key key, this.image, this.name, this.harga, this.jumlah})
      : super(key: key);

  @override
  _MenuCardState createState() => _MenuCardState();
}

class _MenuCardState extends State<MenuCard> {
  int jumlah1;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      child: Padding(
        padding: EdgeInsets.only(top: size.height * 0.03),
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Row(
                  children: [
                    Container(
                      width: size.width * 0.52,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.2),
                            spreadRadius: 7,
                            blurRadius: 7,
                            offset: Offset(0, 3),
                          )
                        ],
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 5,
                              left: 5,
                              bottom: 5,
                            ),
                            child: Container(
                              width: 69,
                              height: 53,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(widget.image),
                                    fit: BoxFit.fill),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 0, left: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  child: Text(
                                    widget.name,
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                        decoration: TextDecoration.none),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 5),
                                  child: Container(
                                    child: Text(
                                      NumberFormat.currency(locale: 'id',symbol: 'Rp ',decimalDigits: 0).format(int.parse(widget.harga.toString())),
                                      style: TextStyle(
                                          fontSize: 18,
                                          color: Colors.grey,
                                          decoration: TextDecoration.none),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        //bapak
                      },
                      child: Padding(
                        padding: EdgeInsets.only(left: size.width * 0.05),
                        child: Container(
                          width: 42,
                          height: 42,
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
                                size: 30,
                              ),
                              onTap: () {
                                setState(() {
                                  if (widget.jumlah > 0) {
                                    widget.jumlah--;
                                    Order(
                                      jumlah: widget.jumlah,
                                      name: widget.name,
                                      image: widget.image,
                                      harga: widget.harga,
                                    );
                                  }
                                });
                              },
                            ),
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
                          style: TextStyle(fontSize: 20, color: Colors.black),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          widget.jumlah++;
                          if (widget.jumlah > 0) {
                            Order(
                              jumlah: widget.jumlah,
                              name: widget.name,
                              image: widget.image,
                              harga: widget.harga,
                            );
                          }
                        });
                      },
                      child: Padding(
                        padding: EdgeInsets.only(left: size.width * 0.03),
                        child: Container(
                          width: 42,
                          height: 42,
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
                              size: 30,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
