import 'package:flutter/material.dart';
import 'package:hackslashtask1/utils/global.dart';
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SafeArea(child: SingleChildScrollView(
       child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            color: darkbackgroundColor,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(padding: EdgeInsets.symmetric(horizontal: 30)),
                
              ],
            ),
       ), 
      ))
    );
  }
}