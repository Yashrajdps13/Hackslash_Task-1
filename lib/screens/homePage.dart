import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hackslash_task_1/utils/colors.dart';

class homePage extends StatelessWidget {
  const homePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.symmetric(vertical: 30, horizontal: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                decoration: InputDecoration(
                    fillColor: lightBackgroundColor,
                    filled: true,
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 1, horizontal: 13),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(
                          color: lightBackgroundColor,
                        )),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(
                          color: lightBackgroundColor,
                        )),
                    focusColor: lightBackgroundColor,
                    hintText: "Search Services",
                    hintStyle: TextStyle(fontSize: 13, color: Colors.white70)),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Hello Ken",
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                        Text("We trust you are having a great time"),
                      ],
                    ),
                    Spacer(),
                    Icon(Icons.notifications_none_outlined)
                  ],
                ),
                width: MediaQuery.of(context).size.width,
                decoration: const ShapeDecoration(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  color: Color(0xff001B3B),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Text(
                    "Special for you",
                    style: TextStyle(color: Colors.orange),
                  ),
                  Spacer(),
                  Icon(
                    Icons.arrow_forward,
                    color: Colors.orange,
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Stack(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.orange),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8)),
                              image: DecorationImage(
                                  image: AssetImage('assets/images/1.png'),
                                  scale: 1,
                                  fit: BoxFit.cover),
                            ),
                          ),
                          Align(
                            child: Text(" Tech Meetup \n Coming Soon"),
                            alignment: Alignment.centerLeft,
                          ),
                          Align(
                            child: Text(
                              "www.techmeetup    ",
                              style: TextStyle(fontSize: 8),
                            ),
                            alignment: Alignment.bottomRight,
                          ),
                        ],
                      ),
                      height: 80,
                      width: 200,
                      decoration: const ShapeDecoration(
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      child: Stack(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.orange),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8)),
                              image: DecorationImage(
                                  image: AssetImage('assets/images/2.png'),
                                  scale: 1,
                                  fit: BoxFit.cover),
                            ),
                          ),
                          Align(
                            child: Container(
                              child: Text("Love Revolution"),
                              padding: EdgeInsets.all(10),
                              decoration: const ShapeDecoration(
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10))),
                                color: Colors.orange,
                              ),
                            ),
                            alignment: Alignment.center,
                          ),
                        ],
                      ),
                      height: 80,
                      width: 200,
                      decoration: const ShapeDecoration(
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      child: Stack(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.orange),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8)),
                              image: DecorationImage(
                                  image: AssetImage('assets/images/3.png'),
                                  scale: 1,
                                  fit: BoxFit.cover),
                            ),
                          ),
                        ],
                      ),
                      height: 80,
                      width: 200,
                      decoration: const ShapeDecoration(
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      child: Stack(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.orange),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8)),
                              image: DecorationImage(
                                  image: AssetImage('assets/images/4.png'),
                                  scale: 1,
                                  fit: BoxFit.cover),
                            ),
                          ),
                          Align(
                            child: Text("The                         Genius"),
                            alignment: Alignment.center,
                          ),
                        ],
                      ),
                      height: 80,
                      width: 200,
                      decoration: const ShapeDecoration(
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      child: Stack(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.orange),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8)),
                              image: DecorationImage(
                                  image: AssetImage('assets/images/5.png'),
                                  scale: 1,
                                  fit: BoxFit.cover),
                            ),
                          ),
                          Align(
                            child: Text(
                              "Cooked Up",
                              style: TextStyle(color: Colors.deepOrange),
                            ),
                            alignment: Alignment.center,
                          ),
                        ],
                      ),
                      height: 80,
                      width: 200,
                      decoration: const ShapeDecoration(
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "What would you like to do",
                style: TextStyle(
                    color: primaryColor,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 30,
              ),
              Expanded(
                child: GridView.count(
                  primary: false,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  crossAxisCount: 2,
                  childAspectRatio: 1 / 1,
                  children: [
                    //InkWell to have a future option of clicking and taking the user to the required page
                    InkWell(
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 15,
                            ),
                            Icon(
                              Icons.support_agent,
                              size: 50,
                              color: primaryColor,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Customer Care",
                              style: TextStyle(
                                  color: primaryColor,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Our customer care service line is available from 8 -9pm week days and 9 - 5 weekends - tap to call us today",
                              style: TextStyle(fontSize: 8),
                            ),
                          ],
                        ),
                        padding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                        decoration: const ShapeDecoration(
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            color: blueColorNew),
                      ),
                    ),
                    InkWell(
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 15,
                            ),
                            Icon(
                              Icons.backpack,
                              size: 50,
                              color: primaryColor,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Send a package",
                              style: TextStyle(
                                  color: primaryColor,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Request for a driver to pick up or deliver your package for you",
                              style: TextStyle(fontSize: 8),
                            ),
                          ],
                        ),
                        padding:
                        EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                        decoration: const ShapeDecoration(
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                            color: blueColorNew),
                      ),
                    ),
                    InkWell(
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 15,
                            ),
                            Icon(
                              Icons.wallet,
                              size: 50,
                              color: primaryColor,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Fund your wallet",
                              style: TextStyle(
                                  color: primaryColor,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "To fund your wallet is as easy as ABC, make use of our fast technology and top-up your wallet today",
                              style: TextStyle(fontSize: 8),
                            ),
                          ],
                        ),
                        padding:
                        EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                        decoration: const ShapeDecoration(
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                            color: blueColorNew),
                      ),
                    ),
                    InkWell(
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 15,
                            ),
                            Icon(
                              Icons.drive_eta_rounded,
                              size: 50,
                              color: primaryColor,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Book a rider",
                              style: TextStyle(
                                  color: primaryColor,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Search for available rider within your area",
                              style: TextStyle(fontSize: 8),
                            ),
                          ],
                        ),
                        padding:
                        EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                        decoration: const ShapeDecoration(
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                            color: blueColorNew),
                      ),
                    ),
                    InkWell(
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 15,
                            ),
                            Icon(
                              Icons.account_circle_outlined,
                              size: 50,
                              color: primaryColor,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Enroll as a rider",
                              style: TextStyle(
                                  color: primaryColor,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "A chance for you to earn as you drive",
                              style: TextStyle(fontSize: 8),
                            ),
                          ],
                        ),
                        padding:
                        EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                        decoration: const ShapeDecoration(
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                            color: blueColorNew),
                      ),
                    ),
                    InkWell(
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 15,
                            ),
                            Icon(
                              Icons.share,
                              size: 50,
                              color: primaryColor,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Refer and Earn",
                              style: TextStyle(
                                  color: primaryColor,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Refer a friend to our platform and earn 50% off on next ride",
                              style: TextStyle(fontSize: 8),
                            ),
                          ],
                        ),
                        padding:
                        EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                        decoration: const ShapeDecoration(
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                            color: blueColorNew),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
