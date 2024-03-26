import 'package:flutter/material.dart';
import 'package:hackslash_task1/pages/Home.dart';
import 'package:hackslash_task1/pages/Profile.dart';
import 'package:hackslash_task1/pages/TrackingPackage.dart';
import 'package:hackslash_task1/pages/Wallet.dart';



void main() {
  runApp( MyApp());
}

class MyApp extends StatefulWidget {
  _MyAppState createState() => _MyAppState();
}
  // This widget is the root of your application.
  class  _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/profile': (context) => Profile(),
        '/': (context) =>  Home(),

        '/wallet': (context) => Wallet(),
        '/track': (context) => TrackingPackage(),
      },
      );
  }
}

