import 'package:flutter/material.dart';
import 'package:hackslashtask1/utils/global.dart';
import 'package:hackslashtask1/utils/routes.dart';
class WalletPage extends StatelessWidget {
  const WalletPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     

       bottomNavigationBar: BottomAppBar(
        height: 60,
        color: darkbackgroundColor,
        elevation: 0.5,
        child: Row(
          children: [
            IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, MyRoutes.HomePageRouter);
                },
                icon: Icon(Icons.home),
                color: Color.fromARGB(255, 225, 220, 220)),
            Spacer(),
            IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, MyRoutes.WalletPageRouter);
                },
                icon: Icon(Icons.wallet_giftcard_outlined),
                color: Color.fromARGB(255, 225, 220, 220)),
            Spacer(),
            IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, MyRoutes.TrackPageRouter);
                },
                icon: Icon(Icons.art_track_outlined),
                color: Color.fromARGB(255, 225, 220, 220)),
            Spacer(),
            IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, MyRoutes.ProfilePageRouter);
                },
                icon: Icon(Icons.person_4_outlined),
                color: Color.fromARGB(255, 225, 220, 220)),
          ],
        ),
      ),
    );
  }
}