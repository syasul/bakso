import 'dart:convert';

import 'package:show_bakso/widget/form%20+%20button_reg.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class RegisterPage extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  RegisterPage({Key key}) : super(key: key);

  final TextEditingController emailcontroller = TextEditingController();

  final TextEditingController passwordcontroller = TextEditingController();

  final TextEditingController usernamecontroller = TextEditingController();

  final TextEditingController idnumbercontroller = TextEditingController();

  final TextEditingController numbercontroller = TextEditingController();

  final TextEditingController namecontroller = TextEditingController();

  Future<PostLoc> postLoc() async {
    final response = await http.post(
      Uri.parse('https://liveshow.utter.academy/api/register'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{
        'email': emailcontroller.text,
        'password': passwordcontroller.text,
        'username': usernamecontroller.text,
        'id_number': idnumbercontroller.text,
        'phone_number': numbercontroller.text,
        'name': namecontroller.text
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
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
            width: size.width * 1,
            child: Stack(
              children: [
                Container(
                  width: size.width * 1,
                  margin: EdgeInsets.only(top: size.height * 0.055),
                  child: Image.asset(
                    "assets/images/Vector2.png",
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(
                      left: size.width * 0.05,
                      right: size.width * 0.05,
                      top: size.height * 0.16),
                  child: Container(
                    child: FormReg(
                        size: size,
                        namecontroller: namecontroller,
                        emailcontroller: emailcontroller,
                        usernamecontroller: usernamecontroller,
                        passwordcontroller: passwordcontroller,
                        numbercontroller: numbercontroller,
                        idnumbercontroller: idnumbercontroller),
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
