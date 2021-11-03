import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:show_bakso/model/menuModel.dart';
import 'package:show_bakso/screens/detailPesananpanjang.dart';
import 'package:show_bakso/widget/ButtonMenu.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Map2.dart';

class Menupanjang extends StatefulWidget {
  @override
  _MenupanjangState createState() => _MenupanjangState();
}

Bakso menu1 = Bakso(
    jumlah: 0,
    name: "Paket Bakso 1",
    image: "assets/images/baksolast.png",
    harga: 16000);

Bakso menu2 = Bakso(
    jumlah: 0,
    name: "Paket Bakso 2",
    image: "assets/images/baksolast.png",
    harga: 15000);

Bakso menu3 = Bakso(
    jumlah: 0,
    name: "Paket Bakso 3",
    image: "assets/images/baksolast.png",
    harga: 17000);

Bakso menu4 = Bakso(
    jumlah: 0,
    name: "Paket Bakso 4",
    image: "assets/images/baksolast.png",
    harga: 18000);

Bakso menu5 = Bakso(
    jumlah: 0,
    name: "Paket Bakso 5",
    image: "assets/images/baksolast.png",
    harga: 19000);

class _MenupanjangState extends State<Menupanjang> {
  @override
  Widget build(BuildContext context) {
    new Timer.periodic(Duration(seconds: 1), (Timer t) => setState(() {}));
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: size.width * 0.05),
          child: Container(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(0, size.height * 0.1, 0, 0),
                  child: Container(
                    width: size.width * 0.9,
                    height: size.height * 0.1,
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(bottom: 20),
                          child: Container(
                            width: 63.33,
                            height: 63.33,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        "assets/images/jarumbapakfix.jpg"))),
                          ),
                        ),
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                child: RichText(
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: "Selamat Siang ",
                                        style: TextStyle(
                                            fontSize: 20,
                                            color: Colors.black,
                                            fontFamily: 'Poppins'),
                                      ),
                                      TextSpan(
                                        text: "Ade!",
                                        style: TextStyle(
                                            fontSize: 20,
                                            color: const Color(0xffEA8F06),
                                            fontFamily: 'Poppins'),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                child: Text(
                                  "Penjualan mu sedikit lagi memenuhi target, semangat!",
                                  style: TextStyle(
                                      fontSize: 8, fontFamily: 'Poppins'),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: size.width * 0.95,
                  height: size.height * 0.1,
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Peta2(),
                            ),
                          );
                        },
                        child: Container(
                          width: size.width * 0.4,
                          height: 65.78,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.2),
                                spreadRadius: 10,
                                blurRadius: 7,
                                offset: Offset(0, 3),
                              )
                            ],
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Row(
                            children: [
                              Container(
                                child: Padding(
                                  padding:
                                      EdgeInsets.only(left: size.width * 0.05),
                                  child: Icon(
                                    CupertinoIcons.arrow_left,
                                    color: const Color(0xffEA8F06),
                                    size: 40,
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsets.only(left: size.width * 0.04),
                                child: Container(
                                  child: Text(
                                    "Batal",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 22,
                                        fontFamily: 'Poppins'),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: size.width * 0.05),
                        child: Container(
                          width: size.width * 0.45,
                          height: 65.78,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.2),
                                spreadRadius: 10,
                                blurRadius: 7,
                                offset: Offset(0, 3),
                              )
                            ],
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Row(
                            children: [
                              Stack(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(
                                        top: 23, left: size.width * 0.02),
                                    child: Container(
                                      width: 49.72,
                                      height: 26.61,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                                "assets/images/mangkuk.jpg"),
                                            fit: BoxFit.fill),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        left: size.width * 0.035),
                                    child: Container(
                                      child: Text(
                                        "18",
                                        style: TextStyle(fontSize: 32.34),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                    top: 15, left: size.width * 0.035),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      child: Text(
                                        "total transaksi",
                                        style: TextStyle(
                                            fontSize: size.width * 0.028,
                                            fontWeight: FontWeight.w600,
                                            fontFamily: 'Poppins'),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 5),
                                      child: Container(
                                        child: Text(
                                          "Rp 200.000",
                                          style: TextStyle(
                                              fontSize: size.width * 0.04,
                                              color: Colors.grey,
                                              fontFamily: 'Poppins'),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: size.height * 0.04),
                  child: Container(
                    width: size.width * 0.9,
                    child: Divider(
                      color: Colors.black,
                    ),
                  ),
                ),
                Container(
                  child: Padding(
                    padding: EdgeInsets.only(top: size.height * 0.03),
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          GestureDetector(
                            onTap: () async {
                              await _bottomSheet1(
                                context,
                              );
                            },
                            child: Container(
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
                                                  image:
                                                      AssetImage(menu1.image),
                                                  fit: BoxFit.fill),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 0, left: 10),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                child: Text(
                                                  menu1.name,
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Colors.black,
                                                      decoration:
                                                          TextDecoration.none),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 5),
                                                child: Container(
                                                  child: Text(
                                                    NumberFormat.currency(
                                                            locale: 'id',
                                                            symbol: 'Rp ',
                                                            decimalDigits: 0)
                                                        .format(num.parse(menu1
                                                            .harga
                                                            .toString())),
                                                    style: TextStyle(
                                                        fontSize: 18,
                                                        color: Colors.grey,
                                                        decoration:
                                                            TextDecoration
                                                                .none),
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
                                      padding: EdgeInsets.only(
                                          left: size.width * 0.05),
                                      child: Container(
                                        width: 42,
                                        height: 42,
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                            width: 3,
                                            color: const Color(0xffEA8F06),
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(20),
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
                                                if (menu1.jumlah > 0) {
                                                  menu1.jumlah--;
                                                }
                                              });
                                            },
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        left: size.width * 0.03),
                                    child: Container(
                                      width: size.width * 0.05,
                                      child: FittedBox(
                                        fit: BoxFit.scaleDown,
                                        child: Text(
                                          menu1.jumlah.toString(),
                                          style: TextStyle(
                                              fontSize: 20,
                                              color: Colors.black),
                                        ),
                                      ),
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        menu1.jumlah++;
                                      });
                                    },
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                          left: size.width * 0.03),
                                      child: Container(
                                        width: 42,
                                        height: 42,
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                            width: 3,
                                            color: const Color(0xffEA8F06),
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(20),
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
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  child: Padding(
                    padding: EdgeInsets.only(top: size.height * 0.03),
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          GestureDetector(
                            onTap: () async {
                              await _bottomSheet2(
                                context,
                              );
                            },
                            child: Container(
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
                                                  image:
                                                      AssetImage(menu2.image),
                                                  fit: BoxFit.fill),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 0, left: 10),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                child: Text(
                                                  menu2.name,
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Colors.black,
                                                      decoration:
                                                          TextDecoration.none),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 5),
                                                child: Container(
                                                  child: Text(
                                                    NumberFormat.currency(
                                                            locale: 'id',
                                                            symbol: 'Rp ',
                                                            decimalDigits: 0)
                                                        .format(num.parse(menu2
                                                            .harga
                                                            .toString())),
                                                    style: TextStyle(
                                                        fontSize: 18,
                                                        color: Colors.grey,
                                                        decoration:
                                                            TextDecoration
                                                                .none),
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
                                    onTap: () async {
                                      await _bottomSheet2(
                                        context,
                                      );
                                    },
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                          left: size.width * 0.05),
                                      child: Container(
                                        width: 42,
                                        height: 42,
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                            width: 3,
                                            color: const Color(0xffEA8F06),
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(20),
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
                                                if (menu2.jumlah > 0) {
                                                  menu2.jumlah--;
                                                }
                                              });
                                            },
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        left: size.width * 0.03),
                                    child: Container(
                                      width: size.width * 0.05,
                                      child: FittedBox(
                                        fit: BoxFit.scaleDown,
                                        child: Text(
                                          menu2.jumlah.toString(),
                                          style: TextStyle(
                                              fontSize: 20,
                                              color: Colors.black),
                                        ),
                                      ),
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        menu2.jumlah++;
                                      });
                                    },
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                          left: size.width * 0.03),
                                      child: Container(
                                        width: 42,
                                        height: 42,
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                            width: 3,
                                            color: const Color(0xffEA8F06),
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(20),
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
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  child: Padding(
                    padding: EdgeInsets.only(top: size.height * 0.03),
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          GestureDetector(
                            onTap: () async {
                              await _bottomSheet3(
                                context,
                              );
                            },
                            child: Container(
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
                                                  image:
                                                      AssetImage(menu3.image),
                                                  fit: BoxFit.fill),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 0, left: 10),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                child: Text(
                                                  menu3.name,
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Colors.black,
                                                      decoration:
                                                          TextDecoration.none),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 5),
                                                child: Container(
                                                  child: Text(
                                                    NumberFormat.currency(
                                                            locale: 'id',
                                                            symbol: 'Rp ',
                                                            decimalDigits: 0)
                                                        .format(num.parse(menu3
                                                            .harga
                                                            .toString())),
                                                    style: TextStyle(
                                                        fontSize: 18,
                                                        color: Colors.grey,
                                                        decoration:
                                                            TextDecoration
                                                                .none),
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
                                    onTap: () {},
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                          left: size.width * 0.05),
                                      child: Container(
                                        width: 42,
                                        height: 42,
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                            width: 3,
                                            color: const Color(0xffEA8F06),
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(20),
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
                                                if (menu3.jumlah > 0) {
                                                  menu3.jumlah--;
                                                }
                                              });
                                            },
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        left: size.width * 0.03),
                                    child: Container(
                                      width: size.width * 0.05,
                                      child: FittedBox(
                                        fit: BoxFit.scaleDown,
                                        child: Text(
                                          menu3.jumlah.toString(),
                                          style: TextStyle(
                                              fontSize: 20,
                                              color: Colors.black),
                                        ),
                                      ),
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        menu3.jumlah++;
                                      });
                                    },
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                          left: size.width * 0.03),
                                      child: Container(
                                        width: 42,
                                        height: 42,
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                            width: 3,
                                            color: const Color(0xffEA8F06),
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(20),
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
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  child: Padding(
                    padding: EdgeInsets.only(top: size.height * 0.03),
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          GestureDetector(
                            onTap: () async {
                              await _bottomSheet4(
                                context,
                              );
                            },
                            child: Container(
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
                                                  image:
                                                      AssetImage(menu4.image),
                                                  fit: BoxFit.fill),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 0, left: 10),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                child: Text(
                                                  menu4.name,
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Colors.black,
                                                      decoration:
                                                          TextDecoration.none),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 5),
                                                child: Container(
                                                  child: Text(
                                                    NumberFormat.currency(
                                                            locale: 'id',
                                                            symbol: 'Rp ',
                                                            decimalDigits: 0)
                                                        .format(num.parse(menu4
                                                            .harga
                                                            .toString())),
                                                    style: TextStyle(
                                                        fontSize: 18,
                                                        color: Colors.grey,
                                                        decoration:
                                                            TextDecoration
                                                                .none),
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
                                    onTap: () {},
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                          left: size.width * 0.05),
                                      child: Container(
                                        width: 42,
                                        height: 42,
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                            width: 3,
                                            color: const Color(0xffEA8F06),
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(20),
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
                                                if (menu4.jumlah > 0) {
                                                  menu4.jumlah--;
                                                }
                                              });
                                            },
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        left: size.width * 0.03),
                                    child: Container(
                                      width: size.width * 0.05,
                                      child: FittedBox(
                                        fit: BoxFit.scaleDown,
                                        child: Text(
                                          menu4.jumlah.toString(),
                                          style: TextStyle(
                                              fontSize: 20,
                                              color: Colors.black),
                                        ),
                                      ),
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        menu4.jumlah++;
                                      });
                                    },
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                          left: size.width * 0.03),
                                      child: Container(
                                        width: 42,
                                        height: 42,
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                            width: 3,
                                            color: const Color(0xffEA8F06),
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(20),
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
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  child: Padding(
                    padding: EdgeInsets.only(top: size.height * 0.03),
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          GestureDetector(
                            onTap: () async {
                              await _bottomSheet5(
                                context,
                              );
                            },
                            child: Container(
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
                                                  image:
                                                      AssetImage(menu5.image),
                                                  fit: BoxFit.fill),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 0, left: 10),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                child: Text(
                                                  menu5.name,
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Colors.black,
                                                      decoration:
                                                          TextDecoration.none),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 5),
                                                child: Container(
                                                  child: Text(
                                                    NumberFormat.currency(
                                                            locale: 'id',
                                                            symbol: 'Rp ',
                                                            decimalDigits: 0)
                                                        .format(num.parse(menu5
                                                            .harga
                                                            .toString())),
                                                    style: TextStyle(
                                                        fontSize: 18,
                                                        color: Colors.grey,
                                                        decoration:
                                                            TextDecoration
                                                                .none),
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
                                    onTap: () {},
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                          left: size.width * 0.05),
                                      child: Container(
                                        width: 42,
                                        height: 42,
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                            width: 3,
                                            color: const Color(0xffEA8F06),
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(20),
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
                                                if (menu5.jumlah > 0) {
                                                  menu5.jumlah--;
                                                }
                                              });
                                            },
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        left: size.width * 0.03),
                                    child: Container(
                                      width: size.width * 0.05,
                                      child: FittedBox(
                                        fit: BoxFit.scaleDown,
                                        child: Text(
                                          menu5.jumlah.toString(),
                                          style: TextStyle(
                                              fontSize: 20,
                                              color: Colors.black),
                                        ),
                                      ),
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        menu5.jumlah++;
                                      });
                                    },
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                          left: size.width * 0.03),
                                      child: Container(
                                        width: 42,
                                        height: 42,
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                            width: 3,
                                            color: const Color(0xffEA8F06),
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(20),
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
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: size.height * 0.04, bottom: size.height * 0.04),
                  child: Container(
                    width: size.width * 0.9,
                    child: Divider(
                      color: Colors.black,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailPesananPanjang(
                            menu1, menu2, menu3, menu4, menu5),
                      ),
                    );
                  },
                  child: ButtonMenu(menu1, menu2, menu3, menu4, menu5),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

