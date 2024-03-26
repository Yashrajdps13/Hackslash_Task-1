import 'package:flutter/material.dart';
import 'package:hackslash_task_1/screens/homePage.dart';
import 'package:hackslash_task_1/screens/profilePage.dart';
import 'package:hackslash_task_1/screens/trackPage.dart';
import 'package:hackslash_task_1/screens/walletPage.dart';
import 'package:hackslash_task_1/utils/colors.dart';
class mainPage extends StatefulWidget {
  const mainPage({super.key});

  @override
  State<mainPage> createState() => _mainPageState();
}

class _mainPageState extends State<mainPage> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
   homePage(),
    walletPage(),
    trackPage(),
    profilePage(),
  ];
  @override
  Widget build(BuildContext context) {

    return Scaffold(
       body:  Container(
       child: _widgetOptions.elementAt(_selectedIndex),
       ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        type: BottomNavigationBarType.fixed,
       /* unselectedItemColor: Colors.black26,
        unselectedLabelStyle: const TextStyle(color: Colors.black26),
        unselectedIconTheme:  const IconThemeData(color: Colors.black26),
        selectedLabelStyle: const TextStyle(color: primaryColor),
        selectedItemColor: primaryColor,
        selectedIconTheme: const IconThemeData(color: primaryColor),*/
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_filled,),
            label: 'Home',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.wallet,),
              label: 'Wallet',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.track_changes,),
              label: 'Track',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile'
          )

        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
