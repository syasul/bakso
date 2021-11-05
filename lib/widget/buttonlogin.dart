import 'package:flutter/material.dart';

class ButtonLog extends StatelessWidget {
  const ButtonLog({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55.0,
      child: Material(
        borderRadius: BorderRadius.circular(10.0),
        color: Color(0xFFEA8F06),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              primary: Color(0xFFEA8F06),
              shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(10.0))),
          onPressed: () {
            // if (formKey.currentState.validate()) {
            //   Navigator.push(
            //     context,
            //     MaterialPageRoute(
            //       builder: (context) => Home(),
            //     ),
            //   );
            // }
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
    );
  }
}
