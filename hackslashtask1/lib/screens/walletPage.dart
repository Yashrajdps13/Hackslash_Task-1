import 'package:flutter/material.dart';
import 'package:hackslashtask1/utils/colors.dart';

import 'package:hackslashtask1/utils/routes.dart';

class WalletPage extends StatefulWidget {
  const WalletPage({super.key});

  @override
  State<WalletPage> createState() => _WalletPageState();
}

class _WalletPageState extends State<WalletPage> {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Container(
          color: darkbackgroundColor,
          padding: EdgeInsets.symmetric(horizontal: 20),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.only(top: 20),
                child: Row(
                  children: [
                    Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 20)),
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
                          "Wallet",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white60,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                padding: EdgeInsets.only(left: 5),
                child: Row(
                  children: [
                    CircleAvatar(
                        radius: 32,
                        backgroundImage: AssetImage("lib/images/profile.jpeg")),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Tanya Singh",
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                        Row(children: [
                          Text(
                            "Current Balance:",
                            style: TextStyle(fontSize: 14, color: Colors.white),
                          ),
                          Text(
                            " N10,712:00",
                            style: TextStyle(fontSize: 14, color: Colors.blue),
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
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  color: darkbackgroundColor2,
                ),
                height: 120,
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    Padding(padding: EdgeInsets.only(top: 5, bottom: 10)),
                    Text(
                      "Top Up",
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Padding(
                            padding:
                                EdgeInsets.only(left: 20, right: 20, top: 40)),
                        CircleAvatar(
                          radius: 25,
                          backgroundColor: selectedBlue,
                        ),
                        Spacer(),
                        CircleAvatar(
                          radius: 25,
                          backgroundColor: selectedBlue,
                        ),
                        Spacer(),
                        CircleAvatar(
                          radius: 25,
                          backgroundColor: selectedBlue,
                        ),
                        Spacer(),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Transaction History",
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 50,
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.symmetric(horizontal: 20),
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(2))),
                  color: darkbackgroundColor2,
                ),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 3),
                        ),
                        Text(
                          "Delievery Fee",
                          style: TextStyle(fontSize: 16, color: Colors.white),
                        ),
                        Text(
                          "July 7,2022",
                          style: TextStyle(fontSize: 13, color: Colors.white38),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 70,
                    ),
                    Text(
                      "-N3,000.00",
                      style: TextStyle(fontSize: 13, color: text2),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 50,
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.symmetric(horizontal: 20),
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(2))),
                  color: darkbackgroundColor2,
                ),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 3),
                        ),
                        Text(
                          "Delievery Fee",
                          style: TextStyle(fontSize: 16, color: Colors.white),
                        ),
                        Text(
                          "July 7,2022",
                          style: TextStyle(fontSize: 13, color: Colors.white38),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 70,
                    ),
                    Text(
                      "-N2,000.00",
                      style: TextStyle(fontSize: 13, color: text2),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 50,
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.symmetric(horizontal: 20),
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(2))),
                  color: darkbackgroundColor2,
                ),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 3),
                        ),
                        Text(
                          "Top up",
                          style: TextStyle(fontSize: 16, color: Colors.white),
                        ),
                        Text(
                          "July 7,2022",
                          style: TextStyle(fontSize: 13, color: Colors.white38),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 70,
                    ),
                    Text(
                      "N9,000.00",
                      style: TextStyle(fontSize: 13, color: text1),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 50,
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.symmetric(horizontal: 20),
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(2))),
                  color: darkbackgroundColor2,
                ),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 3),
                        ),
                        Text(
                          "Delievery Fee",
                          style: TextStyle(fontSize: 16, color: Colors.white),
                        ),
                        Text(
                          "July 7,2022",
                          style: TextStyle(fontSize: 13, color: Colors.white38),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 70,
                    ),
                    Text(
                      "-N3,000.00",
                      style: TextStyle(fontSize: 13, color: text2),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 50,
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.symmetric(horizontal: 20),
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(2))),
                  color: darkbackgroundColor2,
                ),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 3),
                        ),
                        Text(
                          "Top up",
                          style: TextStyle(fontSize: 16, color: Colors.white),
                        ),
                        Text(
                          "July 7,2022",
                          style: TextStyle(fontSize: 13, color: Colors.white38),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 100,
                    ),
                    Text(
                      "N5,000.00",
                      style: TextStyle(fontSize: 13, color: text1),
                    ),
                  ],
                ),
              )
            ],
          ),
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
                  color: selectedBlue),
              Text(
                "Wallet",
                style: TextStyle(fontSize: 12, color: selectedBlue),
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
                    Navigator.pushNamed(context, MyRoutes.ProfilePageRouter);
                  },
                  icon: Icon(Icons.person),
                  color: Color.fromARGB(255, 225, 220, 220)),
              Text(
                "Profile",
                style: TextStyle(fontSize: 12, color: Colors.white),
              )
            ])),
          ],
        ),
      ),
    );
  }
}
