import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:show_bakso/API/loginapi.dart';
import 'package:show_bakso/screens/home.dart';

class FormLog extends StatefulWidget {
  //
  FormLog({
    Key key,
    @required this.size,
    @required this.emailcontroller,
    @required this.passwordcontroller,
  }) : super(key: key);

  final Size size;

  final TextEditingController emailcontroller;
  final TextEditingController passwordcontroller;

  @override
  State<FormLog> createState() => _FormLogState();
}

class _FormLogState extends State<FormLog> {
  String condition = "";

  Future<ApiLogin> loginapi() async {
    final response = await http.post(
      Uri.parse('https://liveshow.utter.academy/api/login'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{
        'email': this.widget.emailcontroller.text,
        'password': this.widget.passwordcontroller.text,
      }),
    );

    if (response.statusCode == 200) {
      // If the server did return a 201 CREATED response,
      // then parse the JSON.
      return ApiLogin.fromJson(jsonDecode(response.body));
    } else {
      // If the server did not return a 201 CREATED response,
      // then throw an exception.
      throw Exception('Failed');
    }
  }

  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(top: widget.size.height * 0.1),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                TextFormField(
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
                Container(
                  margin: EdgeInsets.only(
                    top: 13,
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
                          errorText: "Kata sandi harus setidaknya 6 karakter"),
                    ]),
                    obscureText: true,
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: widget.size.height * 0.05),
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
                  final ApiLogin driver = await loginapi();
                  if (_formKey.currentState.validate()) {
                    // If the form is valid, display a snackbar. In the real world,
                    // you'd often call a server or save the information in a database.
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Processing Data')),
                    );
                    if (driver.values.length > 0 ||
                        driver.values.length != null) {
                      saveDataDriver() async {
                        print(driver.values.length);
                        final driverStorage =
                            await SharedPreferences.getInstance();
                        driverStorage.setInt(
                            "driver_id", driver.values[0].driverId);
                        // ignore: non_constant_identifier_names
                        int driver_id = driverStorage.getInt("driver_id");
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return Home(driver_id);
                            },
                          ),
                        );
                      }

                      saveDataDriver();
                    } else {
                      this.condition = "Error";
                    }
                  }
                },
                child: Center(
                  child: Text(
                    'Login',
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
      ],
    );
  }
}
