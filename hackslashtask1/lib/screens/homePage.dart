import 'package:flutter/material.dart';
import 'package:hackslashtask1/utils/global.dart';
import 'package:hackslashtask1/utils/routes.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: darkbackgroundColor,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15)),
              Container(
                padding: EdgeInsets.only(left: 15, right: 10),
                height: 50,
                width: MediaQuery.of(context).size.width,
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  color: darkbackgroundColor2,
                ),
                child: Row(children: [
                  Text(
                    "Search services",
                    style: TextStyle(color: Colors.white38, fontSize: 16),
                  ),
                  SizedBox(width: 190),
                  Icon(Icons.search_outlined, color: Colors.white38)
                ]),
              ),
              SizedBox(height: 30),
              Container(
                padding: EdgeInsets.only(left: 15, right: 10),
                height: 100,
                width: MediaQuery.of(context).size.width,
                decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    color: darkbackgroundColor2),
                child: Row(
                  children: [
                    Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                              padding: EdgeInsets.symmetric(
                            horizontal: 10,
                            vertical: 15,
                          )),
                          Text(
                            "Hello Ken",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                          Text(
                            "We trust you are having a great time",
                            style: TextStyle(color: Colors.white, fontSize: 14),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 70),
                    Icon(
                      Icons.access_alarms_sharp,
                      color: Colors.white,
                    )
                  ],
                ),
              ),
              SizedBox(height: 50),
              Container(
                child: Row(children: [
                  Text(
                    "Special for you",
                    style: TextStyle(color: text2, fontSize: 15),
                  ),
                  SizedBox(
                    width: 230,
                  ),
                  Icon(
                    Icons.more_horiz_outlined,
                    color: text2,
                  )
                ]),
              ),
              Container(
                child: Row(
                  children: [
                    Container(
                      height: 100,
                      width: 230,
                      child: Image(
                          image: AssetImage("lib/images/blackimg.webp"),
                          fit: BoxFit.cover),
                      decoration: ShapeDecoration(
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)))),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 30, bottom: 30, left: 10),
                      child: Column(
                        children: [
                          Text(
                            "Tech Meetup",
                            style: TextStyle(fontSize: 15, color: Colors.white),
                          ),
                          Text(
                            "coming soon",
                            style: TextStyle(fontSize: 15, color: Colors.white),
                          ),
                          Container(
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 250,
                                ),
                                Text(
                                  "www.techmeetup",
                                  style: TextStyle(
                                      fontSize: 11, color: Colors.white),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 30),
              Text("What would you like to do",
                  style: TextStyle(fontSize: 18, color: Colors.blue)),
              SizedBox(height: 30),
              Container(
                child: Row(
                  children: [
                    Card(
                      color: darkbackgroundColor2,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      )),
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
