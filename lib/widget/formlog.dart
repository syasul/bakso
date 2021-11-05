import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';

class FormLog extends StatelessWidget {
  const FormLog({
    Key key,
    @required this.emailcontroller,
    @required this.passwordcontroller,
  }) : super(key: key);

  final TextEditingController emailcontroller;
  final TextEditingController passwordcontroller;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
      ],
    );
  }
}
