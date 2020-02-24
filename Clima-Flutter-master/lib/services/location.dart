import 'package:geolocator/geolocator.dart';

class Location {
  var longitude;
  var latitude;

  Future getCurrentLocation() async {
    try {
      Position position = await Geolocator()
          .getCurrentPosition(desiredAccuracy: LocationAccuracy.medium);

      longitude = position.longitude;
      latitude = position.latitude;
    } catch (e) {}
  }
}
