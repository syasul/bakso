import 'dart:convert';
import 'package:show_bakso/screens/register.dart';
import 'package:show_bakso/widget/buttonlogin.dart';
import 'package:show_bakso/widget/formlog.dart';
import 'package:show_bakso/widget/sosmed.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class LoginPage extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  LoginPage({Key key}) : super(key: key);
  final TextEditingController emailcontroller = TextEditingController();

  final TextEditingController passwordcontroller = TextEditingController();
  Future<PostLoc> postLoc() async {
    final response = await http.post(
      Uri.parse('https://liveshow.utter.academy/api/register'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{
        'email': emailcontroller.text,
        'password': passwordcontroller.text,
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
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                      width: size.width * 0.55,
                      child: Image.asset(
                        "assets/images/Vector1.png",
                      )),
                ],
              ),
              Container(
                padding: EdgeInsets.only(
                    left: size.width * 0.05,
                    right: size.width * 0.05,
                    top: size.height * 0.16),
                child: Container(
                  child: Column(
                    children: [
                      Container(
                        alignment: Alignment.topLeft,
                        child: Text(
                          'Selamat Datang,',
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: size.width * 0.07),
                        ),
                      ),
                      Container(
                        alignment: Alignment.topLeft,
                        child: Text(
                          'Silahkan login untuk lanjut',
                          style: TextStyle(fontSize: size.width * 0.055),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: size.height * 0.1),
                        child: Container(
                          child: FormLog(
                              emailcontroller: emailcontroller,
                              passwordcontroller: passwordcontroller),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: size.height * 0.05),
                        child: ButtonLog(size: size),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: size.height * 0.03),
                        child: Container(
                          child: Text(
                            'Atau',
                            style: TextStyle(fontFamily: 'Poppins'),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(child: Sosmed()),
                      SizedBox(
                        height: size.height * 0.1,
                      ),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              child: Text(
                                'Anda tidak punya akun?',
                                style: TextStyle(fontFamily: 'Poppins'),
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Container(
                              child: GestureDetector(
                                child: Text(
                                  'Daftar',
                                  style: TextStyle(
                                      fontFamily: 'Poppins',
                                      color: Color(0xFFEA8F06)),
                                ),
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) {
                                        return RegisterPage();
                                      },
                                    ),
                                  );
                                },
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
      ),
    );
  }
}
