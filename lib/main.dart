import 'package:ath/screens/match.dart';
import 'package:ath/screens/messages.dart';
import 'package:ath/screens/posts.dart';
import 'package:ath/screens/profile.dart';
import 'package:ath/shared/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:line_icons/line_icon.dart';
import 'package:line_icons/line_icons.dart';

void main() => runApp(MaterialApp(
      home: Ath(),
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
      ),
    ));

class Ath extends StatefulWidget {
  @override
  _AthState createState() => _AthState();
}

class _AthState extends State<Ath> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: selectedIndex,
        children: [Post(), Meet(), Profile()],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        selectedItemColor: strawberry,
        unselectedItemColor: grey,
        type: BottomNavigationBarType.shifting,
        iconSize: 30,
        items: [
          BottomNavigationBarItem(
              backgroundColor: vanilla,
              icon: Icon(
                LineIcons.home,
              ),
              label: 'Home'),
          BottomNavigationBarItem(
              backgroundColor: vanilla,
              icon: Icon(
                LineIcons.heartAlt,
              ),
              label: 'Match'),
          BottomNavigationBarItem(
              backgroundColor: vanilla,
              icon: Icon(
                LineIcons.user,
              ),
              label: 'Profile'),
        ],
        onTap: (int index) {
          setState(() {
            selectedIndex = index;
          });
        },
        elevation: 5.0,
      ),
    );
  }
}
