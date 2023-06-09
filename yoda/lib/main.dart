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
    NavigationScreen(),
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
          selectedItemColor: Color.fromRGBO(253, 80, 0, 1),
          selectedLabelStyle:
              const TextStyle(color: Color.fromRGBO(253, 80, 0, 1)),
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
  String _currentFact = "Tap for a Falcon Fun Fact!";

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      elevation: 0,
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 0.2,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: Color.fromRGBO(253, 80, 0, 1),
              textStyle: const TextStyle(fontSize: 18)),
          onPressed: () {
            setState(() {
              _currentFact =
                  widget.funFacts[Random().nextInt(widget.funFacts.length)];
            });
          },
          child: Text(_currentFact),
        ),
      ),
    );
  }
}

class NavigationScreen extends StatefulWidget {
  const NavigationScreen({super.key});

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
      SizedBox(
          width: MediaQuery.of(context).size.width,
          height: 450,
          child: MapScreen()),
      factButton(funFacts: funFacts),
    ]));
  }
}
