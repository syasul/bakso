import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:show_bakso/API/PostLocation.dart';
import 'package:show_bakso/screens/home.dart';
import 'package:http/http.dart' as http;

class ButtonLogin extends StatelessWidget {
  final formKey;
  ButtonLogin({
    Key key,
    this.formKey,
  }) : super(key: key);

  Future<PostLoc> postLoc() async {
    Position position = await Geolocator.getCurrentPosition();
    final response = await http.post(
      Uri.parse('https://liveshow.utter.academy/locations/insert'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, double>{
        'latitude': position.latitude,
        'longitude': position.longitude,
      }),
    );

    if (response.statusCode == 200) {
      // If the server did return a 201 CREATED response,
      // then parse the JSON.
      return PostLoc.fromJson(jsonDecode(response.body));
    } else {
      // If the server did not return a 201 CREATED response,
      // then throw an exception.
      throw Exception('Failed');
    }
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.08,
      child: Material(
        borderRadius: BorderRadius.circular(10.0),
        color: Color(0xFFEA8F06),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              primary: Color(0xFFEA8F06),
              shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(10.0))),
          onPressed: () {
            if (formKey.currentState.validate()) {
              postLoc();
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Home(),
                ),
              );
            }
          },
          child: Center(
            child: Text(
              'Login',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Poppins',
                  fontSize: size.width * 0.04),
            ),
          ),
        ),
      ),
    );
  }
}
