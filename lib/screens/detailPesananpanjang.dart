import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:show_bakso/dummy/itemorder.dart';
import 'package:show_bakso/model/menuModel.dart';
import 'package:show_bakso/template/tabbar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_offline/flutter_offline.dart';

// ignore: must_be_immutable
class DetailPesananPanjang extends StatefulWidget {
  final String name, harga, image;
  Bakso order1, order2, order3, order4, order5;
  int jumlah;

  DetailPesananPanjang(
      this.order1, this.order2, this.order3, this.order4, this.order5,
      {Key key, this.name, this.harga, this.image, this.jumlah})
      : super(key: key);

  @override
  _DetailPesananPanjangState createState() => _DetailPesananPanjangState();
}

class _DetailPesananPanjangState extends State<DetailPesananPanjang> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.more_vert),
            )
          ],
          iconTheme: IconThemeData(color: Colors.black),
          title: Text(
            "Detail Pesanan",
            style: TextStyle(color: Colors.black, fontFamily: 'Poppins'),
          ),
          backgroundColor: Colors.white,
          bottomOpacity: 0.0,
          elevation: 0.0,
        ),
        body: Builder(builder: (BuildContext context) {
          return OfflineBuilder(
            connectivityBuilder: (BuildContext context,
                ConnectivityResult connectivity, Widget child) {
              final bool connected = connectivity != ConnectivityResult.none;
              return Stack(
                fit: StackFit.expand,
                children: [
                  child,
                  Positioned(
                      left: 0.0,
                      right: 0.0,
                      height: 40.0,
                      child: AnimatedContainer(
                        duration: const Duration(milliseconds: 300),
                        color: connected ? null : Color(0xFFEE4400),
                        child: connected
                            ? null
                            : Container(
                                margin: EdgeInsets.only(right: 10),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                        margin: EdgeInsets.only(right: 5),
                                        child: Text("OFFLINE",
                                            style: TextStyle(
                                                color: Colors.white))),
                                    SizedBox(
                                      width: 12.0,
                                      height: 12.0,
                                      child: CircularProgressIndicator(
                                        strokeWidth: 2.0,
                                        valueColor:
                                            AlwaysStoppedAnimation<Color>(
                                                Colors.white),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                      ))
                ],
              );
            },
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.only(
                    left: size.width * 0.05, right: size.width * 0.05),
                child: Container(
                  width: size.width * 0.9,
                  child: Padding(
                    padding: EdgeInsets.only(top: 17),
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "DAFTAR PESANAN",
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 15,
                                fontFamily: 'Poppins'),
                          ),
                          Container(
                            child: Column(
                              children: [
                                GestureDetector(
                                  onTap: () async {
                                    await _bottomSheet(
                                      context,
                                    );
                                  },
                                  child: Container(child: (() {
                                    if (widget.order1.jumlah > 0) {
                                      return Container(
                                        child: Row(
                                          children: [
                                            Padding(
                                              padding: EdgeInsets.only(
                                                  left: size.width * 0.03,
                                                  top: 20),
                                              child: Container(
                                                height: 100,
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Container(
                                                      width: size.width * 0.28,
                                                      child: Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    top: 3),
                                                            child: FittedBox(
                                                              fit: BoxFit
                                                                  .scaleDown,
                                                              child: Text(
                                                                widget.order1
                                                                    .name,
                                                                style: TextStyle(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                    fontFamily:
                                                                        'Poppins'),
                                                              ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    top: 3),
                                                            child: Text(
                                                              NumberFormat.currency(
                                                                      locale:
                                                                          'id',
                                                                      symbol:
                                                                          'Rp ',
                                                                      decimalDigits:
                                                                          0)
                                                                  .format(int
                                                                      .parse(widget
                                                                          .order1
                                                                          .harga
                                                                          .toString())),
                                                              style: TextStyle(
                                                                  fontFamily:
                                                                      'Poppins'),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                        .only(
                                                                    top: 3),
                                                            child: Row(
                                                              children: [
                                                                GestureDetector(
                                                                  onTap: () {
                                                                    //bapak
                                                                  },
                                                                  child:
                                                                      Container(
                                                                    width: 25,
                                                                    height: 25,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      border:
                                                                          Border
                                                                              .all(
                                                                        width:
                                                                            3,
                                                                        color: const Color(
                                                                            0xffEA8F06),
                                                                      ),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              20),
                                                                    ),
                                                                    child:
                                                                        Center(
                                                                      child:
                                                                          GestureDetector(
                                                                        child:
                                                                            Icon(
                                                                          CupertinoIcons
                                                                              .minus,
                                                                          color:
                                                                              Colors.black,
                                                                          size:
                                                                              12,
                                                                        ),
                                                                        onTap:
                                                                            () {
                                                                          setState(
                                                                              () {
                                                                            if (widget.order1.jumlah >
                                                                                0) {
                                                                              widget.order1.jumlah--;
                                                                            }
                                                                          });
                                                                        },
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsets.only(
                                                                      left: size
                                                                              .width *
                                                                          0.03),
                                                                  child:
                                                                      Container(
                                                                    width: size
                                                                            .width *
                                                                        0.05,
                                                                    child:
                                                                        FittedBox(
                                                                      fit: BoxFit
                                                                          .scaleDown,
                                                                      child:
                                                                          Text(
                                                                        widget
                                                                            .order1
                                                                            .jumlah
                                                                            .toString(),
                                                                        style: TextStyle(
                                                                            fontSize:
                                                                                20,
                                                                            color:
                                                                                Colors.black),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                                GestureDetector(
                                                                  onTap: () {
                                                                    setState(
                                                                        () {
                                                                      widget
                                                                          .order1
                                                                          .jumlah++;
                                                                    });
                                                                  },
                                                                  child:
                                                                      Padding(
                                                                    padding: EdgeInsets.only(
                                                                        left: size.width *
                                                                            0.03),
                                                                    child:
                                                                        Container(
                                                                      width: 25,
                                                                      height:
                                                                          25,
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        border:
                                                                            Border.all(
                                                                          width:
                                                                              3,
                                                                          color:
                                                                              const Color(0xffEA8F06),
                                                                        ),
                                                                        borderRadius:
                                                                            BorderRadius.circular(20),
                                                                      ),
                                                                      child:
                                                                          Center(
                                                                        child:
                                                                            Icon(
                                                                          CupertinoIcons
                                                                              .add,
                                                                          color:
                                                                              Colors.black,
                                                                          size:
                                                                              12,
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
                                              padding: EdgeInsets.only(
                                                  left: size.width * 0.3,
                                                  top: 10),
                                              child: Container(
                                                width: 100,
                                                height: 100,
                                                decoration: BoxDecoration(
                                                    image: DecorationImage(
                                                        image: AssetImage(widget
                                                            .order1.image),
                                                        fit: BoxFit.cover),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20)),
                                              ),
                                            ),
                                          ],
                                        ),
                                      );
                                    }
                                  })()),
                                ),
                                Container(child: (() {
                                  if (widget.order2.jumlah > 0) {
                                    return Container(
                                      child: Row(
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(
                                                left: size.width * 0.03,
                                                top: 20),
                                            child: Container(
                                              height: 100,
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Container(
                                                    width: size.width * 0.28,
                                                    child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  top: 3),
                                                          child: Text(
                                                            widget.order2.name,
                                                            style: TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                fontFamily:
                                                                    'Poppins'),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  top: 3),
                                                          child: Text(
                                                            NumberFormat.currency(
                                                                    locale:
                                                                        'id',
                                                                    symbol:
                                                                        'Rp ',
                                                                    decimalDigits:
                                                                        0)
                                                                .format(int
                                                                    .parse(widget
                                                                        .order2
                                                                        .harga
                                                                        .toString())),
                                                            style: TextStyle(
                                                                fontFamily:
                                                                    'Poppins'),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .only(top: 3),
                                                          child: Row(
                                                            children: [
                                                              GestureDetector(
                                                                onTap: () {
                                                                  //bapak
                                                                },
                                                                child:
                                                                    Container(
                                                                  width: 25,
                                                                  height: 25,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    border:
                                                                        Border
                                                                            .all(
                                                                      width: 3,
                                                                      color: const Color(
                                                                          0xffEA8F06),
                                                                    ),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            20),
                                                                  ),
                                                                  child: Center(
                                                                    child:
                                                                        GestureDetector(
                                                                      child:
                                                                          Icon(
                                                                        CupertinoIcons
                                                                            .minus,
                                                                        color: Colors
                                                                            .black,
                                                                        size:
                                                                            12,
                                                                      ),
                                                                      onTap:
                                                                          () {
                                                                        setState(
                                                                            () {
                                                                          if (widget.order2.jumlah >
                                                                              0) {
                                                                            widget.order2.jumlah--;
                                                                          }
                                                                        });
                                                                      },
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding: EdgeInsets.only(
                                                                    left: size
                                                                            .width *
                                                                        0.03),
                                                                child:
                                                                    Container(
                                                                  width:
                                                                      size.width *
                                                                          0.05,
                                                                  child:
                                                                      FittedBox(
                                                                    fit: BoxFit
                                                                        .scaleDown,
                                                                    child: Text(
                                                                      widget
                                                                          .order2
                                                                          .jumlah
                                                                          .toString(),
                                                                      style: TextStyle(
                                                                          fontSize:
                                                                              20,
                                                                          color:
                                                                              Colors.black),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                              GestureDetector(
                                                                onTap: () {
                                                                  setState(() {
                                                                    widget
                                                                        .order2
                                                                        .jumlah++;
                                                                  });
                                                                },
                                                                child: Padding(
                                                                  padding: EdgeInsets.only(
                                                                      left: size
                                                                              .width *
                                                                          0.03),
                                                                  child:
                                                                      Container(
                                                                    width: 25,
                                                                    height: 25,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      border:
                                                                          Border
                                                                              .all(
                                                                        width:
                                                                            3,
                                                                        color: const Color(
                                                                            0xffEA8F06),
                                                                      ),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              20),
                                                                    ),
                                                                    child:
                                                                        Center(
                                                                      child:
                                                                          Icon(
                                                                        CupertinoIcons
                                                                            .add,
                                                                        color: Colors
                                                                            .black,
                                                                        size:
                                                                            12,
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
                                            padding: EdgeInsets.only(
                                                left: size.width * 0.3,
                                                top: 10),
                                            child: Container(
                                              width: 100,
                                              height: 100,
                                              decoration: BoxDecoration(
                                                  image: DecorationImage(
                                                      image: AssetImage(
                                                          widget.order2.image),
                                                      fit: BoxFit.cover),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          20)),
                                            ),
                                          ),
                                        ],
                                      ),
                                    );
                                  }
                                })()),
                                Container(child: (() {
                                  if (widget.order3.jumlah > 0) {
                                    return Container(
                                      child: Row(
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(
                                                left: size.width * 0.03,
                                                top: 20),
                                            child: Container(
                                              height: 100,
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Container(
                                                    width: size.width * 0.28,
                                                    child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  top: 3),
                                                          child: Text(
                                                            widget.order3.name,
                                                            style: TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                fontFamily:
                                                                    'Poppins'),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  top: 3),
                                                          child: Text(
                                                            NumberFormat.currency(
                                                                    locale:
                                                                        'id',
                                                                    symbol:
                                                                        'Rp ',
                                                                    decimalDigits:
                                                                        0)
                                                                .format(int
                                                                    .parse(widget
                                                                        .order3
                                                                        .harga
                                                                        .toString())),
                                                            style: TextStyle(
                                                                fontFamily:
                                                                    'Poppins'),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .only(top: 3),
                                                          child: Row(
                                                            children: [
                                                              GestureDetector(
                                                                onTap: () {
                                                                  //bapak
                                                                },
                                                                child:
                                                                    Container(
                                                                  width: 25,
                                                                  height: 25,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    border:
                                                                        Border
                                                                            .all(
                                                                      width: 3,
                                                                      color: const Color(
                                                                          0xffEA8F06),
                                                                    ),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            20),
                                                                  ),
                                                                  child: Center(
                                                                    child:
                                                                        GestureDetector(
                                                                      child:
                                                                          Icon(
                                                                        CupertinoIcons
                                                                            .minus,
                                                                        color: Colors
                                                                            .black,
                                                                        size:
                                                                            12,
                                                                      ),
                                                                      onTap:
                                                                          () {
                                                                        setState(
                                                                            () {
                                                                          if (widget.order3.jumlah >
                                                                              0) {
                                                                            widget.order3.jumlah--;
                                                                          }
                                                                        });
                                                                      },
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding: EdgeInsets.only(
                                                                    left: size
                                                                            .width *
                                                                        0.03),
                                                                child:
                                                                    Container(
                                                                  width:
                                                                      size.width *
                                                                          0.05,
                                                                  child:
                                                                      FittedBox(
                                                                    fit: BoxFit
                                                                        .scaleDown,
                                                                    child: Text(
                                                                      widget
                                                                          .order3
                                                                          .jumlah
                                                                          .toString(),
                                                                      style: TextStyle(
                                                                          fontSize:
                                                                              20,
                                                                          color:
                                                                              Colors.black),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                              GestureDetector(
                                                                onTap: () {
                                                                  setState(() {
                                                                    widget
                                                                        .order3
                                                                        .jumlah++;
                                                                  });
                                                                },
                                                                child: Padding(
                                                                  padding: EdgeInsets.only(
                                                                      left: size
                                                                              .width *
                                                                          0.03),
                                                                  child:
                                                                      Container(
                                                                    width: 25,
                                                                    height: 25,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      border:
                                                                          Border
                                                                              .all(
                                                                        width:
                                                                            3,
                                                                        color: const Color(
                                                                            0xffEA8F06),
                                                                      ),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              20),
                                                                    ),
                                                                    child:
                                                                        Center(
                                                                      child:
                                                                          Icon(
                                                                        CupertinoIcons
                                                                            .add,
                                                                        color: Colors
                                                                            .black,
                                                                        size:
                                                                            12,
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
                                            padding: EdgeInsets.only(
                                                left: size.width * 0.3,
                                                top: 10),
                                            child: Container(
                                              width: 100,
                                              height: 100,
                                              decoration: BoxDecoration(
                                                  image: DecorationImage(
                                                      image: AssetImage(
                                                          widget.order3.image),
                                                      fit: BoxFit.cover),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          20)),
                                            ),
                                          ),
                                        ],
                                      ),
                                    );
                                  }
                                })()),
                                Container(child: (() {
                                  if (widget.order4.jumlah > 0) {
                                    return Container(
                                      child: Row(
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(
                                                left: size.width * 0.03,
                                                top: 20),
                                            child: Container(
                                              height: 100,
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Container(
                                                    width: size.width * 0.28,
                                                    child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  top: 3),
                                                          child: Text(
                                                            widget.order4.name,
                                                            style: TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                fontFamily:
                                                                    'Poppins'),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  top: 3),
                                                          child: Text(
                                                            NumberFormat.currency(
                                                                    locale:
                                                                        'id',
                                                                    symbol:
                                                                        'Rp ',
                                                                    decimalDigits:
                                                                        0)
                                                                .format(int
                                                                    .parse(widget
                                                                        .order4
                                                                        .harga
                                                                        .toString())),
                                                            style: TextStyle(
                                                                fontFamily:
                                                                    'Poppins'),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .only(top: 3),
                                                          child: Row(
                                                            children: [
                                                              GestureDetector(
                                                                onTap: () {
                                                                  //bapak
                                                                },
                                                                child:
                                                                    Container(
                                                                  width: 25,
                                                                  height: 25,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    border:
                                                                        Border
                                                                            .all(
                                                                      width: 3,
                                                                      color: const Color(
                                                                          0xffEA8F06),
                                                                    ),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            20),
                                                                  ),
                                                                  child: Center(
                                                                    child:
                                                                        GestureDetector(
                                                                      child:
                                                                          Icon(
                                                                        CupertinoIcons
                                                                            .minus,
                                                                        color: Colors
                                                                            .black,
                                                                        size:
                                                                            12,
                                                                      ),
                                                                      onTap:
                                                                          () {
                                                                        setState(
                                                                            () {
                                                                          if (widget.order4.jumlah >
                                                                              0) {
                                                                            widget.order4.jumlah--;
                                                                          }
                                                                        });
                                                                      },
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding: EdgeInsets.only(
                                                                    left: size
                                                                            .width *
                                                                        0.03),
                                                                child:
                                                                    Container(
                                                                  width:
                                                                      size.width *
                                                                          0.05,
                                                                  child:
                                                                      FittedBox(
                                                                    fit: BoxFit
                                                                        .scaleDown,
                                                                    child: Text(
                                                                      widget
                                                                          .order4
                                                                          .jumlah
                                                                          .toString(),
                                                                      style: TextStyle(
                                                                          fontSize:
                                                                              20,
                                                                          color:
                                                                              Colors.black),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                              GestureDetector(
                                                                onTap: () {
                                                                  setState(() {
                                                                    widget
                                                                        .order4
                                                                        .jumlah++;
                                                                  });
                                                                },
                                                                child: Padding(
                                                                  padding: EdgeInsets.only(
                                                                      left: size
                                                                              .width *
                                                                          0.03),
                                                                  child:
                                                                      Container(
                                                                    width: 25,
                                                                    height: 25,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      border:
                                                                          Border
                                                                              .all(
                                                                        width:
                                                                            3,
                                                                        color: const Color(
                                                                            0xffEA8F06),
                                                                      ),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              20),
                                                                    ),
                                                                    child:
                                                                        Center(
                                                                      child:
                                                                          Icon(
                                                                        CupertinoIcons
                                                                            .add,
                                                                        color: Colors
                                                                            .black,
                                                                        size:
                                                                            12,
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
                                            padding: EdgeInsets.only(
                                                left: size.width * 0.3,
                                                top: 10),
                                            child: Container(
                                              width: 100,
                                              height: 100,
                                              decoration: BoxDecoration(
                                                  image: DecorationImage(
                                                      image: AssetImage(
                                                          widget.order4.image),
                                                      fit: BoxFit.cover),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          20)),
                                            ),
                                          ),
                                        ],
                                      ),
                                    );
                                  }
                                })()),
                                Container(child: (() {
                                  if (widget.order5.jumlah > 0) {
                                    return Container(
                                      child: Row(
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(
                                                left: size.width * 0.03,
                                                top: 20),
                                            child: Container(
                                              height: 100,
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Container(
                                                    width: size.width * 0.28,
                                                    child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  top: 3),
                                                          child: Text(
                                                            widget.order5.name,
                                                            style: TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                fontFamily:
                                                                    'Poppins'),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  top: 3),
                                                          child: Text(
                                                            NumberFormat.currency(
                                                                    locale:
                                                                        'id',
                                                                    symbol:
                                                                        'Rp ',
                                                                    decimalDigits:
                                                                        0)
                                                                .format(int
                                                                    .parse(widget
                                                                        .order5
                                                                        .harga
                                                                        .toString())),
                                                            style: TextStyle(
                                                                fontFamily:
                                                                    'Poppins'),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .only(top: 3),
                                                          child: Row(
                                                            children: [
                                                              GestureDetector(
                                                                onTap: () {
                                                                  //bapak
                                                                },
                                                                child:
                                                                    Container(
                                                                  width: 25,
                                                                  height: 25,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    border:
                                                                        Border
                                                                            .all(
                                                                      width: 3,
                                                                      color: const Color(
                                                                          0xffEA8F06),
                                                                    ),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            20),
                                                                  ),
                                                                  child: Center(
                                                                    child:
                                                                        GestureDetector(
                                                                      child:
                                                                          Icon(
                                                                        CupertinoIcons
                                                                            .minus,
                                                                        color: Colors
                                                                            .black,
                                                                        size:
                                                                            12,
                                                                      ),
                                                                      onTap:
                                                                          () {
                                                                        setState(
                                                                            () {
                                                                          if (widget.order5.jumlah >
                                                                              0) {
                                                                            widget.order5.jumlah--;
                                                                          }
                                                                        });
                                                                      },
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding: EdgeInsets.only(
                                                                    left: size
                                                                            .width *
                                                                        0.03),
                                                                child:
                                                                    Container(
                                                                  width:
                                                                      size.width *
                                                                          0.05,
                                                                  child:
                                                                      FittedBox(
                                                                    fit: BoxFit
                                                                        .scaleDown,
                                                                    child: Text(
                                                                      widget
                                                                          .order5
                                                                          .jumlah
                                                                          .toString(),
                                                                      style: TextStyle(
                                                                          fontSize:
                                                                              20,
                                                                          color:
                                                                              Colors.black),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                              GestureDetector(
                                                                onTap: () {
                                                                  setState(() {
                                                                    widget
                                                                        .order5
                                                                        .jumlah++;
                                                                  });
                                                                },
                                                                child: Padding(
                                                                  padding: EdgeInsets.only(
                                                                      left: size
                                                                              .width *
                                                                          0.03),
                                                                  child:
                                                                      Container(
                                                                    width: 25,
                                                                    height: 25,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      border:
                                                                          Border
                                                                              .all(
                                                                        width:
                                                                            3,
                                                                        color: const Color(
                                                                            0xffEA8F06),
                                                                      ),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              20),
                                                                    ),
                                                                    child:
                                                                        Center(
                                                                      child:
                                                                          Icon(
                                                                        CupertinoIcons
                                                                            .add,
                                                                        color: Colors
                                                                            .black,
                                                                        size:
                                                                            12,
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
                                            padding: EdgeInsets.only(
                                                left: size.width * 0.3,
                                                top: 10),
                                            child: Container(
                                              width: 100,
                                              height: 100,
                                              decoration: BoxDecoration(
                                                  image: DecorationImage(
                                                      image: AssetImage(
                                                          widget.order5.image),
                                                      fit: BoxFit.cover),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          20)),
                                            ),
                                          ),
                                        ],
                                      ),
                                    );
                                  }
                                })()),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 20),
                            child: Container(
                              child: Row(
                                children: [
                                  Container(
                                    width: size.width * 0.3,
                                    height: 28,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        border: Border.all(
                                            width: 1, color: Colors.grey)),
                                    child: Row(
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(
                                              left: size.width * 0.035),
                                          child: Container(
                                            child: Icon(
                                              Icons.calendar_today_rounded,
                                              size: 15,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                              left: size.width * 0.02),
                                          child: Text(
                                            "Catatan",
                                            style: TextStyle(
                                                fontFamily: 'Poppins'),
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
                            padding: const EdgeInsets.only(top: 10),
                            child: Container(
                              width: size.width * 0.9,
                              child: Divider(
                                color: Colors.black,
                              ),
                            ),
                          ),
                          Container(
                            width: size.width * 0.9,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "DETAIL TRANSAKSI",
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontFamily: 'Poppins'),
                                ),
                                Padding(
                                  padding:
                                      EdgeInsets.only(left: size.width * 0.03),
                                  child: Container(
                                    child: TransaksiItem(
                                        widget.order1,
                                        widget.order2,
                                        widget.order3,
                                        widget.order4,
                                        widget.order5),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                      left: size.width * 0.03, top: 20),
                                  child: Container(
                                    child: ItemPajak(
                                        widget.order1,
                                        widget.order2,
                                        widget.order3,
                                        widget.order4,
                                        widget.order5),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 40),
                            child: Container(
                              width: size.width * 0.9,
                              child: Divider(
                                color: Colors.black,
                              ),
                            ),
                          ),
                          Container(
                            child: ItemTotal(widget.order1, widget.order2,
                                widget.order3, widget.order4, widget.order5),
                          ),
                          Container(
                            child: Payment(widget.order1, widget.order2,
                                widget.order3, widget.order4, widget.order5),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          );
        }));
  }
}

_bottomSheet(context) {
  showModalBottomSheet(
    context: context,
    builder: (BuildContext context) {
      return BottomSheet();
    },
  );
}

class BottomSheet extends StatelessWidget {
  const BottomSheet({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30), topRight: Radius.circular(30))),
      child: SingleChildScrollView(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Column(
              children: <Widget>[
                Container(
                  height: 200,
                  width: 392.4,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30)),
                      image: DecorationImage(
                          image: AssetImage('assets/images/bakso1.jpg'),
                          fit: BoxFit.fill)),
                ),
                Center(
                  child: Container(
                    height: 300,
                    width: 392.4,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  'Paket Bakso 1',
                                  style: GoogleFonts.poppins(
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  //   TextStyle(
                                  //       color: Colors.lightBlue,
                                  //       fontFamily: 'Poppins',
                                  //       fontSize: 22,
                                  //       fontWeight: FontWeight.bold),
                                ),
                              ),
                              Container(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  'Pentol halus + Pentol Kasar + Tahu + Mie putih',
                                  style: GoogleFonts.poppins(
                                    color: Colors.black45,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Container(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  'Rp. 30.000',
                                  style: GoogleFonts.poppins(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
