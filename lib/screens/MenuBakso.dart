import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:show_bakso/dummy/itemmenu.dart';
import 'package:show_bakso/model/menuModel.dart';

import 'Map2.dart';

class MenuBakso extends StatefulWidget {
  @override
  _MenuBaksoState createState() => _MenuBaksoState();
}

class _MenuBaksoState extends State<MenuBakso> {
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
      harga: 16000);

  Bakso menu4 = Bakso(
      jumlah: 0,
      name: "Paket Bakso 4",
      image: "assets/images/baksolast.png",
      harga: 16000);

  Bakso menu5 = Bakso(
      jumlah: 0,
      name: "Paket Bakso 5",
      image: "assets/images/baksolast.png",
      harga: 16000);

  @override
  Widget build(BuildContext context) {
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
                MenuItem(menu1, menu2, menu3, menu4, menu5),
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
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //     // builder: (context) => DetailPesanan(menu1),
                    //   ),
                    // );
                  },
                  child: Padding(
                    padding: EdgeInsets.only(
                        bottom: size.height * 0.05, right: size.width * 0.05),
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
                            padding: EdgeInsets.only(
                                left: size.width * 0.05, top: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "5 menu",
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
                                "Rp 135.000",
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
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
