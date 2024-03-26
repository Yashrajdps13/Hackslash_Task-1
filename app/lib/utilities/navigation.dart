import 'package:app/pages/home.dart';
import 'package:app/pages/profile.dart';
import 'package:app/pages/tracking.dart';
import 'package:app/pages/wallet.dart';
import 'package:flutter/material.dart';

class app extends StatefulWidget {
  const app({super.key});


  @override
  State<app> createState() => _appState();
}

class _appState extends State<app> {
int myindex = 0;
 static const List<Widget> widgetList = [
  homepage(),
  walletpage(),
  tracking(),
  profile(),
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
            icon: Icon(Icons.home_outlined),
            label: "Home",

          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.wallet),
            label: "Wallet",

          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.departure_board_outlined),
            label: "Track",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_outlined),
            label: "Profile",
          ),
        ],
      ),
    );

  }
}