import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'Map2.dart';

// ignore: must_be_immutable
class Pberhasil extends StatelessWidget {
  Pberhasil(this.total, {Key key}) : super(key: key);
  num total;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: <Color>[
                Color(0xffEA8F06),
                Color(0xBFEA8F06),
              ],
            ),
          ),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(size.width * 0.025, 30, 0, 0),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Peta2(),
                          ),
                        );
                      },
                      child: Padding(
                        padding: EdgeInsets.only(left: size.width * 0.03),
                        child: Container(
                          width: 42,
                          height: 42,
                          decoration: BoxDecoration(
                            border: Border.all(
                              width: 3,
                              color: Colors.black,
                            ),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Center(
                            child: Icon(
                              Icons.close,
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
              Padding(
                padding: EdgeInsets.only(top: size.height * 0.1),
                child: Container(
                  width: 270,
                  height: 260,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/Group 59.png"),
                        fit: BoxFit.contain),
                  ),
                ),
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Container(
                      child: Text(
                        "PEMBAYARAN BERHASIL",
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 23,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        top: 20,
                        left: size.width * 0.2,
                        right: size.width * 0.2),
                    child: Container(
                      width: size.width * 0.9,
                      child: Text(
                        NumberFormat.currency(
                                    locale: 'id',
                                    symbol: 'Rp ',
                                    decimalDigits: 0)
                                .format(num.parse(total.toString())) +
                            " telah terbayarkan oleh pembeli. Cek struk untuk rincian riwayat ",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.only(top: 70, bottom: size.height * 0.05),
                    child: Container(
                      height: size.height * 0.08,
                      width: size.width * 0.9,
                      child: Material(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Color(0xFFEA8F06),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Color(0xFFEA8F06),
                            shape: RoundedRectangleBorder(
                              side: BorderSide(color: Colors.black),
                              borderRadius: new BorderRadius.circular(10.0),
                            ),
                          ),
                          onPressed: () {},
                          child: Center(
                            child: Text(
                              'Cetak Struk',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Poppins'),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}