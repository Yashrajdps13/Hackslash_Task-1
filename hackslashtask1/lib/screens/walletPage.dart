import 'package:flutter/material.dart';
import 'package:hackslashtask1/utils/global.dart';
import 'package:hackslashtask1/utils/routes.dart';

class WalletPage extends StatelessWidget {
  const WalletPage({super.key});

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
                          child: Row(children: [
                            Padding(
                                padding: EdgeInsets.symmetric(
                                    vertical: 30, horizontal: 5)),
                            SizedBox(
                              height: 20,
                            ),
                            Icon(
                              Icons.keyboard_return_rounded,
                              color: Colors.blue,
                            ),
                            SizedBox(
                              width: 100,
                            ),
                            Text(
                              "Wallet",
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.white60,
                              ),
                            ),
                          ]),
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
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        Container(
                          height: 120,
                          width: MediaQuery.of(context).size.width,
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          color: darkbackgroundColor2,
                          child: Column(
                            children: [
                              Text(
                                "Top Up",
                                style: TextStyle(
                                    fontSize: 18, color: Colors.white),
                              ),
                              Row(
                                children: [
                                  CircleAvatar(
                                    radius: 16,
                                    backgroundColor: Colors.blue,
                                    child: CircleAvatar(
                                      radius: 10
                                     ,
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ])))),
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
                        Navigator.pushNamed(
                            context, MyRoutes.ProfilePageRouter);
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
