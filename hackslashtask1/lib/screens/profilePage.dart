import 'package:flutter/material.dart';
import 'package:hackslashtask1/utils/colors.dart';
import 'package:hackslashtask1/utils/global.dart';
import 'package:hackslashtask1/utils/routes.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Container(
          color: darkbackgroundColor2,
          padding: EdgeInsets.symmetric(vertical: 20),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Padding(padding: EdgeInsets.symmetric(horizontal: 20)),
                    Icon(
                      Icons.keyboard_return_rounded,
                      color: Colors.blue,
                    ),
                    SizedBox(
                      width: 100,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Profile",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white60,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                    height: MediaQuery.of(context).size.height * 0.87,
                    width: MediaQuery.of(context).size.width,
                    color: darkbackgroundColor,
                    child: SingleChildScrollView(
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 10)),
                                CircleAvatar(
                                    radius: 30,
                                    backgroundImage:
                                        AssetImage("lib/images/profile.jpeg")),
                                SizedBox(
                                  width: 10,
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Tanya Singh",
                                      style: TextStyle(
                                          fontSize: 18, color: Colors.white),
                                    ),
                                    Row(children: [
                                      Text(
                                        "Current Balance:",
                                        style: TextStyle(
                                            fontSize: 14, color: Colors.white),
                                      ),
                                      Text(
                                        " N10,712:00",
                                        style: TextStyle(
                                            fontSize: 14, color: Colors.blue),
                                      ),
                                      SizedBox(
                                        width: 70,
                                      ),
                                      Icon(
                                        Icons.remove_red_eye,
                                        color: Colors.white,
                                      )
                                    ]),
                                  ],
                                )
                              ],
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Row(
                              children: [
                                Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 10)),
                                Text(
                                  "Enable dark Mode",
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  width: 200,
                                ),
                                IconButton(onPressed: (){},
                                 icon: Icon(Icons.toggle_on))
                              ],
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Container(
                            
                              height: 60,
                              
                              width: MediaQuery.of(context).size.width,
                              padding: EdgeInsets.symmetric(horizontal: 20),
                              decoration: ShapeDecoration(
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(2))),
                                color: darkbackgroundColor2,
                                
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.person_2_rounded,
                                    color: Colors.white,
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(top: 3),
                                      ),
                                      Text(
                                        "Edit Profile",
                                        style: TextStyle(
                                            fontSize: 15,
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        "name, phone no, address ,email",
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.white38),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    width: 100,
                                  ),
                                  Icon(
                                    Icons.arrow_right_sharp,
                                    color: Colors.white,
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Container(
                              height: 60,
                              width: MediaQuery.of(context).size.width,
                              padding: EdgeInsets.symmetric(horizontal: 20),
                              decoration: ShapeDecoration(
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(2))),
                                color: darkbackgroundColor2,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.note_sharp,
                                    color: Colors.white,
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(top: 3),
                                      ),
                                      Text(
                                        "Statements and Reports",
                                        style: TextStyle(
                                            fontSize: 15,
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        "download transaction details,orders,delieveries",
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.white38),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Icon(
                                    Icons.arrow_right_sharp,
                                    color: Colors.white,
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Container(
                              height: 60,
                              width: MediaQuery.of(context).size.width,
                              padding: EdgeInsets.symmetric(horizontal: 20),
                              decoration: ShapeDecoration(
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(2))),
                                color: darkbackgroundColor2,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.notifications,
                                    color: Colors.white,
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(top: 3),
                                      ),
                                      Text(
                                        "Notifications Settings",
                                        style: TextStyle(
                                            fontSize: 15,
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        "mute,umute, set location & tracking settings",
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.white38),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    width: 40,
                                  ),
                                  Icon(
                                    Icons.arrow_right_sharp,
                                    color: Colors.white,
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Container(
                              height: 60,
                              width: MediaQuery.of(context).size.width,
                              padding: EdgeInsets.symmetric(horizontal: 20),
                              decoration: ShapeDecoration(
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(2))),
                                color: darkbackgroundColor2,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.card_giftcard,
                                    color: Colors.white,
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(top: 3),
                                      ),
                                      Text(
                                        "Card and Bank account setting",
                                        style: TextStyle(
                                            fontSize: 15,
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        "change cards, delete and details",
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.white38),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    width: 70,
                                  ),
                                  Icon(
                                    Icons.arrow_right_sharp,
                                    color: Colors.white,
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Container(
                              height: 60,
                              width: MediaQuery.of(context).size.width,
                              padding: EdgeInsets.symmetric(horizontal: 20),
                              decoration: ShapeDecoration(
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(2))),
                                color: darkbackgroundColor2,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.person,
                                    color: Colors.white,
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(top: 3),
                                      ),
                                      Text(
                                        "Referrals",
                                        style: TextStyle(
                                            fontSize: 15,
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        "check no of friends and earn",
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.white38),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    width: 110,
                                  ),
                                  Icon(
                                    Icons.arrow_right_sharp,
                                    color: Colors.white,
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Container(
                              height: 60,
                              width: MediaQuery.of(context).size.width,
                              padding: EdgeInsets.symmetric(horizontal: 20),
                              decoration: ShapeDecoration(
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(2))),
                                color: darkbackgroundColor2,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.notifications,
                                    color: Colors.white,
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(top: 3),
                                      ),
                                      Text(
                                        "About Us",
                                        style: TextStyle(
                                            fontSize: 15,
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        "know more about us, terms and conditions",
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.white38),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    width: 40,
                                  ),
                                  Icon(
                                    Icons.arrow_right_sharp,
                                    color: Colors.white,
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Container(
                              height: 60,
                              width: MediaQuery.of(context).size.width,
                              padding: EdgeInsets.symmetric(horizontal: 20),
                              decoration: ShapeDecoration(
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(2))),
                                color: darkbackgroundColor2,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.logout_outlined,
                                    color: text2,
                                  ),
                                  Text(
                                    "Log Out",
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    width: 200,
                                  ),
                                  Icon(
                                    Icons.arrow_right_sharp,
                                    color: Colors.white,
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    )),
              ]),
        ),
      )),
  bottomNavigationBar: BottomAppBar(
        height: 90,
        color: darkbackgroundColor,
        elevation: 0,
        
        child: Row(
          children: [
            Container(
                child: Column(children: [
              IconButton(
                  onPressed: () {
                    Navigator.pushNamed(context, MyRoutes.HomePageRouter);
                  },
                  icon: Icon(Icons.home),
                  color: Color.fromARGB(255, 225, 220, 220)),
              Text(
                "Home",
                style: TextStyle(fontSize: 12, color: Colors.white),
              )
            ])),
            Spacer(),
            Container(
                
                child: Column(children: [
                  IconButton(
                      onPressed: () {
                        Navigator.pushNamed(context, MyRoutes.WalletPageRouter);
                      },
                      icon: Icon(Icons.wallet),
                      color: Color.fromARGB(255, 225, 220, 220)),
                  Text(
                    "Wallet",
                    style: TextStyle(fontSize: 12, color: Colors.white),
                  )
                ])),
            Spacer(),
            Container(
                
                child: Column(children: [
                  IconButton(
                      onPressed: () {
                        Navigator.pushNamed(context, MyRoutes.TrackPageRouter);
                      },
                      icon: Icon(Icons.track_changes_outlined),
                      color: Color.fromARGB(255, 225, 220, 220)),
                  Text(
                    "Track",
                    style: TextStyle(fontSize: 12, color: Colors.white),
                  )
                ])),
            Spacer(),
            Container(
                
                child: Column(children: [
                  IconButton(
                      onPressed: () {
                        Navigator.pushNamed(
                            context, MyRoutes.ProfilePageRouter);
                      },
                      icon: Icon(Icons.person),
                      color: selectedBlue),
                  Text(
                    "Profile",
                    style: TextStyle(fontSize: 12, color: selectedBlue),
                  )
                ])),
          ],
        ),
      ),

    );
  }
}

class SetState {
}
