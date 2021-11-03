import 'package:flutter/material.dart';

class QRScreen extends StatefulWidget {
  @override
  _QRScreenState createState() => _QRScreenState();
}

class _QRScreenState extends State<QRScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          "Tunjukkan QR Code Anda",
          style: TextStyle( fontSize: 15 ,color: Colors.black, fontFamily: 'Poppins'),
        ),
        backgroundColor: Colors.white,
        bottomOpacity: 0.0,
        elevation: 0.0,
      ),
      body: Container(
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: size.width * 0.2),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Text(
                      "Ade",
                      style: TextStyle(
                          fontSize: size.width * 0.05, fontFamily: 'Poppins'),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: size.width * 0.1),
                child: Container(
                  width: size.width * 0.8,
                  height: 290,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/QR Code.png"),
                      fit: BoxFit.cover
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
