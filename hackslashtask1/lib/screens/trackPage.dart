import 'package:flutter/material.dart';
import 'package:hackslashtask1/utils/global.dart';
import 'package:hackslashtask1/utils/routes.dart';

class TrackPage extends StatelessWidget {
  const TrackPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
  bottomNavigationBar: BottomAppBar(
        height: 100,
        color: darkbackgroundColor,
        elevation: 0,
        child: Row(
          children: [
            Container(
                padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                child: Column(children: [
                  IconButton(
                      onPressed: () {
                        Navigator.pushNamed(context, MyRoutes.HomePageRouter);
                      },
                      icon: Icon(Icons.home),
                      color: Color.fromARGB(255, 225, 220, 220)),
                  Text(
                    "Home",
                    style: TextStyle(fontSize: 13, color: Colors.white),
                  )
                ])),
            Spacer(),
            Container(
                padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                child: Column(children: [
                  IconButton(
                      onPressed: () {
                        Navigator.pushNamed(context, MyRoutes.WalletPageRouter);
                      },
                      icon: Icon(Icons.wallet),
                      color: Color.fromARGB(255, 225, 220, 220)),
                  Text(
                    "Wallet",
                    style: TextStyle(fontSize: 13, color: Colors.white),
                  )
                ])),
            Spacer(),
           Container(
                padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                child: Column(children: [
                  IconButton(
                      onPressed: () {
                        Navigator.pushNamed(context, MyRoutes.TrackPageRouter);
                      },
                      icon: Icon(Icons.track_changes_outlined),
                      color: Color.fromARGB(255, 225, 220, 220)),
                  Text(
                    "Track",
                    style: TextStyle(fontSize: 13, color: Colors.white),
                  )
                ])),
            Spacer(),
           Container(
                padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                child: Column(children: [
                  IconButton(
                      onPressed: () {
                        Navigator.pushNamed(context, MyRoutes.ProfilePageRouter);
                      },
                      icon: Icon(Icons.person),
                      color: Color.fromARGB(255, 225, 220, 220)),
                  Text(
                    "Profile",
                    style: TextStyle(fontSize: 13, color: Colors.white),
                  )
                ])),
          ],
        ),
      ),
    );
  }
}