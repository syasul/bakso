import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';

class FormLog extends StatelessWidget {
  final formKey;
  FormLog({Key key, this.formKey,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          TextFormField(
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
              RequiredValidator(errorText: "Please input your Email"),
              EmailValidator(errorText: "Email is invalid"),
            ]),
          ),
          Container(
            margin: EdgeInsets.only(
              top: 13,
            ),
            child: TextFormField(
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
                RequiredValidator(
                  errorText: "Please input your Password"),
                MinLengthValidator(
                  6, errorText: "Password must be at least 6 characters long"),
              ]),
              obscureText: true,
            ),
          ),
        ],
      ),
    );
  }
}
