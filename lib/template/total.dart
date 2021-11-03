import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TotalCard extends StatelessWidget {
  final String total;

  const TotalCard({Key key, this.total}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.only(left: size.width * 0.03),
            child: Container(
              width: size.width * 0.6,
              child: Text(
                "Total",
                style: TextStyle(fontFamily: 'Poppins'),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: size.width * 0.02),
            child: Container(
              width: size.width * 0.24,
              child: Row(
                children: [
                  Text(
                    "Rp ",
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.normal,
                        fontSize: 14),
                  ),
                  Container(
                    width: size.width * 0.15,
                    child: FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Text(
                        NumberFormat.currency(
                                locale: 'id', symbol: "", decimalDigits: 0)
                            .format(num.parse(total.toString())),
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.normal,
                            ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
