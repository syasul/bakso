import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:show_bakso/API/driverStatus.dart';
import 'package:show_bakso/screens/splash.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with WidgetsBindingObserver {
  Future<DriverSetStatus> driverstatusOn(int id) async {
    final response = await http.put(
      Uri.parse('https://liveshow.utter.academy/api/set_status'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode({'driver_id': id, 'status': "Online"}),
    );

    if (response.statusCode == 200) {
      // If the server did return a 201 CREATED response,
      // then parse the JSON.
      return DriverSetStatus.fromJson(jsonDecode(response.body));
    } else {
      // If the server did not return a 201 CREATED response,
      // then throw an exception.
      throw Exception(response.body);
    }
  }

  Future<DriverSetStatus> driverstatusOff(int id) async {
    final response = await http.put(
      Uri.parse('https://liveshow.utter.academy/api/set_status'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode({'driver_id': id, 'status': "Offline"}),
    );

    if (response.statusCode == 200) {
      // If the server did return a 201 CREATED response,
      // then parse the JSON.
      return DriverSetStatus.fromJson(jsonDecode(response.body));
    } else {
      // If the server did not return a 201 CREATED response,
      // then throw an exception.
      throw Exception(response.body);
    }
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) async {
    SharedPreferences data = await SharedPreferences.getInstance();
    super.didChangeAppLifecycleState(state);
    int driver_id = data.getInt("driver_id");

    if (driver_id != null) {
      switch (state) {
        case AppLifecycleState.paused:
          driverstatusOff(driver_id);
          break;
        case AppLifecycleState.resumed:
          driverstatusOn(driver_id);
          break;
        case AppLifecycleState.inactive:
          driverstatusOff(driver_id);
          break;
        case AppLifecycleState.detached:
          driverstatusOff(driver_id);
          break;
      }
    } else {
      switch (state) {
        case AppLifecycleState.paused:
          print('Paused');
          break;
        case AppLifecycleState.resumed:
          print('Resume');
          break;
        case AppLifecycleState.inactive:
          print('Inactive');
          break;
        case AppLifecycleState.detached:
          print('Close App');
          break;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SHOW BAKSO!',
      debugShowCheckedModeBanner: false,
      home: Splash(),
    );
  }
}
