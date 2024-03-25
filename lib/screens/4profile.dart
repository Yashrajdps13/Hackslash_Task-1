import 'package:flutter/material.dart';
import 'package:task1/utils/global.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme:
            IconThemeData(color: Color(0xffA7A7A7) //change your color here
                ),
        title: Text("Profile",
            style: TextStyle(fontSize: 16, color: Color(0xffA7A7A7))),
        centerTitle: true,
        backgroundColor: boxcolour,
      ),
      backgroundColor: darkbackgroundcolor,
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
                          color: Colors.white),
                    ),
                    Row(
                      children: [
                        Text(
                          "Current balance: ",
                          style: TextStyle(
                              fontSize: 12,
                              color: Colors.white,
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
                  color: Colors.white,
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
                      color: Colors.white),
                ),
                Spacer(),
                Icon(
                  Icons.radio_button_on,
                  color: Colors.white,
                  size: 25,
                )
              ],
            ),
            SizedBox(
              height: 18,
            ),
            Container(
              color: boxcolour,
              height: MediaQuery.of(context).size.height * 0.07,
              padding: EdgeInsets.only(top: 8, left: 10, right: 10),
              alignment: Alignment.center,
              margin: EdgeInsets.symmetric(vertical: 5, horizontal: 0),
              child: Row(
                children: [
                  Icon(
                    Icons.person,
                    color: Colors.white,
                    size: 30,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Edit Profile",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      Flexible(
                        child: Text(
                          "Name, phone no, address, email...",
                          maxLines: 1,
                          style:
                              TextStyle(color: Color(0xffA7A7A7), fontSize: 11),
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  Icon(
                    Icons.navigate_next,
                    color: Colors.white,
                  )
                ],
              ),
            ),
            Container(
              color: boxcolour,
              height: MediaQuery.of(context).size.height * 0.07,
              padding: EdgeInsets.only(top: 8, left: 10, right: 10),
              alignment: Alignment.center,
              margin: EdgeInsets.symmetric(vertical: 5, horizontal: 0),
              child: Row(
                children: [
                  Icon(
                    Icons.text_snippet,
                    color: Colors.white,
                    size: 30,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Statements & Reports",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      Flexible(
                        child: Text(
                          "Download transaction details, orders, deliveries",
                          style:
                              TextStyle(color: Color(0xffA7A7A7), fontSize: 11),
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  Icon(
                    Icons.navigate_next,
                    color: Colors.white,
                  )
                ],
              ),
            ),
            Container(
              color: boxcolour,
              height: MediaQuery.of(context).size.height * 0.07,
              padding: EdgeInsets.only(top: 8, left: 10, right: 10),
              alignment: Alignment.center,
              margin: EdgeInsets.symmetric(vertical: 5, horizontal: 0),
              child: Row(
                children: [
                  Icon(
                    Icons.notifications,
                    color: Colors.white,
                    size: 30,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Notification Settings",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      Flexible(
                        child: Text(
                          "Mute, Unmute, Set Location ",
                          maxLines: 1,
                          style:
                              TextStyle(color: Color(0xffA7A7A7), fontSize: 11),
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  Icon(
                    Icons.navigate_next,
                    color: Colors.white,
                  )
                ],
              ),
            ),
            Container(
              color: boxcolour,
              height: MediaQuery.of(context).size.height * 0.07,
              padding: EdgeInsets.only(top: 8, left: 10, right: 10),
              alignment: Alignment.center,
              margin: EdgeInsets.symmetric(vertical: 5, horizontal: 0),
              child: Row(
                children: [
                  Icon(
                    Icons.credit_card,
                    color: Colors.white,
                    size: 30,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Card & Bank account settings",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      Flexible(
                        child: Text(
                          "Change Cards, Delete Card Details",
                          maxLines: 1,
                          style:
                              TextStyle(color: Color(0xffA7A7A7), fontSize: 11),
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  Icon(
                    Icons.navigate_next,
                    color: Colors.white,
                  )
                ],
              ),
            ),
            Container(
              color: boxcolour,
              height: MediaQuery.of(context).size.height * 0.07,
              padding: EdgeInsets.only(top: 8, left: 10, right: 10),
              alignment: Alignment.center,
              margin: EdgeInsets.symmetric(vertical: 5, horizontal: 0),
              child: Row(
                children: [
                  Icon(
                    Icons.share,
                    color: Colors.white,
                    size: 30,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Referrals",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      Flexible(
                        child: Text("check no of friends and earn",
                            maxLines: 1,
                            style: TextStyle(
                                color: Color(0xffA7A7A7), fontSize: 11)),
                      ),
                    ],
                  ),
                  Spacer(),
                  Icon(
                    Icons.navigate_next,
                    color: Colors.white,
                  )
                ],
              ),
            ),
            Container(
              color: boxcolour,
              height: MediaQuery.of(context).size.height * 0.07,
              padding: EdgeInsets.only(top: 8, left: 10, right: 10),
              alignment: Alignment.center,
              margin: EdgeInsets.symmetric(vertical: 5, horizontal: 0),
              child: Row(
                children: [
                  Icon(
                    Icons.image,
                    color: Colors.white,
                    size: 30,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "About Us",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      Flexible(
                        child: Text(
                          "know more about us, terms and conditions ",
                          maxLines: 1,
                          style:
                              TextStyle(color: Color(0xffA7A7A7), fontSize: 11),
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  Icon(
                    Icons.navigate_next,
                    color: Colors.white,
                  )
                ],
              ),
            ),
            Container(
              color: boxcolour,
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
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  Spacer(),
                  Icon(
                    Icons.navigate_next,
                    color: Colors.white,
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
