import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/material.dart';
import 'package:show_bakso/API/sendApi.dart';
import 'package:show_bakso/dummy/multyorder.dart';
import 'package:show_bakso/model/menuModel.dart';
import 'package:show_bakso/screens/pembayaran_berhasil.dart';
import 'package:http/http.dart' as http;

// ignore: must_be_immutable
class ConfirmationButton extends StatefulWidget {
  DataOrder status, values;
  Bakso order1, order2, order3, order4, order5;
  int jumlah;
  List<MultiOrder> multiorder;
  ConfirmationButton(
      {Key key, @required this.size, this.total, this.multiorder})
      : super(key: key);

  final Size size;
  num total;

  @override
  State<ConfirmationButton> createState() => _ButtonState();
}

class _ButtonState extends State<ConfirmationButton> {
  int id;
  dataCheck() async {
    SharedPreferences data = await SharedPreferences.getInstance();
    this.id = data.getInt('driver_id');
  }

  void initState() {
    super.initState();
    dataCheck();
  }

  Future<DataOrder> dataorder() async {
    final response = await http.post(
      Uri.parse('https://liveshow.utter.academy/api/order/send'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(
        {
          'driver_id': id,
          'multiorder': jsonEncode(widget.multiorder),
        },
      ),
    );

    if (response.statusCode == 200) {
      // If the server did return a 201 CREATED response,
      // then parse the JSON.
      return DataOrder.fromJson(jsonDecode(response.body));
    } else {
      // If the server did not return a 201 CREATED response,
      // then throw an exception.
      print(response.statusCode);
      throw Exception('Failed');
    }
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
      child: GestureDetector(
        onTap: () async {
          print(
            jsonEncode(
              {
                'driver_id': id,
                'multiorder': jsonEncode(widget.multiorder),
              },
            ),
          );
          final DataOrder orderesponse = await dataorder();
          if (orderesponse.status == 200) {
            print(orderesponse.values[1].orderId);
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Pberhasil(
                  widget.total,
                ),
              ),
            );
          }
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
