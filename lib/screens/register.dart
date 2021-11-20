import 'package:show_bakso/widget/form%20+%20button_reg.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  RegisterPage({Key key}) : super(key: key);

  final TextEditingController emailcontroller = TextEditingController();

  final TextEditingController passwordcontroller = TextEditingController();

  final TextEditingController usernamecontroller = TextEditingController();

  final TextEditingController idnumbercontroller = TextEditingController();

  final TextEditingController numbercontroller = TextEditingController();

  final TextEditingController namecontroller = TextEditingController();

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
