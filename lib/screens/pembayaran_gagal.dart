
import 'package:flutter/material.dart';

class Pgagal extends StatelessWidget {
  const Pgagal({Key key}) : super(key: key);

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
                        // Navigator.push(
                        //       context,
                        //       MaterialPageRoute(
                        //         builder: (context) => Peta2(),
                        //       ),
                        //     );
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
                        image: AssetImage("assets/images/Group 60.png"),
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
                        "PEMBAYARAN GAGAL",
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
                        "Maaf telah terjadi kesalahan dalam transaksi",
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
                        EdgeInsets.only(top: 90, bottom: size.height * 0.05),
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
                              'Kembali Berjualan',
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
