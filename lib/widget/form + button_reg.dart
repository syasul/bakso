import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:show_bakso/API/regisapi.dart';
import 'package:show_bakso/screens/login.dart';
import 'package:show_bakso/widget/sosmed.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class FormReg extends StatelessWidget {
  Future<ApiRegister> registerapi() async {
    final response = await http.post(
      Uri.parse('https://liveshow.utter.academy/api/register'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{
        'email': this.emailcontroller.text,
        'password': this.passwordcontroller.text,
        'username': this.usernamecontroller.text,
        'id_number': this.idnumbercontroller.text,
        'phone_number': this.numbercontroller.text,
        'name': this.namecontroller.text
      }),
    );

    if (response.statusCode == 200) {
      // If the server did return a 201 CREATED response,
      // then parse the JSON.
      return ApiRegister.fromJson(jsonDecode(response.body));
    } else {
      // If the server did not return a 201 CREATED response,
      // then throw an exception.
      throw Exception('Failed');
    }
  }

  const FormReg({
    Key key,
    @required this.size,
    @required this.namecontroller,
    @required this.emailcontroller,
    @required this.usernamecontroller,
    @required this.passwordcontroller,
    @required this.numbercontroller,
    @required this.idnumbercontroller,
  }) : super(key: key);

  final Size size;
  final TextEditingController namecontroller;
  final TextEditingController emailcontroller;
  final TextEditingController usernamecontroller;
  final TextEditingController passwordcontroller;
  final TextEditingController numbercontroller;
  final TextEditingController idnumbercontroller;

  @override
  Widget build(BuildContext context) {
    return Column(
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
            child: Column(
              children: [
                TextFormField(
                  controller: namecontroller,
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(color: Color(0xFFEA8F06))),
                    focusColor: Color(0xFFEA8F06),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFFEA8F06))),
                    hintText: 'Nama',
                  ),
                  validator: MultiValidator(
                      [RequiredValidator(errorText: "Masukkan Nama")]),
                ),
                TextFormField(
                  controller: emailcontroller,
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(color: Color(0xFFEA8F06))),
                    focusColor: Color(0xFFEA8F06),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFFEA8F06))),
                    hintText: 'Email',
                  ),
                  validator: MultiValidator([
                    RequiredValidator(errorText: "Masukkan Email"),
                    EmailValidator(errorText: "Email tidak valid"),
                  ]),
                ),
                TextFormField(
                  controller: usernamecontroller,
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(color: Color(0xFFEA8F06))),
                    focusColor: Color(0xFFEA8F06),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFFEA8F06))),
                    hintText: 'Username',
                  ),
                  validator: MultiValidator([
                    RequiredValidator(errorText: "Masukkan  Username"),
                    EmailValidator(errorText: "Username tidak valid"),
                  ]),
                ),
                Container(
                  margin: EdgeInsets.only(
                    top: 13,
                  ),
                  child: TextFormField(
                    controller: passwordcontroller,
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide(color: Color(0xFFEA8F06))),
                      focusColor: Color(0xFFEA8F06),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFFEA8F06))),
                      hintText: 'Password',
                    ),
                    validator: MultiValidator([
                      RequiredValidator(errorText: "Masukkan Password"),
                      MinLengthValidator(6,
                          errorText: "Kata sandi harus setidaknya 6 karakter"),
                    ]),
                    obscureText: true,
                  ),
                ),
                TextFormField(
                  controller: numbercontroller,
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(color: Color(0xFFEA8F06))),
                    focusColor: Color(0xFFEA8F06),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFFEA8F06))),
                    hintText: 'No. Telp',
                  ),
                  validator: MultiValidator([
                    RequiredValidator(errorText: "Masukkan No.Telp"),
                    EmailValidator(errorText: "No. Telp tidak valid"),
                  ]),
                ),
                TextFormField(
                  controller: idnumbercontroller,
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(color: Color(0xFFEA8F06))),
                    focusColor: Color(0xFFEA8F06),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFFEA8F06))),
                    hintText: 'No. KTP',
                  ),
                  validator: MultiValidator([
                    RequiredValidator(errorText: "Masukkan No.Ktp"),
                    EmailValidator(errorText: "No. KTP tidal valid"),
                  ]),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: size.height * 0.05),
          child: Container(
            height: 55.0,
            child: Material(
              borderRadius: BorderRadius.circular(10.0),
              color: Color(0xFFEA8F06),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Color(0xFFEA8F06),
                    shape: RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(10.0))),
                onPressed: () async {
                  final String name = namecontroller.text;
                  final String email = emailcontroller.text;
                  final String username = usernamecontroller.text;
                  final String password = passwordcontroller.text;
                  final String number = numbercontroller.text;
                  final String idnumber = idnumbercontroller.text;

                  final ApiRegister user = await registerapi(
                      name, email, username, password, number, idnumber);
                },
                child: Center(
                  child: Text(
                    'Register',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Poppins',
                        fontSize: size.width * 0.04),
                  ),
                ),
              ),
            ),
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
                padding: EdgeInsets.only(left: size.width * 0.01),
                child: Container(
                  child: GestureDetector(
                    child: Text(
                      'Login',
                      style: TextStyle(
                          fontFamily: 'Poppins', color: Color(0xFFEA8F06)),
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
    );
  }
}
