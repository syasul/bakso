import 'package:show_bakso/screens/register.dart';
import 'package:show_bakso/widget/buttonlogin.dart';
import 'package:show_bakso/widget/form_body.dart';
import 'package:show_bakso/widget/sosmed.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  LoginPage({Key key}) : super(key: key);

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
                padding: EdgeInsets.only(left: size.width * 0.05, right: size.width * 0.05, top: size.height * 0.16),
                child: Container(
                  child: Column(
                    children: [
                      Container(
                        alignment: Alignment.topLeft,
                        child: Text(
                          'Selamat Datang,',
                          style: TextStyle(fontFamily: 'Poppins', fontSize: size.width * 0.07),
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
                            formKey: _formKey,
                          ),
                        ),
                      ),                     
                      Padding(
                        padding: EdgeInsets.only(top: size.height * 0.05),
                        child: ButtonLogin(
                          formKey: _formKey,
                        ),
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
