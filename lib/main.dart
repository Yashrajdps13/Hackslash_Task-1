import 'package:flutter/material.dart';
import 'package:task1/navigationbar.dart';
import 'package:task1/screens/1home.dart';
import 'package:task1/utils/routes.dart';

void main() {
  runApp(const myapp());
}

class myapp extends StatelessWidget {
  const myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Hackslash cloning app",
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        "/": (context) => app(),
        MyRoutes.homeRoute: (context) => Home(),
      },
    );
  }
}