_bottomSheet1(context) {
  showModalBottomSheet(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(30),
        topRight: Radius.circular(30),
      ),
    ),
    context: context,
    builder: (BuildContext context) {
      return BottomSheet1(menu1);
    },
  );
}

// ignore: must_be_immutable
class BottomSheet1 extends StatefulWidget {
  Bakso bakso;
  BottomSheet1(
    this.bakso, {
    Key key,
  }) : super(key: key);

  @override
  State<BottomSheet1> createState() => _BottomSheet1State();
}

class _BottomSheet1State extends State<BottomSheet1> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      height: 500,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: SingleChildScrollView(
        child: Column(
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
                height: 200,
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
                              menu1.name,
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
                              NumberFormat.currency(
                                      locale: 'id',
                                      symbol: 'Rp ',
                                      decimalDigits: 0)
                                  .format(num.parse(menu1.harga.toString())),
                              style: GoogleFonts.poppins(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: size.height * 0.07),
                            child: Row(
                              children: [
                                GestureDetector(
                                  onTap: () {},
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                      left: size.width * 0.3,
                                    ),
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
                                              if (menu1.jumlah > 0) {
                                                menu1.jumlah--;
                                              }
                                            });
                                          },
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      EdgeInsets.only(left: size.width * 0.03),
                                  child: Container(
                                    width: size.width * 0.05,
                                    child: FittedBox(
                                      fit: BoxFit.scaleDown,
                                      child: Text(
                                        menu1.jumlah.toString(),
                                        style: TextStyle(
                                            fontSize: 20, color: Colors.black),
                                      ),
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      menu1.jumlah++;
                                    });
                                  },
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                        left: size.width * 0.03),
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
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

