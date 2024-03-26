import 'package:app/pages/home.dart';
import 'package:app/pages/profile.dart';
import 'package:app/pages/track.dart';
import 'package:app/pages/wallet.dart';
import 'package:app/utilis/routes.dart';
import 'package:app/widgets/nav.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        bottomNavigationBar: NavBar(),
      ),
      theme: ThemeData( scaffoldBackgroundColor: Color.fromRGBO(0, 13, 29, 1),
      appBarTheme: AppBarTheme(
        color: Color.fromRGBO(0, 27, 59, 1)
      )),
    debugShowCheckedModeBanner: false,

    );
}
}