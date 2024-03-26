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
                height: 40,
                width: MediaQuery.of(context).size.width,
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  color: darkbackgroundColor2,
                ),
                child: Row(children: [
                  Text(
                    "Search services",
                    style: TextStyle(color: const Color.fromARGB(179, 235, 227, 227), fontSize: 13),
                  ),
                  SizedBox(width: 190),
                  Icon(Icons.search_outlined, color: const Color.fromARGB(179, 235, 227, 227))
                ]),
              ),
              SizedBox(height: 20),
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
                            "Hello Tanya",
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
                      Icons.notifications_outlined,
                      color: Colors.white,
                    )
                  ],
                ),
              ),
              SizedBox(height: 25),
              Container(
                child: Row(children: [
                  Text(
                    "Special for you",
                    style: TextStyle(color: text3, fontSize: 15),
                  ),
                  SizedBox(
                    width: 230,
                  ),
                  Icon(
                    Icons.more_horiz_outlined,
                    color: text3,
                  )
                ]),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 70,
                      width: 160,
                      decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        image: DecorationImage(
                            image: AssetImage("lib/images/blackimg.webp"),
                            fit: BoxFit.cover),
                      ),
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Padding(
                                  padding: EdgeInsets.only(top: 5, left: 5)),
                              Text(
                                "Tech Meetup",
                                style: TextStyle(
                                    fontSize: 13, color: Colors.white),
                              ),
                              Text(
                                "coming soon",
                                style: TextStyle(
                                    fontSize: 13, color: Colors.white),
                              ),
                            ],
                          ),
                          Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  "www.techmeetup",
                                  style: TextStyle(
                                      fontSize: 10, color: Colors.white),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      height: 70,
                      width: 160,
                      decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        image: DecorationImage(
                            image: AssetImage("lib/images/R.jpeg"),
                            fit: BoxFit.cover),
                      ),
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Padding(
                                  padding: EdgeInsets.only(top: 5, left: 5)),
                              Text(
                                "Tech Meetup",
                                style: TextStyle(
                                    fontSize: 13, color: Colors.white),
                              ),
                              Text(
                                "coming soon",
                                style: TextStyle(
                                    fontSize: 13, color: Colors.white),
                              ),
                            ],
                          ),
                          Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  "www.techmeetup",
                                  style: TextStyle(
                                      fontSize: 10, color: Colors.white),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 25),
              Text("What would you like to do",
                  style: TextStyle(fontSize: 18, color: Colors.blue)),
              SizedBox(height: 25),
              Container(
                child: Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(10),
                      height: 140,
                      width: 165,
                      decoration: ShapeDecoration(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          color: darkbackgroundColor2),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.headphones,
                            color: selectedBlue,
                          ),
                          Text(
                            "Customer care",
                            style: TextStyle(fontSize: 20, color: selectedBlue),
                          ),
                          Text(
                            "Our customer care services line is available from 8-9pm week days and 9-5 weekends-tap to call us today",
                            style: TextStyle(fontSize: 10, color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                    Spacer(),
                    Container(
                      padding: EdgeInsets.all(10),
                      height: 140,
                      width: 165,
                      decoration: ShapeDecoration(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          color: darkbackgroundColor2),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.headphones,
                            color: selectedBlue,
                          ),
                          Text(
                            "Customer care",
                            style: TextStyle(fontSize: 20, color: selectedBlue),
                          ),
                          Text(
                            "Our customer care services line is available from 8-9pm week days and 9-5 weekends-tap to call us today",
                            style: TextStyle(fontSize: 10, color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                child: Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(10),
                      height: 140,
                      width: 165,
                      decoration: ShapeDecoration(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          color: darkbackgroundColor2),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.headphones,
                            color: selectedBlue,
                          ),
                          Text(
                            "Customer care",
                            style: TextStyle(fontSize: 20, color: selectedBlue),
                          ),
                          Text(
                            "Our customer care services line is available from 8-9pm week days and 9-5 weekends-tap to call us today",
                            style: TextStyle(fontSize: 10, color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                    Spacer(),
                    Container(
                      padding: EdgeInsets.all(10),
                      height: 140,
                      width: 165,
                      decoration: ShapeDecoration(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          color: selectedBlue),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.headphones,
                            color: Colors.white,
                          ),
                          Text(
                            "Customer care",
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                          Text(
                            "Our customer care services line is available from 8-9pm week days and 9-5 weekends-tap to call us today",
                            style: TextStyle(fontSize: 10, color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
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
                  color: selectedBlue),
              Text(
                "Home",
                style: TextStyle(fontSize: 12, color: selectedBlue),
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
