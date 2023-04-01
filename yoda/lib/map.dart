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

  static final List<Marker> buildingMarkers = buildings.map((b) {
    return Marker(
      markerId: MarkerId(b.name),
      infoWindow: InfoWindow(title: b.name, snippet: b.imageUrl),
      position: LatLng(b.latitude, b.longitude),
      icon: BitmapDescriptor.defaultMarker,
    );
  }).toList();
  static Polyline path = Polyline(
    polylineId:
        PolylineId('${originBuilding.name}->${destinationBuilding.name}'),
    points: [
      LatLng(originBuilding.latitude, originBuilding.longitude),
      LatLng(destinationBuilding.latitude, destinationBuilding.longitude),
    ],
    width: 2,
    color: const Color.fromARGB(255, 100, 100, 255),
  );

  @override
  Widget build(BuildContext context) {
    print("Help me");
    path = Polyline(
      polylineId:
          PolylineId('${originBuilding.name}->${destinationBuilding.name}'),
      points: [
        LatLng(originBuilding.latitude, originBuilding.longitude),
        LatLng(destinationBuilding.latitude, destinationBuilding.longitude),
      ],
      width: 4,
      color: const Color.fromARGB(255, 100, 100, 255),
    );
    print(originBuilding.name);
    print(path.polylineId);
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
          buildingMarkers[6],
          buildingMarkers[7],
          buildingMarkers[8],
          buildingMarkers[9],
          buildingMarkers[10],
          buildingMarkers[11],
        },
        polylines: {path},
        initialCameraPosition: _initialCameraPosition,
      ),
    );
  }
}
