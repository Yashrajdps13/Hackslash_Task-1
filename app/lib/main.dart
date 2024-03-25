import 'package:flutter/material.dart';
import 'package:hackslash_task1/pages/home.dart';
import 'package:hackslash_task1/pages/profile.dart';
import 'package:hackslash_task1/pages/track.dart';
import 'package:hackslash_task1/pages/wallet.dart';
import 'package:hackslash_task1/utilis/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData( scaffoldBackgroundColor: Color.fromRGBO(0, 13, 29, 1),
      appBarTheme: AppBarTheme(
        color: Color.fromRGBO(0, 27, 59, 1)
      )),
    debugShowCheckedModeBanner: false,
      routes: {
      "/": (context) => Home(),
        MyRoutes.homeRoute: (context) => Home(),
        MyRoutes.walletRoute: (context) => Wallet(),
        MyRoutes.trackRoute: (context) => Track(),
        MyRoutes.profileRoute: (context) => Profile(),
      },
    );
}
}