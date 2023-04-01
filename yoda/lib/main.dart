import 'package:flutter/material.dart';
import 'map.dart';
import 'destination.dart';
import 'dart:math';

void main() {
  runApp(const Yoda());
}

int currentNavIndex = 0;

class Yoda extends StatefulWidget {
  const Yoda({super.key});

  @override
  State<Yoda> createState() => _YodaState();
}

class _YodaState extends State<Yoda> {
  int currNavIndex = 0;
  String funFact = 'Tap for a Falcon Fun Fact!';

  final List<Widget> screens = [
    OriginScreen(),
    Column(
      children: [
        SizedBox(width: double.infinity, height: 700, child: MapScreen()),
        factButton(funFacts: funFacts),
      ],
    ),
    DestinationScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Google Maps',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      home: Scaffold(
        // appBar: AppBar(
        //   title: const Text('Map Screen'),
        // ),
        body: screens[currNavIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: currNavIndex,
          selectedIconTheme: const IconThemeData(size: 30),
          selectedItemColor: Colors.orange,
          selectedLabelStyle: const TextStyle(color: Colors.orange),
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.camera_alt,
              ),
              label: 'Location',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.map,
              ),
              label: 'Directions',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.location_city),
              label: 'Destination',
            ),
          ],
          onTap: (index) {
            setState(() {
              currNavIndex = index;
            });
          },
        ),
      ),
    );
  }
}

List<String> funFacts = [
  "BG track recruit, Nick Rose accidentally arrived Kentucky instead of Ohio, landed in Bowling Green, KY, and enrolled at WKU.",
  "Freddy and Frieda have a 'beheading ceremony' at their last home game where their identities are revealed.",
  "BGSU was initially a teacher training school named Bowling Green State Normal College.",
  "First known photograph of the campus, taken in 1910 before buildings were erected.",
  "Freddie is 16 years older than Frieda! Freddie was born in 1950, while Freda was born in 1966.",
  "In order to become Freddie or Frieda Falcon, one must complete an online application."
];

class factButton extends StatefulWidget {
  final List<String> funFacts;

  factButton({required this.funFacts});

  @override
  _factButtonState createState() => _factButtonState();
}

class _factButtonState extends State<factButton> {
  String _currentJoke = "Press the button for a joke!";

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      elevation: 0,
      child: SizedBox(
        width: double.infinity,
        height: 78,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.orange,
              textStyle: const TextStyle(fontSize: 18)),
          onPressed: () {
            setState(() {
              _currentJoke =
                  widget.funFacts[Random().nextInt(widget.funFacts.length)];
            });
          },
          child: Text(_currentJoke),
        ),
      ),
    );
  }
}
