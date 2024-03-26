import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task1/utils/global.dart';
import 'package:task1/widgets/hometile.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: dark == true ? darkbackgroundcolor : Colors.white,
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 24),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: dark == true ? darkbackgroundcolor : Colors.white,
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.0817,
                  width: MediaQuery.of(context).size.width,
                ),
                Container(
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(4))),
                    color: dark == true ? boxcolour : lightboxcolour,
                  ),
                  height: MediaQuery.of(context).size.height * 0.04,
                  width: MediaQuery.of(context).size.width * 0.875,
                  child: TextFormField(
                    cursorColor: Colors.white,
                    style: TextStyle(fontSize: 13, color: Colors.white),
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(bottom: 13, left: 10),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              color: dark == true ? boxcolour : lightboxcolour,
                            )),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              color: dark == true ? boxcolour : lightboxcolour,
                            )),
                        hintText: "Search services",
                        hintStyle:
                            TextStyle(fontSize: 13, color: searchcolour)),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.028,
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.1,
                  width: MediaQuery.of(context).size.width * 0.875,
                  decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8))),
                      color: dark == true ? boxcolour : Color(0xff0560FA)),
                  child: Row(
                    children: [
                      Expanded(child: SizedBox(), flex: 1),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Hello Ken",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white)),
                          Text("We trust you are having a great time",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontFamily: 'Roboto',
                                  color: Colors.white))
                        ],
                      ),
                      Expanded(child: SizedBox(), flex: 5),
                      Icon(Icons.notifications, color: Colors.white, size: 25),
                      Expanded(child: SizedBox(), flex: 1),
                    ],
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.046,
                ),
                Row(
                  children: [
                    Expanded(child: SizedBox(), flex: 1),
                    Text(
                      "Special for you",
                      style: TextStyle(
                          fontSize: MediaQuery.of(context).size.height * 0.019,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.bold,
                          color: specialtextcolour),
                    ),
                    Expanded(child: SizedBox(), flex: 20),
                    Icon(Icons.arrow_circle_right_outlined,
                        color: specialtextcolour, size: 15),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.00829,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height * 0.0758,
                        width: MediaQuery.of(context).size.width * 0.4256,
                        padding: EdgeInsets.all(1), // Border width
                        decoration: ShapeDecoration(
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8))),
                            color: specialtextcolour),
                        child: ClipRRect(
                          child: SizedBox.fromSize(
                            size: Size.fromRadius(8), // Image radius
                            child: Image.asset('assets/images/techmeetup.png',
                                fit: BoxFit.fitWidth),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.0758,
                        width: MediaQuery.of(context).size.width * 0.03,
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.0758,
                        width: MediaQuery.of(context).size.width * 0.4256,
                        padding: EdgeInsets.all(1), // Border width
                        decoration: ShapeDecoration(
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8))),
                            color: specialtextcolour),
                        child: ClipRRect(
                          child: SizedBox.fromSize(
                            size: Size.fromRadius(8), // Image radius
                            child: Image.asset(
                                'assets/images/loverevolution.png',
                                fit: BoxFit.fitWidth),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.0758,
                        width: MediaQuery.of(context).size.width * 0.03,
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.0758,
                        width: MediaQuery.of(context).size.width * 0.4256,
                        padding: EdgeInsets.all(1), // Border width
                        decoration: ShapeDecoration(
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8))),
                            color: specialtextcolour),
                        child: ClipRRect(
                          child: SizedBox.fromSize(
                            size: Size.fromRadius(8), // Image radius
                            child: Image.asset('assets/images/3.png',
                                fit: BoxFit.fitWidth),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.0758,
                        width: MediaQuery.of(context).size.width * 0.03,
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.0758,
                        width: MediaQuery.of(context).size.width * 0.4256,
                        padding: EdgeInsets.all(1), // Border width
                        decoration: ShapeDecoration(
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8))),
                            color: specialtextcolour),
                        child: ClipRRect(
                          child: SizedBox.fromSize(
                            size: Size.fromRadius(8), // Image radius
                            child: Image.asset('assets/images/4.png',
                                fit: BoxFit.fitWidth),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.0758,
                        width: MediaQuery.of(context).size.width * 0.03,
                      ),
                      Stack(children: <Widget>[
                        Container(
                          height: MediaQuery.of(context).size.height * 0.0758,
                          width: MediaQuery.of(context).size.width * 0.4256,
                          padding: EdgeInsets.all(1), // Border width
                          decoration: ShapeDecoration(
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(8))),
                              color: specialtextcolour),
                          child: ClipRRect(
                            child: SizedBox.fromSize(
                              size: Size.fromRadius(8), // Image radius
                              child: Image.asset('assets/images/5.png',
                                  fit: BoxFit.fitWidth),
                            ),
                          ),
                        ),
                        Center(
                            child: Text(
                          "Cooked Up",
                          style: TextStyle(color: Color(0xff630202)),
                        )),
                      ]),
                    ],
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.0343,
                ),
                Row(
                  children: [
                    Expanded(child: SizedBox(), flex: 1),
                    Text(
                      "What would you like to do",
                      style: TextStyle(
                          fontSize: MediaQuery.of(context).size.height * 0.019,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.bold,
                          color: darktextcolour),
                    ),
                    Expanded(child: SizedBox(), flex: 20),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.0142,
                ),
                Row(
                  children: [
                    home_widget(
                        boldtext: "Customer Care",
                        normaltext:
                            "Our customer care service line is available from 8 -9pm week days and 9 - 5 weekends - tap to call us today",
                        icon: Icons.support_agent,
                        boldcolor: darktextcolour,
                        normalcolor: dark == true ? Colors.white : Colors.black,
                        backcolor: dark == true ? boxcolour : lightboxcolour,
                        iconcolor: darktextcolour),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.188,
                      width: MediaQuery.of(context).size.width * 0.05,
                    ),
                    home_widget(
                        boldtext: "Send a Package",
                        normaltext:
                            "Request for a driver to pick up or deliver your package for you",
                        icon: CupertinoIcons.cube_box,
                        boldcolor: darktextcolour,
                        normalcolor: dark == true ? Colors.white : Colors.black,
                        backcolor: dark == true ? boxcolour : lightboxcolour,
                        iconcolor: darktextcolour),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.0284,
                ),
                Row(
                  children: [
                    home_widget(
                        boldtext: "Fund your wallet",
                        normaltext:
                            "To fund your wallet is as easy as ABC, make use of our fast technology and top-up your wallet today",
                        icon: Icons.wallet,
                        boldcolor: darktextcolour,
                        normalcolor: dark == true ? Colors.white : Colors.black,
                        backcolor: dark == true ? boxcolour : lightboxcolour,
                        iconcolor: darktextcolour),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.188,
                      width: MediaQuery.of(context).size.width * 0.05,
                    ),
                    home_widget(
                        boldtext: "Book a rider",
                        normaltext:
                            "Search for available rider within your area",
                        icon: Icons.directions_car,
                        boldcolor: Colors.white,
                        normalcolor: Colors.white,
                        backcolor: darktextcolour,
                        iconcolor: Colors.white),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.0284,
                ),
                Row(
                  children: [
                    home_widget(
                        boldtext: "Enroll as a rider",
                        normaltext:
                            "A chance for you to earn as you become one of our delivery agents, enroll and get the necessary trainings from our crew to get started.",
                        icon: Icons.add,
                        boldcolor: darktextcolour,
                        normalcolor: dark == true ? Colors.white : Colors.black,
                        backcolor: dark == true ? boxcolour : lightboxcolour,
                        iconcolor: darktextcolour),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.188,
                      width: MediaQuery.of(context).size.width * 0.05,
                    ),
                    home_widget(
                        boldtext: "Refer and Earn",
                        normaltext:
                            "Refer a friend to our platform and stand the chance of winning lots of goodies plus free delivery",
                        icon: Icons.money,
                        boldcolor: darktextcolour,
                        normalcolor: dark == true ? Colors.white : Colors.black,
                        backcolor: dark == true ? boxcolour : lightboxcolour,
                        iconcolor: darktextcolour),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.11,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
