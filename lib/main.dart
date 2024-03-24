import 'package:task1/screens/1home.dart';
import 'package:task1/screens/2wallet.dart';
import 'package:task1/screens/3track.dart';
import 'package:task1/screens/4profile.dart';
import 'package:flutter/material.dart';
import 'package:task1/utils/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter_Task1",
        debugShowCheckedModeBanner: false,
        initialRoute: "/",
        routes: {
          "/": (context) => const Home(),
          MyRoutes.profileRoute: (context) => const Profile(),
          MyRoutes.walletRoute: (context) => const Wallet(),
          MyRoutes.homeRoute: (context) => const Home(),
          MyRoutes.trackRoute: (context) => const Track(),
        }
    );
  }
}

