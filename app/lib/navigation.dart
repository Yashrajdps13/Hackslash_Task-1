import 'package:app/pages/home.dart';
import 'package:flutter/material.dart';

class app extends StatefulWidget {
  const app({super.key});


  @override
  State<app> createState() => _appState();
}

class _appState extends State<app> {
int myindex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
       title:Text("Bottom"),
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
            icon: Icon(Icons.car_crash_outlined),
            label: "Track",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_pin),
            label: "Profile",
          ),
        ],
      ),
    );

  }
}