_bottomSheet2(context) {
  showModalBottomSheet(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30), topRight: Radius.circular(30)),
    ),
    context: context,
    builder: (BuildContext context) {
      return BottomSheet2(menu2);
    },
  );
}

// ignore: must_be_immutable
class BottomSheet2 extends StatefulWidget {
  Bakso bakso;
  BottomSheet2(
    this.bakso, {
    Key key,
  }) : super(key: key);

  @override
  State<BottomSheet2> createState() => _BottomSheet2State();
}

class _BottomSheet2State extends State<BottomSheet2> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
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
                  height: 200,
                  width: 392.4,
                  child: Row(children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              menu2.name,
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
                              NumberFormat.currency(
                                      locale: 'id',
                                      symbol: 'Rp ',
                                      decimalDigits: 0)
                                  .format(num.parse(menu2.harga.toString())),
                              style: GoogleFonts.poppins(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: size.height * 0.07),
                            child: Row(
                              children: [
                                GestureDetector(
                                  onTap: () {},
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                      left: size.width * 0.3,
                                    ),
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
                                              if (menu2.jumlah > 0) {
                                                menu2.jumlah--;
                                              }
                                            });
                                          },
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      EdgeInsets.only(left: size.width * 0.03),
                                  child: Container(
                                    width: size.width * 0.05,
                                    child: FittedBox(
                                      fit: BoxFit.scaleDown,
                                      child: Text(
                                        menu2.jumlah.toString(),
                                        style: TextStyle(
                                            fontSize: 20, color: Colors.black),
                                      ),
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      menu2.jumlah++;
                                    });
                                  },
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                        left: size.width * 0.03),
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
                  ]),
                ))
              ],
            ),
          ],
        ),
      ),
    );
  }
}

