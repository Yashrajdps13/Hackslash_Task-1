import 'package:flutter/material.dart';

import '../utils/colors.dart';
import '../widgets/profileTiles.dart';
class profilePage extends StatefulWidget {
  const profilePage({super.key});

  @override
  State<profilePage> createState() => _profilePageState();
}

class _profilePageState extends State<profilePage> {
  bool dark = false;
  static ThemeMode _theme = ThemeMode.system;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Profile",style: TextStyle(fontSize: 16)),
          centerTitle: true,
          backgroundColor: lightBackgroundColor,
        ),

        body:SingleChildScrollView(
          padding: EdgeInsets.symmetric(vertical: 24.0,horizontal: 24.0),
          child: Column(
            children: [
              Row(
                children: [
                 CircleAvatar(
                   radius: 48,
                   backgroundColor: Colors.white70,
                   backgroundImage: AssetImage('assets/images/profile_icon.png'),
                 ),
                 SizedBox(width: 10,),
                 Column(
                   mainAxisAlignment: MainAxisAlignment.start,
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                    Text("Ken Nwaeze",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                     Text("current balance: 40,000")
                   ],
                 ),
                  Spacer(),
                  Icon(Icons.visibility_off)
                ],
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Enable Dark Mode",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                  Spacer(),
                  Switch(value: dark, onChanged: (bool value) {
                    setState(() {
                      dark = value;
                      if(dark){
                         _theme = ThemeMode.dark;
                         ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                           content: Text("Dark Mode"),
                         ));
                      }else{
                        _theme = ThemeMode.light;
                      }
                    });
                  },)
                ],
              ),
              SizedBox(height: 40,),
              Profile(icon: Icons.person,titleText: "Edit Profile",subTitleText: "name,phone no.,address,email...",),
              Profile(icon: Icons.text_snippet,titleText: "Statements & Reports",subTitleText: "Download transaction details",),
              Profile(icon: Icons.notifications,titleText: "Notification Settings",subTitleText: "mute, unmute, set location ",),
              Profile(icon: Icons.credit_card,titleText: "Card & Bank account settings",subTitleText: "change cards, delete card details",),
              Profile(icon: Icons.share,titleText: "Referrals",subTitleText: "check no of friends and earn",),
              Profile(icon: Icons.image,titleText: "About Us",subTitleText: "know more about us, ",),
              Profile(icon: Icons.logout,titleText: "Log Out",subTitleText: "",),


            ],
          ),
        )
    );
  }
}

