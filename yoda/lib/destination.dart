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
        backgroundColor: Colors.orange,
        title: const Text('Spot this building'),
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: const Text('Which building are you at?'),
        centerTitle: false,
      ),
      body: Container(
        height: 624,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: buildings.length, // update the itemCount property
          itemBuilder: (context, index) => buildCard(buildings[
              index]), // pass the Building object to the buildCard method
        ),
      ),
    );
  }

  Widget buildCard(Building building) => Container(
        width: 450,
        height: 620,
        color: Colors.brown,
        child: Column(
          children: [
            Image.asset(
              building
                  .imageUrl, // use the imageUrl property of the Building object
              fit: BoxFit.contain,
              width: 450,
              height: 600,
            ),
            Text(
              building.name, // use the name property of the Building object
              style: const TextStyle(fontSize: 20, color: Colors.white),
            ),
          ],
        ),
      );
}
