import 'package:flutter/material.dart';
import 'package:task1/utils/global.dart';
import 'package:task1/widgets/profiletile.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  static ThemeMode _theme = ThemeMode.system;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
            color: dark == true ? Color(0xffA7A7A7) : darktextcolour),
        leading: Icon(Icons.arrow_back),
        title: Text("Profile",
            style: TextStyle(fontSize: 16, color: Color(0xffA7A7A7))),
        centerTitle: true,
        backgroundColor: dark == true ? boxcolour : Colors.white,
      ),
      backgroundColor: dark == true ? darkbackgroundcolor : Colors.white,
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 24.0, horizontal: 24.0),
        child: Column(
          children: [
            SizedBox(height: 20),
            Row(
              children: [
                CircleAvatar(
                  radius: 35,
                  backgroundColor: Colors.white70,
                  backgroundImage: AssetImage('assets/images/profilepic.png'),
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Ken Nwaeze",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: dark == true ? Colors.white : Colors.black),
                    ),
                    Row(
                      children: [
                        Text(
                          "Current balance: ",
                          style: TextStyle(
                              fontSize: 12,
                              color: dark == true ? Colors.white : Colors.black,
                              fontFamily: 'Roboto'),
                        ),
                        Text(
                          "N10,712.00",
                          style: TextStyle(
                              fontSize: 12,
                              color: darktextcolour,
                              fontFamily: 'Roboto'),
                        ),
                      ],
                    )
                  ],
                ),
                Spacer(),
                Icon(
                  Icons.visibility_off,
                  color: dark == true ? Colors.white : Colors.black,
                )
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Enable Dark Mode",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Roboto',
                      color: dark == true ? Colors.white : Colors.black),
                ),
                Spacer(),
                Switch(
                  value: dark,
                  onChanged: (bool value) {
                    setState(() {
                      dark = value;
                      if (dark) {
                        _theme = ThemeMode.dark;
                      } else {
                        _theme = ThemeMode.light;
                      }
                    });
                  },
                )
              ],
            ),
            SizedBox(
              height: 18,
            ),
            profile_tile(
                icon: Icons.person,
                boldtext: "Edit Profile",
                normaltext: "Name, phone no, address, email..."),
            profile_tile(
                icon: Icons.text_snippet,
                boldtext: "Statements & Reports",
                normaltext: "Download transaction details, orders, deliveries"),
            profile_tile(
                icon: Icons.notifications,
                boldtext: "Notification Settings",
                normaltext: "Mute, Unmute, Set Location "),
            profile_tile(
                icon: Icons.credit_card,
                boldtext: "Card & Bank account settings",
                normaltext: "Change Cards, Delete Card Details"),
            profile_tile(
                icon: Icons.share,
                boldtext: "Referrals",
                normaltext: "check no of friends and earn"),
            profile_tile(
                icon: Icons.image,
                boldtext: "About Us",
                normaltext: "know more about us, terms and conditions "),
            Container(
              color: dark == true ? boxcolour : lightboxcolour,
              height: MediaQuery.of(context).size.height * 0.07,
              padding: EdgeInsets.only(top: 8, left: 10, right: 10),
              alignment: Alignment.center,
              margin: EdgeInsets.symmetric(vertical: 5, horizontal: 0),
              child: Row(
                children: [
                  Icon(
                    Icons.logout,
                    color: Color(0xffED3A3A),
                    size: 35,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    "Log Out",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: dark == true ? Colors.white : Colors.black),
                  ),
                  Spacer(),
                  Icon(
                    Icons.navigate_next,
                    color: dark == true ? Colors.white : Colors.black,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
