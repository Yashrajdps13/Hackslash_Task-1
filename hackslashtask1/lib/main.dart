// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:hackslashtask1/screens/homePage.dart';
import 'package:hackslashtask1/screens/profilePage.dart';
import 'package:hackslashtask1/screens/trackPage.dart';
import 'package:hackslashtask1/screens/walletPage.dart';

import 'package:hackslashtask1/utils/routes.dart';
import 'package:hackslashtask1/utils/thememanager.dart';
import 'package:hackslashtask1/utils/themes.dart';


void main() {
  runApp(const MyApp());
}
ThemeManager _themeManager =ThemeManager();
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  void dispose(){
    _themeManager.removeListener(themeListener);
super.dispose();

  }


@override
void initState() {
  _themeManager.addListener(themeListener);
  super.initState();
}
themeListener(){
  if(mounted){
    setState(() {
      
    });
  }
}

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        
      theme: LightTheme,
      darkTheme:darkTheme,
      themeMode: _themeManager.themeMode,
     debugShowCheckedModeBanner: false,
     initialRoute: "/",
     routes: {
      "/":(context) => HomePage(),
      MyRoutes.HomePageRouter:(context) => HomePage(),
      MyRoutes.WalletPageRouter:(context) => WalletPage(),
      MyRoutes.TrackPageRouter:(context) => TrackPage(),
      MyRoutes.ProfilePageRouter:(context) => ProfilePage()
     },
    );
  }
}