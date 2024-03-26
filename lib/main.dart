



import 'package:flutter/material.dart';
import 'package:hackslash_task_1/mainPage.dart';
import 'package:hackslash_task_1/utils/appStateNotifier.dart';
import 'package:hackslash_task_1/utils/colors.dart';
import 'package:hackslash_task_1/utils/routes.dart';
import 'package:hackslash_task_1/utils/themes.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();

}

class _MyAppState extends State<MyApp> {


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HackSlash App',
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      darkTheme:MyAppTheme.darkTheme,/* ThemeData(
        useMaterial3: true,
          fontFamily: 'Roboto',
        appBarTheme: AppBarTheme(titleTextStyle: TextStyle(color: Colors.white70),backgroundColor: lightBackgroundColor),
        iconTheme: IconThemeData(color: Colors.white),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(unselectedItemColor: Colors.white70,backgroundColor: darkBackgroundColor),
        colorScheme: ColorScheme.fromSeed(seedColor: primaryColor,background: darkBackgroundColor,onSurface: Colors.white)
      ),*/
      theme: MyAppTheme.lightTheme,/* ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: primaryColor,onSurface: Colors.black),
        iconTheme: IconThemeData(color: Colors.white),
        fontFamily: 'Roboto',
        useMaterial3: true,
      ),*/
      initialRoute: MyRoutes.homePage,
      routes: {
      MyRoutes.homePage:(context) => mainPage(),
      },
    );
  }

}


