import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:geolocator/geolocator.dart';
import 'package:show_bakso/API/PostLocation.dart';
import 'package:show_bakso/API/regisapi.dart';
import 'package:show_bakso/screens/home.dart';
import 'package:show_bakso/screens/login.dart';
import 'package:show_bakso/widget/sosmed.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class FormReg extends StatefulWidget {
  FormReg({
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
  State<FormReg> createState() => _FormRegState();
}

class _FormRegState extends State<FormReg> {
  String condition = "";

  Future<ApiRegister> registerapi() async {
    final response = await http.post(
      Uri.parse('https://liveshow.utter.academy/api/register'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{
        'email': this.widget.emailcontroller.text,
        'password': this.widget.passwordcontroller.text,
        'username': this.widget.usernamecontroller.text,
        'id_number': this.widget.idnumbercontroller.text,
        'phone_number': this.widget.numbercontroller.text,
        'name': this.widget.namecontroller.text
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

  Future<PostLoc> postLoc(int id) async {
    Position position = await Geolocator.getCurrentPosition();
    final response = await http.post(
      Uri.parse('https://liveshow.utter.academy/api/insert'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, num>{
        'driver_id': id,
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

  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          Container(
            alignment: Alignment.topLeft,
            child: Text(
              'Buat Akun,',
              style: TextStyle(
                  fontFamily: 'Poppins', fontSize: widget.size.width * 0.07),
            ),
          ),
          Container(
            alignment: Alignment.topLeft,
            child: Text(
              'Silahkan register untuk daftar',
              style: TextStyle(fontSize: widget.size.width * 0.055),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: widget.size.height * 0.1),
            child: Container(
              child: Column(
                children: [
                  TextFormField(
                    controller: widget.namecontroller,
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
                  Container(
                    margin: EdgeInsets.only(
                      top: 5,
                    ),
                    child: TextFormField(
                      controller: widget.emailcontroller,
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
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      top: 5,
                    ),
                    child: TextFormField(
                      controller: widget.usernamecontroller,
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
                      ]),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      top: 5,
                    ),
                    child: TextFormField(
                      controller: widget.passwordcontroller,
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
                            errorText:
                                "Kata sandi harus setidaknya 6 karakter"),
                      ]),
                      obscureText: true,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      top: 5,
                    ),
                    child: TextFormField(
                      controller: widget.numbercontroller,
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
                      ]),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      top: 5,
                    ),
                    child: TextFormField(
                      controller: widget.idnumbercontroller,
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
                      ]),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: widget.size.height * 0.025),
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
                    final ApiRegister driver = await registerapi();
                    saveDataDriver() async {
                      final driverStorage =
                          await SharedPreferences.getInstance();
                      driverStorage.setInt("driver_id", driver.values.insertId);
                      // ignore: non_constant_identifier_names
                      int driver_id = driverStorage.getInt("driver_id");
                      if (_formKey.currentState.validate()) {
                        // If the form is valid, display a snackbar. In the real world,
                        // you'd often call a server or save the information in a database.
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('Processing Data')),
                        );
                        final PostLoc location =
                            await postLoc(driver.values.insertId);
                        if (location.status == 200) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return Home(driver_id);
                              },
                            ),
                          );
                        } else {
                          this.condition = "Please Turn On Your GPS";
                          print(condition);
                        }
                      }
                    }

                    if (driver.status == 200) {
                      // ignore: unused_element
                      saveDataDriver();
                    } else {
                      this.condition = "Error";
                    }
                  },
                  child: Center(
                    child: Text(
                      'Register',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Poppins',
                          fontSize: widget.size.width * 0.04),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: widget.size.height * 0.04),
            child: Container(
              child: Text(
                'Atau',
                style: TextStyle(fontFamily: 'Poppins'),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: widget.size.height * 0.03),
            child: Container(
              child: Sosmed(),
            ),
          ),
          SizedBox(
            height: widget.size.height * 0.1,
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
                  padding: EdgeInsets.only(left: widget.size.width * 0.01),
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
      ),
    );
  }
}