_bottomSheet3(context) {
  showModalBottomSheet(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30), topRight: Radius.circular(30)),
    ),
    context: context,
    builder: (BuildContext context) {
      return BottomSheet3(menu3);
    },
  );
}

// ignore: must_be_immutable
class BottomSheet3 extends StatefulWidget {
  Bakso bakso;
  BottomSheet3(
    this.bakso, {
    Key key,
  }) : super(key: key);

  @override
  State<BottomSheet3> createState() => _BottomSheet3State();
}

class _BottomSheet3State extends State<BottomSheet3> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
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
                    height: 200,
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
                                  menu3.name,
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
                                  NumberFormat.currency(
                                          locale: 'id',
                                          symbol: 'Rp ',
                                          decimalDigits: 0)
                                      .format(
                                          num.parse(menu3.harga.toString())),
                                  style: GoogleFonts.poppins(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsets.only(top: size.height * 0.07),
                                child: Row(
                                  children: [
                                    GestureDetector(
                                      onTap: () {},
                                      child: Padding(
                                        padding: EdgeInsets.only(
                                          left: size.width * 0.3,
                                        ),
                                        child: Container(
                                          width: 42,
                                          height: 42,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              width: 3,
                                              color: const Color(0xffEA8F06),
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(20),
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
                                                  if (menu3.jumlah > 0) {
                                                    menu3.jumlah--;
                                                  }
                                                });
                                              },
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                          left: size.width * 0.03),
                                      child: Container(
                                        width: size.width * 0.05,
                                        child: FittedBox(
                                          fit: BoxFit.scaleDown,
                                          child: Text(
                                            menu3.jumlah.toString(),
                                            style: TextStyle(
                                                fontSize: 20,
                                                color: Colors.black),
                                          ),
                                        ),
                                      ),
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          menu3.jumlah++;
                                        });
                                      },
                                      child: Padding(
                                        padding: EdgeInsets.only(
                                            left: size.width * 0.03),
                                        child: Container(
                                          width: 42,
                                          height: 42,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              width: 3,
                                              color: const Color(0xffEA8F06),
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(20),
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

_bottomSheet4(context) {
  showModalBottomSheet(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30), topRight: Radius.circular(30)),
    ),
    context: context,
    builder: (BuildContext context) {
      return BottomSheet4(menu4);
    },
  );
}

