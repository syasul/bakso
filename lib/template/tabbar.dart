import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:md2_tab_indicator/md2_tab_indicator.dart';
import 'package:show_bakso/model/menuModel.dart';
import 'package:show_bakso/screens/Qr.dart';
import 'package:show_bakso/screens/jumlah_lain.dart';

// ignore: must_be_immutable
class Payment extends StatefulWidget {
  Bakso order1, order2, order3, order4, order5;
  int jumlah;

  Payment(this.order1, this.order2, this.order3, this.order4, this.order5,
      {Key key, this.jumlah})
      : super(key: key);

  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> with TickerProviderStateMixin {
  TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    num total = (widget.order1.harga * widget.order1.jumlah +
            widget.order2.harga * widget.order2.jumlah +
            widget.order3.harga * widget.order3.jumlah +
            widget.order4.harga * widget.order4.jumlah +
            widget.order5.harga * widget.order5.jumlah) *
        110 /
        100;
    return Container(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: DefaultTabController(
                length: 3,
                child: TabBar(
                  controller: _tabController,
                  labelStyle: TextStyle(fontWeight: FontWeight.w700),
                  indicatorSize: TabBarIndicatorSize.label,
                  labelColor: Color(0xFFEA8F06),
                  indicator: MD2Indicator(
                    indicatorSize: MD2IndicatorSize.full,
                    indicatorHeight: 3,
                    indicatorColor: Color(0xFFEA8F06),
                  ),
                  tabs: [
                    Tab(
                      child: Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                          image: AssetImage(
                            "assets/images/gopay.jpg",
                          ),
                        )),
                      ),
                    ),
                    Tab(
                      child: Text(
                        "Tunai",
                        style: TextStyle(
                            fontFamily: "poppins",
                            fontSize: 17,
                            color: Colors.black),
                      ),
                    ),
                    Tab(
                      child: Text(
                        "Lainnya",
                        style: TextStyle(
                            fontFamily: "poppins",
                            fontSize: 17,
                            color: Colors.black),
                      ),
                    ),
                  ],
                )),
          ),
          Container(
            height: 150.0,
            child: new TabBarView(
              controller: _tabController,
              children: <Widget>[
                Container(
                    padding: EdgeInsets.only(top: 20, left: 10, right: 10),
                    child: Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => QRScreen(),
                              ),
                            );
                          },
                          child: Container(
                            height: 41,
                            width: size.width * 0.9,
                            decoration: BoxDecoration(
                                color: Color(0xFFEA8F06),
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                      blurRadius: 10,
                                      spreadRadius: 7,
                                      color: Colors.grey.withOpacity(0.3))
                                ]),
                            child: Center(
                              child: Text(
                                "Tunjukkan kode QR",
                                style: TextStyle(
                                    fontFamily: "Poppins", color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                        Container(
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
                          child: Center(
                            child: Container(
                              width: size.width * 0.9,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Tarik ",
                                    style: TextStyle(
                                        fontFamily: 'Poppins',
                                        color: Colors.white),
                                  ),
                                  Container(
                                    width: size.width * 0.2,
                                    child: FittedBox(
                                      fit: BoxFit.scaleDown,
                                      child: Text(
                                        NumberFormat.currency(
                                                locale: 'id',
                                                symbol: 'Rp ',
                                                decimalDigits: 0)
                                            .format(num.parse((total).toString())),
                                        style: TextStyle(
                                            fontFamily: 'Poppins',
                                            color: Colors.white),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    )),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: Container(
                    child: Column(
                      children: [
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: size.width * 0.4,
                                decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 10, horizontal: 20),
                                  child: Center(
                                    child: Text(
                                      "Rp 50.000",
                                      style: TextStyle(
                                        fontSize: 18,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                width: size.width * 0.4,
                                decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 10, horizontal: 20),
                                  child: Center(
                                    child: Text(
                                      "Rp 100.000",
                                      style: TextStyle(
                                        fontSize: 18,
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 30),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: size.width * 0.4,
                                decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 10, horizontal: 25),
                                  child: Center(
                                    child: Text(
                                      "Uang pas",
                                      style: TextStyle(
                                        fontSize: 18,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => JumlahLain(total),
                                    ),
                                  );
                                },
                                child: Container(
                                  width: size.width * 0.4,
                                  decoration: BoxDecoration(
                                    color: Colors.grey,
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 10, horizontal: 20),
                                    child: Center(
                                      child: Text(
                                        "Jumlah lain",
                                        style: TextStyle(
                                          fontSize: 18,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Text("Kosong")
              ],
            ),
          ),
        ],
      ),
    );
  }
}
