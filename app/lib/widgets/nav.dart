import 'package:flutter/material.dart';
import '../pages/home.dart';
import '../pages/wallet.dart';
import '../pages/track.dart';
import '../pages/profile.dart';

class NavBar extends StatefulWidget {

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int myIndex = 0;
  List screenList=[
     Home(),
     Wallet(),
     Track(),
     Profile()

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screenList[myIndex],
      bottomNavigationBar: BottomNavigationBar(

        onTap: (index) {
          setState(() {

            myIndex =index;
          });
        },
        currentIndex: myIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_balance_wallet_outlined),
            label: 'Wallet',),
          BottomNavigationBarItem(
            icon: Icon(Icons.car_repair_outlined),
            label: 'Track',),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_outlined),
            label: 'Profile',),
        ],
      ),
    );
  }
}