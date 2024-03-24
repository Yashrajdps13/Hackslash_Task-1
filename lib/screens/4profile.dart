import 'package:flutter/material.dart';
import 'package:task1/utils/global.dart';
import 'package:task1/utils/routes.dart';

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
            Row(
              children: [
                CircleAvatar(
                  radius: 48,
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
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Enable Dark Mode",
                  style: TextStyle(
                      fontSize: 18,
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
              height: 40,
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        color: darkbackgroundcolor,
        child: BottomAppBar(
          elevation: 0,
          color: Colors.transparent,
          child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.0678,
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.only(left: 24, right: 24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () =>
                          (Navigator.of(context).pushNamed(MyRoutes.homeRoute)),
                      child: Container(
                        child: Column(children: [
                          SizedBox(
                            height: 8,
                            width: 30,
                          ),
                          Icon(Icons.home, color: Colors.white),
                          Text(
                            "Home",
                            style: TextStyle(fontSize: 15, color: Colors.white),
                          )
                        ]),
                      ),
                    ),
                    Expanded(child: SizedBox(), flex: 1),
                    InkWell(
                      onTap: () => (Navigator.of(context)
                          .pushNamed(MyRoutes.walletRoute)),
                      child: Container(
                        child: Column(children: [
                          SizedBox(
                            height: 5,
                            width: 30,
                          ),
                          Icon(Icons.wallet, color: Colors.white),
                          Text(
                            "Wallet",
                            style: TextStyle(fontSize: 15, color: Colors.white),
                          )
                        ]),
                      ),
                    ),
                    Expanded(child: SizedBox(), flex: 1),
                    InkWell(
                      onTap: () => (Navigator.of(context)
                          .pushNamed(MyRoutes.trackRoute)),
                      child: Container(
                        child: Column(children: [
                          SizedBox(
                            height: 11,
                            width: 30,
                          ),
                          Icon(Icons.track_changes, color: Colors.white),
                          Text(
                            "Track",
                            style: TextStyle(fontSize: 15, color: Colors.white),
                          )
                        ]),
                      ),
                    ),
                    Expanded(child: SizedBox(), flex: 1),
                    InkWell(
                      onTap: () => (Navigator.of(context)
                          .pushNamed(MyRoutes.profileRoute)),
                      child: Container(
                        child: Column(children: [
                          Container(
                            color: darktextcolour,
                            height: 3,
                            width: 30,
                          ),
                          SizedBox(
                            height: 5,
                            width: 30,
                          ),
                          Icon(Icons.person_rounded, color: darktextcolour),
                          Text(
                            "Profile",
                            style:
                                TextStyle(fontSize: 15, color: darktextcolour),
                          )
                        ]),
                      ),
                    ),
                  ],
                ),
              )),
        ),
      ),
    );
  }
}
