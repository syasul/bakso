import 'package:show_bakso/screens/login.dart';
import 'package:show_bakso/widget/buttonregister.dart';
import 'package:show_bakso/widget/form_body.dart';
import 'package:show_bakso/widget/sosmed.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  RegisterPage({Key key}) : super(key: key);

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
                    "assets/images/Vector2.png",fit: BoxFit.cover,
                  ),
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
                            'Buat Akun,',
                            style:
                                TextStyle(fontFamily: 'Poppins', fontSize: size.width * 0.07),
                          ),
                        ),
                        Container(
                          alignment: Alignment.topLeft,
                          child: Text(
                            'Silahkan register untuk daftar',
                            style: TextStyle(fontSize: size.width * 0.055),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: size.height * 0.1),
                          child: Container(
                            child: FormLog(
                              formKey: _formKey,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: size.height * 0.05),
                          child: ButtonRegister(
                            formKey: _formKey,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: size.height * 0.04),
                          child: Container(
                            child: Text(
                              'Atau',
                              style: TextStyle(fontFamily: 'Poppins'),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: size.height * 0.03),
                          child: Container(
                            child: Sosmed(),
                          ),
                        ),
                        SizedBox(
                          height: size.height * 0.1,
                        ),
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                child: Text(
                                  'Anda sudah punya akun?',
                                  style: TextStyle(fontFamily: 'Poppins'),
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsets.only(left: size.width * 0.01),
                                child: Container(
                                  child: GestureDetector(
                                    child: Text(
                                      'Login',
                                      style: TextStyle(
                                          fontFamily: 'Poppins',
                                          color: Color(0xFFEA8F06)),
                                    ),
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) {
                                            return LoginPage();
                                          },
                                        ),
                                      );
                                    },
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
            )),
      ),
    );
  }
}
