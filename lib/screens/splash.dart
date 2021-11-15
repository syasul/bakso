import 'dart:async';
import 'package:flutter/material.dart';
import 'package:show_bakso/screens/home.dart';
import 'package:show_bakso/screens/login.dart';
import 'package:geolocator/geolocator.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Splash extends StatefulWidget {
  const Splash({Key key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  int id;
  dataCheck() async {
    SharedPreferences data = await SharedPreferences.getInstance();
    if (data.getInt("driver_id") != null) {
      this.id = data.getInt("driver_id");
    } else {
      this.id = 0;
    }
  }

  @override
  Widget build(BuildContext context) {
    Geolocator.getCurrentPosition();
    Timer(
        Duration(seconds: 1),
        () => Navigator.pushReplacement(context, MaterialPageRoute(
              builder: (context) {
                dataCheck();
                if (id == 0 || id == null) {
                  print(id);
                  return LoginPage();
                } else {
                  return Home(id);
                }
              },
            )));

    var assetsImage = new AssetImage(
        'assets/images/loga.jpeg'); //<- Creates an object that fetches an image.
    var image = new Image(
        image: assetsImage,
        height: 300); //<- Creates a widget that displays an image.

    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: size.height * 0.1),
                child: image,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
