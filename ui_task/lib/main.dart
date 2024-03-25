import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ui_task/services/theme_provider.dart';
import 'home.dart';

void main() {
  runApp(
    ChangeNotifierProvider(create: (context)=>ThemeProvider(),
    child: const MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: Provider.of<ThemeProvider>(context).themeData,
      routes: {
        "/" : (context)=> Home(),
      },
    );
  }
}