// ignore: must_be_immutable
class BottomSheet4 extends StatefulWidget {
  Bakso bakso;
  BottomSheet4(
    this.bakso, {
    Key key,
  }) : super(key: key);

  @override
  State<BottomSheet4> createState() => _BottomSheet4State();
}

class _BottomSheet4State extends State<BottomSheet4> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
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
                    height: 200,
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
                                  menu4.name,
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
                                  NumberFormat.currency(
                                          locale: 'id',
                                          symbol: 'Rp ',
                                          decimalDigits: 0)
                                      .format(
                                          num.parse(menu4.harga.toString())),
                                  style: GoogleFonts.poppins(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsets.only(top: size.height * 0.07),
                                child: Row(
                                  children: [
                                    GestureDetector(
                                      onTap: () {},
                                      child: Padding(
                                        padding: EdgeInsets.only(
                                          left: size.width * 0.3,
                                        ),
                                        child: Container(
                                          width: 42,
                                          height: 42,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              width: 3,
                                              color: const Color(0xffEA8F06),
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(20),
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
                                                  if (menu4.jumlah > 0) {
                                                    menu4.jumlah--;
                                                  }
                                                });
                                              },
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                          left: size.width * 0.03),
                                      child: Container(
                                        width: size.width * 0.05,
                                        child: FittedBox(
                                          fit: BoxFit.scaleDown,
                                          child: Text(
                                            menu4.jumlah.toString(),
                                            style: TextStyle(
                                                fontSize: 20,
                                                color: Colors.black),
                                          ),
                                        ),
                                      ),
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          menu4.jumlah++;
                                        });
                                      },
                                      child: Padding(
                                        padding: EdgeInsets.only(
                                            left: size.width * 0.03),
                                        child: Container(
                                          width: 42,
                                          height: 42,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              width: 3,
                                              color: const Color(0xffEA8F06),
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(20),
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

_bottomSheet5(context) {
  showModalBottomSheet(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30), topRight: Radius.circular(30)),
    ),
    context: context,
    builder: (BuildContext context) {
      return BottomSheet5(menu5);
    },
  );
}

