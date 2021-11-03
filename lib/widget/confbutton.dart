import 'package:flutter/material.dart';
import 'package:show_bakso/screens/pembayaran_berhasil.dart';

// ignore: must_be_immutable
class ConfirmationButton extends StatefulWidget {
   ConfirmationButton({
    Key key,
    @required this.size,  this.total,
  }) : super(key: key);

  final Size size;
  num total;

  @override
  State<ConfirmationButton> createState() => _ButtonState();
}

class _ButtonState extends State<ConfirmationButton> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Pberhasil(widget.total),
            ),
          );
        },
        child: Container(
          alignment: Alignment.center,
          height: 41,
          width: size.width * 0.9,
          margin: EdgeInsetsDirectional.only(top: 20),
          decoration: BoxDecoration(
              color: Color(0xFFEA8F06),
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                    blurRadius: 10,
                    spreadRadius: 7,
                    color: Colors.grey.withOpacity(0.3))
              ]),
          child: Text(
            'konfirmasi',
            style: TextStyle(fontSize: 20, fontFamily: 'Poppins'),
          ),
        ),
      ),
    );
  }
}
