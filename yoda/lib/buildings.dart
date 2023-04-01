//hayes

import 'package:flutter/material.dart';

class Building {
  String name;
  String imageUrl;
  double latitude;
  double longitude;

  Building({
    required this.name,
    required this.imageUrl,
    required this.latitude,
    required this.longitude,
  });
}

final List<Building> buildings = [
  // create a list of Building objects
  Building(
    name: "Hayes Hall",
    imageUrl: "assets/images/Hayes_Hall.jpg",
    latitude: 41.377925,
    longitude: -83.639979,
  ),
  Building(
    name: "BTSU",
    imageUrl: "assets/images/BTSU.jpg",
    latitude: 41.377925,
    longitude: -83.639979,
  ),
  Building(
    name: "Carillon Hall",
    imageUrl: "assets/images/Carillon_Hall.jpg",
    latitude: 41.375662,
    longitude: -83.637580,
  ),
  Building(
    name: "Central Hall",
    imageUrl: "assets/images/Central_Hall.jpg",
    latitude: 41.376795,
    longitude: -83.637400,
  ),
  Building(
    name: "Education Building",
    imageUrl: "assets/images/Education_Building.jpg",
    latitude: 41.376763,
    longitude: -83.638251,
  ),
  Building(
    name: "Founders Hall",
    imageUrl: "assets/images/Founders_Hall.jpg",
    latitude: 41.375353,
    longitude: -83.641806,
  ),
];
