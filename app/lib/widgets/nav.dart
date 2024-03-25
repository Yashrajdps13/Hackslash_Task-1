import 'package:flutter/material.dart';
import 'package:hackslash_task1/utilis/routes.dart';
import 'package:flutter/rendering.dart';

void showLayoutGuidelines() {
  debugPaintSizeEnabled = true;
}

class NavBar extends StatefulWidget {

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        color: Color.fromRGBO(0, 13, 29, 1),
       child: Row(
         children: [
           Spacer(),
           IconButton(
           icon: Icon(Icons.home,
           color: currentPage == 0
               ? Color.fromRGBO(5, 96, 250, 1)
               : Color.fromRGBO(255, 255, 255, 1),
           ),
           onPressed: () {
             Navigator.pushNamed(context, MyRoutes.homeRoute);
           },
           ),
           Spacer(),
           IconButton(
             icon: Icon(Icons.account_balance_wallet_outlined,
               color: currentPage == 0
                   ? Color.fromRGBO(5, 96, 250, 1)
                   : Color.fromRGBO(255, 255, 255, 1),),
             onPressed: () {
               Navigator.pushNamed(context, MyRoutes.walletRoute);
             },),
           Spacer(),
           IconButton(
             icon: Icon(Icons.car_repair_outlined,
               color: currentPage == 0
                   ? Color.fromRGBO(5, 96, 250, 1)
                   : Color.fromRGBO(255, 255, 255, 1),),
             onPressed: () {
               Navigator.pushNamed(context, MyRoutes.trackRoute);
             },),
           Spacer(),
           IconButton(
             icon: Icon(Icons.account_circle_outlined,
               color: currentPage == 0
                   ? Color.fromRGBO(5, 96, 250, 1)
                   : Color.fromRGBO(255, 255, 255, 1),),
             onPressed: () {
               Navigator.pushNamed(context, MyRoutes.profileRoute);
             },),
           Spacer(),
         ],
       )
      )
    );

    }
}
