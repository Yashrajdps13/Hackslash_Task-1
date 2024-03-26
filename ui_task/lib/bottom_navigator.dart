import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ui_task/activity/home.dart';
import 'package:ui_task/activity/profile.dart';
import 'package:ui_task/activity/track_package.dart';
import 'package:ui_task/activity/wallet.dart';


class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override


  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Theme.of(context).colorScheme.background,
      body: IndexedStack(
        index: _currentIndex,
        children: <Widget>[
          HomeScreen(),
          WalletScreen(),
          TrackScreen(),
          ProfileScreen(),
      ],
      ),

      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Theme.of(context).colorScheme.background,
        showUnselectedLabels: true,
        selectedIconTheme: const IconThemeData(color: Color(0xff0560FA)),
        selectedItemColor: const Color(0xff0560FA),
        unselectedItemColor: Theme.of(context).colorScheme.tertiary.withOpacity(0.5),

        onTap: (index){
          setState(() {
            _currentIndex = index;
          });
        },
        currentIndex: _currentIndex,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Iconsax.house_2), label: "Home",backgroundColor: Colors.transparent),
          BottomNavigationBarItem(
              icon: Icon(Iconsax.wallet_3), label: "Wallet",backgroundColor: Colors.transparent),
          BottomNavigationBarItem(
              icon: Icon(Iconsax.smart_car), label: "Track",backgroundColor: Colors.transparent),
          BottomNavigationBarItem(
              icon: Icon(Iconsax.profile_circle), label: "Profile",backgroundColor: Colors.transparent)
        ],
      ),
    );
  }
}
