import 'dart:async';
import 'dart:convert';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:location/location.dart';
import 'package:sair_cpa/model/place_location_model.dart';
class LocationNotifier extends AsyncNotifier<PlaceLocationModel?> {
  
  @override
  FutureOr<PlaceLocationModel?> build() {
    return null; 
  }

  Future<void> getCurrentLocation() async {
    state = const AsyncLoading();
    
    state = await AsyncValue.guard(() async {
      Location location = Location();

      bool serviceEnabled = await location.serviceEnabled();
      if (!serviceEnabled) {
        serviceEnabled = await location.requestService();
        if (!serviceEnabled) {
          throw Exception("Location service is disabled.");
        }
      }

      PermissionStatus permissionGranted = await location.hasPermission();
      if (permissionGranted == PermissionStatus.denied) {
        permissionGranted = await location.requestPermission();
        if (permissionGranted != PermissionStatus.granted) {
          throw Exception("Location permission denied.");
        }
      }

      LocationData locationData = await location.getLocation();
      final lat = locationData.latitude;
      final lng = locationData.longitude;

      if (lat == null || lng == null) {
        throw Exception("Could not fetch coordinates.");
      }

      final url = Uri.parse(
        'https://maps.googleapis.com/maps/api/geocode/json?latlng=$lat,$lng&key=AIzaSyDIyOVV-UAhtRWDyt6RrHe7TMN_EMwFKY0',
      );
      
      final response = await http.get(url);
      final resData = json.decode(response.body);
      
      if (resData['results'] == null || resData['results'].isEmpty) {
         throw Exception("Could not reverse geocode the location.");
      }
      
      final address = resData['results'][0]['formatted_address'];

      return PlaceLocationModel(latitude: lat, longitude: lng, address: address);
    });

  }
  Future<void> selectLocation(LatLng position) async {
    state = const AsyncLoading();

    state = await AsyncValue.guard(() async {
      final url = Uri.parse(
        'https://maps.googleapis.com/maps/api/geocode/json?latlng=${position.latitude},${position.longitude}&key=AIzaSyDIyOVV-UAhtRWDyt6RrHe7TMN_EMwFKY0',
      );
      
      final response = await http.get(url);
      final resData = json.decode(response.body);

      String address = "Address not found";
      
      if (resData['results'] != null && resData['results'].isNotEmpty) {
        address = resData['results'][0]['formatted_address'];
      }
      return PlaceLocationModel(
        latitude: position.latitude, 
        longitude: position.longitude, 
        address: address,
      );
    });
  }
}

final locationProvider = AsyncNotifierProvider.autoDispose<LocationNotifier, PlaceLocationModel?>(
  LocationNotifier.new,
);