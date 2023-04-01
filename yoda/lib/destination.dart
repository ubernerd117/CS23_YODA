//import 'dart:html';

import 'package:flutter/material.dart';
import 'buildings.dart';

class DestinationScreen extends StatefulWidget {
  const DestinationScreen({super.key});

  @override
  State<DestinationScreen> createState() => _DestinationScreenState();
}

class _DestinationScreenState extends State<DestinationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        backgroundColor: Color.fromRGBO(253, 80, 0, 1),
        title: const Text('You\'ve Reached:'),
      ),
      body: Column(
        children: [
          Container(
            width: 450,
            height: 600,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(destinationBuilding.imageUrl),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Center(
            child: Text(
              destinationBuilding.name,
              // use the name property of the Building object
              style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
          ),
          Center(
            child: Text(
              destinationBuilding.description,
              // use the name property of the Building object
              style: const TextStyle(fontSize: 20, color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }
}

class OriginScreen extends StatefulWidget {
  const OriginScreen({Key? key}) : super(key: key);

  @override
  _OriginScreenState createState() => _OriginScreenState();
}

class _OriginScreenState extends State<OriginScreen> {
  Building? value;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(253, 80, 0, 1),
        title: const Text('Swipe and double tap to set origin'),
        centerTitle: false,
      ),
      body: Column(
        children: [
          Container(
            height: 624,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: buildings.length, // update the itemCount property
              itemBuilder: (context, index) => buildCard(buildings[
                  index]), // pass the Building object to the buildCard method
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('Choose a destination', style: TextStyle(fontSize: 20)),
          ),
          Center(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border:
                    Border.all(color: Color.fromRGBO(79, 44, 29, 1), width: 2),
              ),
              child: DropdownButton<Building>(
                value: value,
                items: buildings.map(buildMenuItem).toList(),
                onChanged: (value) =>
                    //   setState(() => destinationBuilding = value as Building),
                    setState(() {
                  this.value = value;
                  destinationBuilding = value as Building;
                }),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildCard(Building building) => Container(
        width: 450,
        height: 620,
        color: Color.fromRGBO(79, 44, 29, 1),
        child: Column(
          children: [
            Material(
              child: Ink.image(
                image: AssetImage(building
                    .imageUrl), // use the imageUrl property of the Building object
                fit: BoxFit.contain,
                width: 450,
                height: 600,
                child: InkWell(
                  onDoubleTap: () {
                    originBuilding = building;
                    print("new origin building: ${building.name}");
                  },
                ),
              ),
            ),
            Text(
              building.name, // use the name property of the Building object
              style: const TextStyle(fontSize: 20, color: Colors.white),
            ),
          ],
        ),
      );

  DropdownMenuItem<Building> buildMenuItem(Building item) => DropdownMenuItem(
        value: item,
        child: Text(item.name),
      );
}
