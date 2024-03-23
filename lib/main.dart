import 'package:task1/screens/home.dart';
import "package:task1/screens/profile.dart";
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
        }
    );
  }
}

