import 'package:flutter/material.dart';
import 'package:hackslashtask1/utils/colors.dart';
import 'package:hackslashtask1/utils/global.dart';
import 'package:hackslashtask1/utils/routes.dart';

class TrackPage extends StatelessWidget {
  const TrackPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Container(
          color: darkbackgroundColor,
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 3 / 8,
                width: MediaQuery.of(context).size.width,
                child: Image(
                  image: AssetImage("lib/images/mapd.jpeg"),
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                color: darkbackgroundColor,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Tracking Number",
                      style: TextStyle(
                          fontSize: 17,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Icon(Icons.location_city, color: Colors.white),
                        Text("  R-7453-7654-8902",
                            style:
                                TextStyle(fontSize: 17, color: selectedBlue)),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text("Package Status",
                        style: TextStyle(fontSize: 16, color: Colors.white60)),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.check_box,
                          color: selectedBlue,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "  Courier requested",
                              style: TextStyle(
                                  fontSize: 14, color: Colors.white60),
                            ),
                            Text(
                              "  March 26 2024 08:00am ",
                              style: TextStyle(fontSize: 13, color: text3),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 11,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.check_box,
                          color: selectedBlue,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "  Courier requested",
                              style: TextStyle(
                                  fontSize: 14, color: Colors.white60),
                            ),
                            Text(
                              "  March 26 2024 08:00am ",
                              style: TextStyle(fontSize: 13, color: text3),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 11,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.square_outlined,
                          color: selectedBlue,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "  Courier requested",
                              style: TextStyle(
                                  fontSize: 14, color: Colors.white60),
                            ),
                            Text(
                              "  March 26 2024 08:00am ",
                              style: TextStyle(fontSize: 13, color: text3),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 11,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.square_outlined,
                          color: selectedBlue,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "  Courier requested",
                              style: TextStyle(
                                  fontSize: 14, color: Colors.white54),
                            ),
                            Text(
                              "  March 26 2024 08:00am ",
                              style: TextStyle(fontSize: 13, color: text3),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    InkWell(
                      onTap: () => {},
                      child: Container(
                        alignment: Alignment.center,
                        height: 50,
                        width: double.infinity,
                        decoration: ShapeDecoration(
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5))),
                          color: selectedBlue,
                        ),
                        child: Text(
                          "View Package Info",
                          style: TextStyle(
                              fontSize: 17,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
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
                      color: selectedBlue),
                  Text(
                    "Track",
                    style: TextStyle(fontSize: 12, color: selectedBlue),
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
