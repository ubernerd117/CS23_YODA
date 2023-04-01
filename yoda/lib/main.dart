import 'package:flutter/material.dart';
import 'map.dart';
import 'destination.dart';

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

  final List<Widget> screens = [
    SizedBox(width: double.infinity, height: 500, child: MapScreen()),
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
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.map),
              label: 'Journey',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.house),
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
