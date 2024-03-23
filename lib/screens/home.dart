import 'package:flutter/material.dart';
import 'package:task1/utils/global.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkbackgroundcolor,
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 24),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: darkbackgroundcolor,
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.0817,
                  width: MediaQuery.of(context).size.width,
                ),
                Container(
                  decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(4))),
                      color: boxcolour),
                  height: MediaQuery.of(context).size.height * 0.04,
                  width: MediaQuery.of(context).size.width * 0.875,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.028,
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.1,
                  decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8))),
                      color: boxcolour),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.046,
                ),
                Text(
                  "Special for you",
                  style: TextStyle(
                      fontSize: MediaQuery.of(context).size.height * 0.019,
                      color: specialtextcolour),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.00829,
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.0758,
                  decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8))),
                      color: boxcolour),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.0343,
                ),
                Text(
                  "What would you like to do",
                  style: TextStyle(
                      fontSize: MediaQuery.of(context).size.height * 0.019,
                      color: darktextcolour),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.0142,
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.188,
                  decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8))),
                      color: boxcolour),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.0284,
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.188,
                  decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8))),
                      color: boxcolour),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.0284,
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.188,
                  decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8))),
                      color: boxcolour),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            backgroundColor: darkbackgroundcolor,
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.wallet),
            label: 'Wallet',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.track_changes),
            label: 'Track',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
