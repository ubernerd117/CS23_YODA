import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'buildings.dart';

class MapScreen extends StatefulWidget {
  @override
  _MapScreenState createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  static final _initialCameraPosition = CameraPosition(
    target: LatLng(buildings[0].latitude,
        buildings[0].longitude), //LatLng(37.773972, -122.431297),
    zoom: 16,
  );
  // static final marker = Marker(
  //   markerId: const MarkerId("Testing Marker"),
  //   infoWindow: const InfoWindow(
  //     title: 'Marker title',
  //   ),
  //   icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueAzure),
  //   position: const LatLng(37.773972, -122.431297),
  // );
  static final List<Marker> buildingMarkers = buildings.map((b) {
    return Marker(
      markerId: MarkerId(b.name),
      infoWindow: InfoWindow(title: b.name, snippet: b.imageUrl),
      position: LatLng(b.latitude, b.longitude),
      icon: BitmapDescriptor.defaultMarker,
    );
  }).toList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GoogleMap(
        myLocationButtonEnabled: false,
        zoomControlsEnabled: false,
        markers: {
          buildingMarkers[0],
          buildingMarkers[1],
          buildingMarkers[2],
          buildingMarkers[3],
          buildingMarkers[4],
          buildingMarkers[5],
        },
        initialCameraPosition: _initialCameraPosition,
      ),
    );
  }
}
