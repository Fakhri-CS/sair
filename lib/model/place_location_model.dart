class PlaceLocationModel {
  const PlaceLocationModel({
    required this.latitude,
    required this.longitude,
    required this.address,
  });
  final double latitude;
  final double longitude;
  final String address;
  String? get locationImage {
    return "https://maps.googleapis.com/maps/api/staticmap?center=$latitude,$longitude=&zoom=13&size=600x300&maptype=roadmap&markers=color:blue%7Clabel:S%7C$latitude,$longitude&key=AIzaSyDIyOVV-UAhtRWDyt6RrHe7TMN_EMwFKY0";
  }
}
