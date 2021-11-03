import 'dart:typed_data';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:show_bakso/API/markerbuilder.dart';
import 'package:show_bakso/API/userLoc.dart';
// import 'package:geolocator/geolocator.dart';
// import 'package:here_sdk/core.dart';
// import 'package:here_sdk/mapview.dart';
import 'package:show_bakso/screens/Map.dart';
import 'package:show_bakso/screens/menupanjang.dart';
import 'package:slide_to_confirm/slide_to_confirm.dart';
// import 'package:show_bakso/template/dialog.dart';
import 'dart:ui' as ui;

class Peta2 extends StatefulWidget {
  @override
  _Peta2State createState() => _Peta2State();
}

class _Peta2State extends State<Peta2> {
  LocationService locationService = LocationService();
  var mapMarker;

  Set<Marker> _markers = {};
  void setCustomMarker() async {
    mapMarker = await getBytesFromAsset('assets/images/pinBakso.png', 50);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setCustomMarker();
  }

  void _onMapCreated(GoogleMapController controller) async {
    Position position = await Geolocator.getCurrentPosition();

    double latitude = position.latitude;
    double longitude = position.longitude;

    setState(() {
      _markers.add(Marker(
        markerId: MarkerId('id-1'),
        icon: BitmapDescriptor.fromBytes(mapMarker),
        position: LatLng(latitude, longitude),
      ));
    });
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            StreamBuilder<UserLocation>(
                stream: locationService.locationStream,
                builder: (_, snapshot) => (snapshot.hasData)
                    ? GoogleMap(
                        onMapCreated: _onMapCreated,
                        markers: _markers,
                        mapType: MapType.terrain,
                        zoomControlsEnabled: false,
                        initialCameraPosition: CameraPosition(
                          target: LatLng(
                              snapshot.data.latitude, snapshot.data.longitude),
                          zoom: 15,
                        ),
                      )
                    : SizedBox()),
            //  HereMap (
            //     onMapCreated: onMapCreated,
            //   ),
            Padding(
              padding: EdgeInsets.only(
                  left: size.width * 0.18, top: size.height * 0.1),
              child: Container(
                width: size.width * 0.65,
                height: 66,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 3,
                      blurRadius: 7,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: size.width * 0.03),
                      child: Stack(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                              top: 20,
                            ),
                            child: Container(
                              width: size.width * 0.14,
                              height: 25.87,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image:
                                        AssetImage("assets/images/mangkuk.jpg"),
                                    fit: BoxFit.fill),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: size.width * 0.021),
                            child: Container(
                              child: Text(
                                "18",
                                style: TextStyle(fontSize: size.width * 0.09),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.only(top: 13, left: size.width * 0.025),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Text(
                              "total transaksi",
                              style: TextStyle(
                                  fontSize: size.width * 0.03,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 5),
                            child: Container(
                              child: Text(
                                "Rp 200.000",
                                style: TextStyle(
                                    fontSize: size.width * 0.042,
                                    fontFamily: 'Poppins',
                                    color: Colors.grey),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Menupanjang(),
                          ),
                        );
                      },
                      child: Padding(
                        padding: EdgeInsets.only(left: size.width * 0.07),
                        child: Container(
                          width: 42.68,
                          height: 42.68,
                          decoration: BoxDecoration(
                              border: Border.all(
                                width: 3,
                                color: const Color(0xffEA8F06),
                              ),
                              borderRadius: BorderRadius.circular(15)),
                          child: Center(
                            child: Icon(
                              CupertinoIcons.add,
                              color: const Color(0xffEA8F06),
                              size: 30,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: size.width * 0.05, top: size.height * 0.7),
              child: Container(
                width: size.width * 0.45,
                height: 48,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 3,
                      blurRadius: 7,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: GestureDetector(
                  onTap: () {
                    _showDialog(context);
                  },
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: size.width * 0.02),
                        child: Icon(
                          Icons.arrow_drop_up_rounded,
                          size: size.width * 0.13,
                          color: const Color(0xffEA8F06),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: size.width * 0.03),
                        child: Text(
                          "bantuan",
                          style: TextStyle(
                              fontSize: size.width * 0.05,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: size.width * 0.8, top: size.height * 0.7),
              child: Container(
                width: 55,
                height: 55,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(50),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 3,
                      blurRadius: 7,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: Center(
                  child: Icon(
                    CupertinoIcons.location,
                    size: 40,
                    color: const Color(0xffEA8F06),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: size.width * 0.05, top: size.height * 0.8),
              child: Container(
                width: size.width * 0.9,
                height: 77.54,
                child: ConfirmationSlider(
                  height: 77.54,
                  foregroundColor: Color(0xffEA5806),
                  foregroundShape: BorderRadius.circular(50),
                  backgroundColor: Colors.white,
                  backgroundShape: BorderRadius.circular(50),
                  text: "                  Geser untuk Stop Berjualan",
                  textStyle: TextStyle(
                      fontSize: 15,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold),
                  onConfirmation: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Peta(),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

// Widget _createWidget() {
//     return Container(
//       width: 40,
//       height: 40,
//       padding: EdgeInsets.all(10),
//       decoration: BoxDecoration(
//         image: DecorationImage(
//           image: AssetImage("assets/images/pinBakso.png"),
//         ),
//       ),
//     );
//   }

//   void onMapCreated(HereMapController hereMapController) async {
//     hereMapController.mapScene.loadSceneForMapScheme(
//       MapScheme.normalDay,
//       (error) {
//         if (error != null) {
//           print("Error" + error.toString());
//           return;
//         }
//       },
//     );

//     hereMapController.mapScene.addMapPolygon(_createMapCircle());
//     hereMapController.mapScene.addMapPolygon(_buatMapCircle());
//     hereMapController.mapScene.addMapPolygon(_createMapCircle2());
//     hereMapController.mapScene.addMapPolygon(_buatMapCircle2());
//     hereMapController.mapScene.addMapPolygon(_lastMapCircle());

//     double distance = 2000;
//     Position position = await Geolocator.getCurrentPosition();
//     hereMapController.camera.lookAtPointWithDistance(
//         GeoCoordinates(position.latitude, position.longitude), distance);
//     hereMapController.pinWidget(
//         _createWidget(), GeoCoordinates(position.latitude, position.longitude));
//   }

//   MapPolygon _createMapCircle() {
//     double radiusInMeters = 500;
//     GeoCircle geoCircle =
//         GeoCircle(GeoCoordinates(-7.9829137, 112.6259241), radiusInMeters);

//     GeoPolygon geoPolygon = GeoPolygon.withGeoCircle(geoCircle);
//     Color fillColor = Color(0x3341ea06);
//     MapPolygon mapPolygon = MapPolygon(geoPolygon, fillColor);

//     return mapPolygon;
//   }

//   MapPolygon _buatMapCircle() {
//     double radiusInMeters = 500;
//     GeoCircle geoCircle =
//         GeoCircle(GeoCoordinates(-7.97651, 112.6362599), radiusInMeters);

//     GeoPolygon geoPolygon = GeoPolygon.withGeoCircle(geoCircle);
//     Color fillColor = const Color(0x33ea8f06);
//     MapPolygon mapPolygon = MapPolygon(geoPolygon, fillColor);

//     return mapPolygon;
//   }

//   MapPolygon _createMapCircle2() {
//     double radiusInMeters = 500;
//     GeoCircle geoCircle =
//         GeoCircle(GeoCoordinates(-7.9870115, 112.6367586), radiusInMeters);

//     GeoPolygon geoPolygon = GeoPolygon.withGeoCircle(geoCircle);
//     Color fillColor = const Color(0x33ea0606);
//     MapPolygon mapPolygon = MapPolygon(geoPolygon, fillColor);

//     return mapPolygon;
//   }

//   MapPolygon _buatMapCircle2() {
//     double radiusInMeters = 500;
//     GeoCircle geoCircle =
//         GeoCircle(GeoCoordinates(-7.9933047, 112.625967), radiusInMeters);

//     GeoPolygon geoPolygon = GeoPolygon.withGeoCircle(geoCircle);
//     Color fillColor = const Color(0x33ea8f06);
//     MapPolygon mapPolygon = MapPolygon(geoPolygon, fillColor);

//     return mapPolygon;
//   }

//   MapPolygon _lastMapCircle() {
//     double radiusInMeters = 500;
//     GeoCircle geoCircle =
//         GeoCircle(GeoCoordinates(-7.9986169, 112.6362238), radiusInMeters);

//     GeoPolygon geoPolygon = GeoPolygon.withGeoCircle(geoCircle);
//     Color fillColor = const Color(0x3341ea06);
//     MapPolygon mapPolygon = MapPolygon(geoPolygon, fillColor);

//     return mapPolygon;
//   }
}

void _showDialog(BuildContext context) {
  showDialog(
      context: context,
      builder: (BuildContext context) {
        var size = MediaQuery.of(context).size;
        return Dialog(
          insetPadding: EdgeInsets.only(
              right: size.width * 0.12, bottom: size.height * 0.05),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          child: Container(
            width: 196,
            height: 255,
            child: Column(
              children: [
                TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 196),
                    child: Container(
                      width: 24,
                      height: 24,
                      child: Icon(
                        Icons.cancel_outlined,
                        size: 40,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15, bottom: 10),
                  child: Container(
                    child: Row(
                      children: [
                        Container(
                          width: 45,
                          height: 45,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Color(0xffEA0606),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Container(
                            child: Text(
                              "Ramai",
                              style: TextStyle(fontFamily: 'Poppins'),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15, bottom: 10),
                  child: Container(
                    child: Row(
                      children: [
                        Container(
                          width: 45,
                          height: 45,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Color(0xffFFE600),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Container(
                            child: Text(
                              "Moderat",
                              style: TextStyle(fontFamily: 'Poppins'),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15, bottom: 10),
                  child: Container(
                    child: Row(
                      children: [
                        Container(
                          width: 45,
                          height: 45,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Color(0xff02C716),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Container(
                            child: Text(
                              "Tidak Terlalu Ramai",
                              style: TextStyle(fontFamily: 'Poppins'),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      });
}
