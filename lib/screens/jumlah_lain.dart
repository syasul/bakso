import 'package:flutter/material.dart';
import 'package:show_bakso/widget/confbutton.dart';
import 'package:intl/intl.dart';

// ignore: must_be_immutable
class JumlahLain extends StatefulWidget {
  @override
  State<JumlahLain> createState() => _JumlahLainState();
  // ignore: non_constant_identifier_names
  num total;

  JumlahLain(
    this.total, {
    Key key,
  }) : super(key: key);
}

class _JumlahLainState extends State<JumlahLain> {
  String nominal = '0';

  @override
  // ignore: non_constant_identifier_names, override_on_non_overriding_member
  // int total_text = 0;
  // ignore: override_on_non_overriding_member
  Widget _numButton(String text) {
    var size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        setState(() {
          nominal += text;
        });
      },
      child: Container(
        width: size.width * 0.3,
        child: Center(
          child: Text(
            text,
            style: TextStyle(
                fontSize: 30, fontFamily: 'Poppins', color: Colors.black),
          ),
        ),
      ),
    );
  }

  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        bottomOpacity: 0,
        backgroundColor: Colors.white,
        title: Text(
          'Jumlah Lain',
          style: TextStyle(color: Colors.black, fontFamily: 'Poppins'),
        ),
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: Container(
        height: size.height * 1,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: size.height * 0.25,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                    ),
                    child: Text(
                      'ISI NOMINAL',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        color: Colors.grey,
                        fontSize: 17,
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                    ),
                    child: Text(
                      NumberFormat.currency(
                              locale: 'id', symbol: 'Rp.', decimalDigits: 0)
                          .format(int.parse(nominal)),
                      maxLines: 3,
                      style: TextStyle(color: Colors.grey, fontSize: 40),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: size.height * 0.5,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      _numButton('1'),
                      _numButton('2'),
                      _numButton('3')
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      _numButton('4'),
                      _numButton('5'),
                      _numButton('6')
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      _numButton('7'),
                      _numButton('8'),
                      _numButton('9'),
                    ],
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        _numButton('0'),
                        _numButton('000'),
                        Container(
                          width: size.width * 0.3,
                          child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  nominal =
                                      nominal.substring(0, nominal.length - 1);
                                });
                              },
                              child: Container(child: Icon(Icons.backspace))),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
                child: (() {
              if (int.parse(nominal) >= widget.total) {
                print(int.parse(nominal));
                return ConfirmationButton(size: size, total: widget.total);
              }
            }()))
          ],
        ),
      ),
    );
  }
}