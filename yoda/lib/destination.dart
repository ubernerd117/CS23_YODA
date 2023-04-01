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
          itemCount: 12,
          itemBuilder: (context, index) => buildCard(),
        ),
      ),
    );
  }
}

Widget buildCard() => Container(
    width: 450,
    height: 620,
    color: Colors.brown,
    child: Column(
      children: [
        Image.asset(
          'assets/images/BTSU.jpg',
          fit: BoxFit.contain,
          width: 450,
          height: 600,
        ),
        const Text('BUILDING NAME',
            style: TextStyle(fontSize: 20, color: Colors.white))
      ],
    ));
