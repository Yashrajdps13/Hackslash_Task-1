// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:hackslashtask1/screens/homePage.dart';
import 'package:hackslashtask1/screens/profilePage.dart';
import 'package:hackslashtask1/screens/trackPage.dart';
import 'package:hackslashtask1/screens/walletPage.dart';
import 'package:hackslashtask1/utils/routes.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     debugShowCheckedModeBanner: false,
     initialRoute: "/",
     routes: {
      "/":(context) => ProfilePage(),
      MyRoutes.HomePageRouter:(context) => HomePage(),
      MyRoutes.WalletPageRouter:(context) => WalletPage(),
      MyRoutes.TrackPageRouter:(context) => TrackPage(),
      MyRoutes.ProfilePageRouter:(context) => ProfilePage()
     },
    );
  }
}