// ignore: must_be_immutable
class BottomSheet5 extends StatefulWidget {
  Bakso bakso;
  BottomSheet5(
    this.bakso, {
    Key key,
  }) : super(key: key);

  @override
  State<BottomSheet5> createState() => _BottomSheet5State();
}

class _BottomSheet5State extends State<BottomSheet5> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
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
                    height: 200,
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
                                  menu5.name,
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
                                  NumberFormat.currency(
                                          locale: 'id',
                                          symbol: 'Rp ',
                                          decimalDigits: 0)
                                      .format(
                                          num.parse(menu5.harga.toString())),
                                  style: GoogleFonts.poppins(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsets.only(top: size.height * 0.07),
                                child: Row(
                                  children: [
                                    GestureDetector(
                                      onTap: () {},
                                      child: Padding(
                                        padding: EdgeInsets.only(
                                          left: size.width * 0.3,
                                        ),
                                        child: Container(
                                          width: 42,
                                          height: 42,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              width: 3,
                                              color: const Color(0xffEA8F06),
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(20),
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
                                                  if (menu5.jumlah > 0) {
                                                    menu5.jumlah--;
                                                  }
                                                });
                                              },
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                          left: size.width * 0.03),
                                      child: Container(
                                        width: size.width * 0.05,
                                        child: FittedBox(
                                          fit: BoxFit.scaleDown,
                                          child: Text(
                                            menu5.jumlah.toString(),
                                            style: TextStyle(
                                                fontSize: 20,
                                                color: Colors.black),
                                          ),
                                        ),
                                      ),
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          menu5.jumlah++;
                                        });
                                      },
                                      child: Padding(
                                        padding: EdgeInsets.only(
                                            left: size.width * 0.03),
                                        child: Container(
                                          width: 42,
                                          height: 42,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              width: 3,
                                              color: const Color(0xffEA8F06),
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(20),
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
