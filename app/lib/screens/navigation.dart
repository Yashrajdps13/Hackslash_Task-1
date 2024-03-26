
import 'package:app/material.dart/global.dart';
import 'package:app/screens/homepage.dart';
import 'package:app/screens/profile.dart';
import 'package:app/screens/track.dart';
import 'package:app/screens/wallet.dart';
import 'package:flutter/material.dart';

class app extends StatefulWidget {
  const app({super.key});


  @override
  State<app> createState() => _appState();
}

class _appState extends State<app> {
int myindex = 0;
 static const List<Widget> widgetList = [
  Homepage(),
  Wallet(),
  Track(),
  Profile(),
];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: (
      Container(
        child: widgetList[myindex],
      )
      ),

      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Maincolor,
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.blue,

        onTap:(index){
          setState(() {
            myindex = index;
          });
        },
        currentIndex: myindex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",

          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.wallet),
            label: "Wallet",

          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.track_changes),
            label: "Track",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
          ),
        ],
      ),
    );

  }
}