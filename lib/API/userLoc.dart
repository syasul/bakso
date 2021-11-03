import 'dart:async';

import 'package:location/location.dart';

class Driver {
  double latitude, longitude;

  Driver({this.latitude, this.longitude});
}

class UserLocation {
  double latitude, longitude;

  UserLocation({this.latitude, this.longitude});
}

class LocationService {
  Location location = Location();
  StreamController<UserLocation> _locationStreamController =
      StreamController<UserLocation>();
  Stream<UserLocation> get locationStream => _locationStreamController.stream;

  LocationService() {
    location.requestPermission().then((permissionStatus) {
      if (permissionStatus == PermissionStatus.granted) {
        location.onLocationChanged.listen((locationData) {
          if (locationData != null) {
            _locationStreamController.add(UserLocation(
                latitude: locationData.latitude,
                longitude: locationData.longitude));
          }
        });
      }
    });
  }
  void dispose() => _locationStreamController.close();
}
