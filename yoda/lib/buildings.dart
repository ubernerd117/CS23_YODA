//hayes

import 'package:flutter/material.dart';

class Building {
  String name;
  String imageUrl;
  double latitude;
  double longitude;
  String description;

  Building({
    required this.name,
    required this.imageUrl,
    required this.latitude,
    required this.longitude,
    required this.description,
  });
}

Building originBuilding = Building(
  name: "Hayes Hall",
  imageUrl: "assets/images/Hayes_Hall.jpg",
  latitude: 41.377925,
  longitude: -83.639979,
  description: 'Dept. of Computer Science\nResidence Life\nITS',
);

Building destinationBuilding = Building(
  name: "Hayes Hall",
  imageUrl: "assets/images/Hayes_Hall.jpg",
  latitude: 41.377925,
  longitude: -83.639979,
  description: 'Dept. of Computer Science\n Residence Life\n ITS',
);

final List<Building> buildings = [
  // create a list of Building objects
  Building(
    name: "Hayes Hall",
    imageUrl: "assets/images/Hayes_Hall.jpg",
    latitude: 41.377925,
    longitude: -83.639979,
    description: 'Dept. of Computer Science\n Residence Life\n ITS',
  ),

  Building(
    name: "BTSU",
    imageUrl: "assets/images/BTSU.jpg",
    latitude: 41.377455,
    longitude: -83.640271,
    description: 'Dept. of Computer Science\n Residence Life\n ITS',
  ),
  Building(
    name: "Shatzel Hall",
    imageUrl: "assets/images/Shatzel_Hall.jpg",
    latitude: 41.376327,
    longitude: -83.642559,
    description: 'Dept. of Computer Science\n Residence Life\n ITS',
  ),
  Building(
    name: "Founders Hall",
    imageUrl: "assets/images/Founders_Hall.jpg",
    latitude: 41.375353,
    longitude: -83.641806,
    description: 'Dept. of Computer Science\n Residence Life\n ITS',
  ),
  Building(
    name: "McFall Center",
    imageUrl: "assets/images/McFall_Center.jpg",
    latitude: 41.375654,
    longitude: -83.640965,
    description: 'Dept. of Computer Science\n Residence Life\n ITS',
  ),
  Building(
    name: "Kuhlin Center",
    imageUrl: "assets/images/Kuhlin_Center.jpg",
    latitude: 41.375126,
    longitude: -83.640155,
    description: 'Dept. of Computer Science\n Residence Life\n ITS',
  ),
  Building(
    name: "Maurer Center",
    imageUrl: "assets/images/Maurer_Center.jpg",
    latitude: 41.375182,
    longitude: -83.639148,
    description: 'Dept. of Computer Science\n Residence Life\n ITS',
  ),
  Building(
    name: "Carillon Hall",
    imageUrl: "assets/images/Carillon_Hall.jpg",
    latitude: 41.375662,
    longitude: -83.637580,
    description: 'Dept. of Computer Science\n Residence Life\n ITS',
  ),
  Building(
    name: "East Hall",
    imageUrl: "assets/images/East_Hall.jpg",
    latitude: 41.376247,
    longitude: -83.636846,
    description: 'Dept. of Computer Science\n Residence Life\n ITS',
  ),
  Building(
    name: "Central Hall",
    imageUrl: "assets/images/Central_Hall.jpg",
    latitude: 41.376795,
    longitude: -83.637400,
    description: 'Dept. of Computer Science\n Residence Life\n ITS',
  ),
  Building(
    name: "Education Building",
    imageUrl: "assets/images/Education_Building.jpg",
    latitude: 41.376763,
    longitude: -83.638251,
    description: 'Dept. of Computer Science\n Residence Life\n ITS',
  ),
  Building(
    name: "Olscamp Hall",
    imageUrl: "assets/images/Olscamp_Hall.jpg",
    latitude: 41.377968,
    longitude: -83.637480,
    description: 'Dept. of Computer Science\n Residence Life\n ITS',
  ),
];
