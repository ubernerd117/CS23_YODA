//import 'dart:html';

import 'package:flutter/material.dart';

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
  const OriginScreen({super.key});

  @override
  State<OriginScreen> createState() => _OriginScreenState();
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
      body: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          buildCard(),
          SizedBox(width: 12),
          buildCard(),
          SizedBox(width: 12),
          buildCard(),
          SizedBox(width: 12),
        ],
      ),
    );
  }
}

Widget buildCard() => Container(
      width: 400,
      height: 300,
      color: Colors.red,
    );
