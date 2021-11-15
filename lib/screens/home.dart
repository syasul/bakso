import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:show_bakso/API/driverStatus.dart';
import 'package:show_bakso/screens/Map.dart';
import 'package:flutter_offline/flutter_offline.dart';
import 'package:show_bakso/screens/Map2.dart';
import 'package:slide_to_confirm/slide_to_confirm.dart';
import 'package:http/http.dart' as http;

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
  int id;
  Home(
    this.id, {
    Key key,
  }) : super(key: key);
}

class _HomeState extends State<Home> {
  Future<DriverSetStatus> driverstatusOn(int id) async {
    final response = await http.put(
      Uri.parse('https://liveshow.utter.academy/api/set_status'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode({'driver_id': id, 'status': "Online"}),
    );

    if (response.statusCode == 200) {
      // If the server did return a 201 CREATED response,
      // then parse the JSON.
      return DriverSetStatus.fromJson(jsonDecode(response.body));
    } else {
      // If the server did not return a 201 CREATED response,
      // then throw an exception.
      throw Exception(response.body);
    }
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    setState(() {
      driverstatusOn(widget.id);
    });
    return Scaffold(
      backgroundColor: Colors.white,
      body: Builder(
        builder: (BuildContext context) {
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
                      height: 70.0,
                      child: AnimatedContainer(
                        duration: const Duration(milliseconds: 300),
                        color: connected ? null : Color(0xFFEE4400),
                        child: connected
                            ? null
                            : Container(
                                margin: EdgeInsets.only(right: 10, top: 20),
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
                padding: EdgeInsets.fromLTRB(size.width * 0.001,
                    size.height * 0.05, size.width * 0.01, 0),
                child: Column(
                  children: [
                    Container(
                      width: size.width * 0.9,
                      height: size.height * 0.1,
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(right: size.width * 0.03),
                            child: Container(
                              width: size.width * 0.18,
                              height: size.height * 0.1,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("assets/images/bakso.jpg"),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: size.height * 0.01),
                            child: Container(
                              child: RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: "SH",
                                      style: TextStyle(
                                          fontSize: size.width * 0.07,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w600,
                                          fontFamily: 'Poppins'),
                                    ),
                                    TextSpan(
                                      text: "O",
                                      style: TextStyle(
                                          fontSize: size.width * 0.07,
                                          color: const Color(0xffEA8F06),
                                          fontWeight: FontWeight.w600,
                                          fontFamily: 'Poppins'),
                                    ),
                                    TextSpan(
                                      text: "W BAKSO!",
                                      style: TextStyle(
                                        fontSize: size.width * 0.07,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w600,
                                        fontFamily: 'Poppins',
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: size.width * 0.07),
                            child: Container(
                              width: size.width * 0.1,
                              height: size.height * 0.1,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("assets/images/scan.png"),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: size.width * 0.9,
                      child: Divider(
                        color: Colors.black,
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.fromLTRB(0, size.height * 0.02, 0, 10),
                      child: Container(
                        width: size.width * 0.9,
                        height: size.height * 0.09,
                        child: Row(
                          children: [
                            Container(
                              width: size.width * 0.18,
                              height: size.height * 0.18,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          "assets/images/jarumbapakfix.jpg"))),
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
                                                fontSize: size.width * 0.065,
                                                color: Colors.black,
                                                fontFamily: 'Poppins'),
                                          ),
                                          TextSpan(
                                            text: "Ade!",
                                            style: TextStyle(
                                                fontSize: size.width * 0.065,
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
                                          fontSize: size.width * 0.025,
                                          fontFamily: 'Poppins'),
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
                      width: size.width * 0.9,
                      height: 67.37,
                      child: Row(
                        children: [
                          Container(
                            width: size.width * 0.45,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.2),
                                  spreadRadius: size.width * 0.03,
                                  blurRadius: size.width * 0.02,
                                  offset: Offset(0, 3),
                                )
                              ],
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Row(
                              children: [
                                Padding(
                                  padding:
                                      EdgeInsets.only(left: size.width * 0.02),
                                  child: Container(
                                    width: size.width * 0.15,
                                    height: 48.96,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                                "assets/images/Icon1.jpg"),
                                            fit: BoxFit.contain)),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                      top: size.height * 0.015,
                                      left: size.width * 0.018),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        child: Text(
                                          "total transaksi",
                                          style: TextStyle(
                                              fontSize: size.width * 0.032,
                                              fontFamily: 'Poppins'),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                            top: size.height * 0.01),
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
                          Padding(
                            padding: EdgeInsets.only(left: size.width * 0.09),
                            child: Container(
                              width: size.width * 0.36,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.2),
                                    spreadRadius: size.width * 0.03,
                                    blurRadius: size.width * 0.02,
                                    offset: Offset(0, 3),
                                  )
                                ],
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Row(
                                children: [
                                  Container(),
                                  Container(
                                    child: Row(
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(
                                              left: size.width * 0.02,
                                              right: size.width * 0.02),
                                          child: Container(
                                            child: Text(
                                              "mangkuk \nterjual",
                                              style: TextStyle(
                                                  fontSize: size.width * 0.033,
                                                  fontFamily: 'Poppins'),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          child: Stack(
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.only(
                                                  top: 25,
                                                ),
                                                child: Container(
                                                  width: size.width * 0.13,
                                                  height: 26.41,
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
                                                    left: size.width * 0.012),
                                                child: Container(
                                                  child: Text(
                                                    "18",
                                                    style: TextStyle(
                                                        fontSize:
                                                            size.width * 0.095),
                                                  ),
                                                ),
                                              )
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
                    Padding(
                      padding: EdgeInsets.only(top: 0),
                      child: Container(
                        width: size.width * 0.9,
                        height: size.height * 0.34,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Peta(),
                              ),
                            );
                          },
                          child: Stack(
                            children: [
                              Container(
                                width: size.width * 0.9,
                                height: size.height * 0.4,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image:
                                          AssetImage("assets/images/Map.jpg")),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                              ),
                              Center(
                                child: Padding(
                                  padding:
                                      EdgeInsets.only(top: size.height * 0.18),
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(7)),
                                    width: size.width * 0.6,
                                    height: size.height * 0.04,
                                    child: Center(
                                        child: Row(
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(
                                              left: size.width * 0.04,
                                              right: size.width * 0.026),
                                          child: Container(
                                            width: size.width * 0.06,
                                            height: size.height * 0.03,
                                            decoration: BoxDecoration(
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                      "assets/images/telegram.jpg"),
                                                  fit: BoxFit.contain),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          child: RichText(
                                            text: TextSpan(
                                              children: [
                                                TextSpan(
                                                  text: "lihat rekomendasi ",
                                                  style: TextStyle(
                                                      fontSize:
                                                          size.width * 0.038,
                                                      color: Colors.black,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      fontFamily: 'Poppins'),
                                                ),
                                                TextSpan(
                                                  text: "rute",
                                                  style: TextStyle(
                                                      fontSize:
                                                          size.width * 0.038,
                                                      color: const Color(
                                                          0xffEA8F06),
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      fontFamily: 'Poppins'),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    )),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: size.width * 0.9,
                      height: 77.54,
                      child: ConfirmationSlider(
                        height: 77.54,
                        foregroundColor: Color(0xffEA8F06),
                        foregroundShape: BorderRadius.circular(50),
                        backgroundColor: Color(0xFFfef6ea),
                        backgroundShape: BorderRadius.circular(50),
                        text: "             Geser untuk Berjualan",
                        textStyle: TextStyle(
                            fontSize: size.width * 0.055,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Poppins'),
                        onConfirmation: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Peta2(),
                            ),
                          );
                        },
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(
                          size.width * 0.05, size.height * 0.03, 0, 0),
                      child: Container(
                        width: size.width * 1,
                        height: size.height * 0.3,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              child: Text(
                                "Menu utama",
                                style: TextStyle(
                                    color: Colors.grey, fontFamily: 'Poppins'),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: size.height * 0.03),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(
                                        right: size.height * 0.025),
                                    child: Container(
                                      width: size.width * 0.27,
                                      height: 85.03,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey.withOpacity(0.5),
                                            spreadRadius: 5,
                                            blurRadius: 7,
                                            offset: Offset(0, 3),
                                          )
                                        ],
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      child: Center(
                                        child: Column(
                                          children: [
                                            Padding(
                                              padding: EdgeInsets.only(top: 15),
                                              child: Container(
                                                width: size.width * 0.08,
                                                height: size.height * 0.05,
                                                decoration: BoxDecoration(
                                                  image: DecorationImage(
                                                      image: AssetImage(
                                                          "assets/images/telpon.png"),
                                                      fit: BoxFit.none),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(top: 5),
                                              child: Container(
                                                child: Text(
                                                  "call center",
                                                  style: TextStyle(
                                                      color: Colors.grey,
                                                      fontSize: 12,
                                                      fontFamily: 'Poppins'),
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
                                        right: size.height * 0.025),
                                    child: Container(
                                      width: size.width * 0.27,
                                      height: 85.03,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey.withOpacity(0.5),
                                            spreadRadius: 5,
                                            blurRadius: 7,
                                            offset: Offset(0, 3),
                                          )
                                        ],
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      child: Center(
                                        child: Column(
                                          children: [
                                            Padding(
                                              padding: EdgeInsets.only(top: 15),
                                              child: Container(
                                                width: size.width * 0.09,
                                                height: size.height * 0.05,
                                                decoration: BoxDecoration(
                                                  image: DecorationImage(
                                                      image: AssetImage(
                                                          "assets/images/chat.png"),
                                                      fit: BoxFit.none),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(top: 5),
                                              child: Container(
                                                child: Text(
                                                  "chat robot",
                                                  style: TextStyle(
                                                      color: Colors.grey,
                                                      fontSize: 12,
                                                      fontFamily: 'Poppins'),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: size.width * 0.27,
                                    height: 85.03,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.5),
                                          spreadRadius: 5,
                                          blurRadius: 7,
                                          offset: Offset(0, 3),
                                        )
                                      ],
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    child: Center(
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(top: 15),
                                            child: Container(
                                              width: size.width * 0.09,
                                              height: size.height * 0.05,
                                              decoration: BoxDecoration(
                                                image: DecorationImage(
                                                    image: AssetImage(
                                                        "assets/images/notif.png"),
                                                    fit: BoxFit.none),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(top: 5),
                                            child: Container(
                                              child: Text(
                                                "pengumuman",
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    color: Colors.grey,
                                                    fontFamily: 'Poppins'),
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
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
