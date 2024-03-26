import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<MyApp> createState() => MyAppState();
}

bool _iconBool = false;
IconData _iconLight = Icons.toggle_off;
IconData _iconDark = Icons.toggle_on;
ImageProvider _darkmap = AssetImage("assets/Frame 81.png");
ImageProvider _lightmap = AssetImage("assets/Framelight.png");

ThemeData _lightTheme = ThemeData(
  primaryColor: Color.fromARGB(255, 0, 0, 0),
  brightness: Brightness.light,
);
ThemeData _darkTheme = ThemeData(
  brightness: Brightness.dark,
  primaryColor: Color.fromARGB(255, 255, 253, 253),
);

class MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Namer App',
      theme: _iconBool ? _darkTheme : _lightTheme,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: _iconBool ? _darkTheme : _lightTheme,
        home: Scaffold(
          bottomNavigationBar: Container(
            height: 56,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MyHomePage()),
                    );
                  },
                  child: Container(
                    width: 60,
                    decoration: BoxDecoration(
                      border: Border(
                        top: BorderSide(
                          color: Color.fromARGB(255, 78, 13, 255),
                          width: 5.0, // You can adjust the width as needed
                        ),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.home_rounded,
                          color: Color.fromARGB(255, 26, 54, 213),
                          size: 27,
                        ),
                        Text(
                          "Home",
                          style: TextStyle(
                              color: Color.fromARGB(255, 31, 90, 219)),
                        ),
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Wallet()),
                      );
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.wallet,
                          size: 32,
                        ),
                        Text(
                          "Wallet",
                          style: TextStyle(
                            color: _iconBool
                                ? _darkTheme.primaryColor
                                : _lightTheme.primaryColor,
                          ),
                        ),
                      ],
                    )),
                GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Track()),
                      );
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.directions_car_filled,
                          size: 30,
                        ),
                        Text(
                          "Track",
                          style: TextStyle(
                            color: _iconBool
                                ? _darkTheme.primaryColor
                                : _lightTheme.primaryColor,
                          ),
                        ),
                      ],
                    )),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Profilepage()),
                        );
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: Color.fromARGB(255, 255, 255, 255)),
                            borderRadius: BorderRadius.circular(20)),
                        child: Icon(
                          Icons.person,
                          size: 27,
                        ),
                      ),
                    ),
                    Text(
                      "Profile",
                      style: TextStyle(
                        color: _iconBool
                            ? _darkTheme.primaryColor
                            : _lightTheme.primaryColor,
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          body: Container(
            padding: EdgeInsets.all(25),
            width: 393,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 30),
                  height: 50,
                  width: 350,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Color.fromARGB(20, 0, 27, 59),
                  ),
                  child: Container(
                    padding: EdgeInsets.all(10),
                    child: Row(
                      children: [
                        Text(
                          "Search Services",
                          style: TextStyle(
                              color: Color.fromARGB(255, 136, 133, 133),
                              fontSize: 18),
                        ),
                        Spacer(),
                        Icon(
                          Icons.search_outlined,
                          color: Color.fromARGB(255, 136, 133, 133),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Image(
                  image: AssetImage('assets/Frame 44.png'),
                ),
                SizedBox(height: 10),
                Container(
                  margin: EdgeInsets.only(bottom: 5),
                  child: Row(
                    children: [
                      Text(
                        "Special for you",
                        style: TextStyle(
                            color: Color.fromARGB(255, 236, 128, 0),
                            fontSize: 14),
                      ),
                      Spacer(),
                      Container(
                        height: 18,
                        width: 16,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            border: Border.all(
                                color: Color.fromARGB(255, 236, 128, 0))),
                        child: Icon(
                          Icons.arrow_forward_ios_rounded,
                          color: Color.fromARGB(255, 236, 128, 0),
                          size: 13,
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Image(
                      image: AssetImage('assets/Frame 50.png'),
                      height: 76,
                      width: 172,
                    ),
                    Container(
                      height: 76,
                      padding: EdgeInsets.only(bottom: 3),
                      child: Image(
                        image: AssetImage('assets/Frame 51.png'),
                        height: 75,
                        width: 170,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Text("What would you like to do",
                    style: TextStyle(
                        color: Color.fromARGB(255, 5, 96, 250),
                        fontSize: 15.5)),
                Row(
                  children: [
                    Container(
                      width: 168,
                      height: 160,
                      padding: EdgeInsets.only(
                          left: 10, right: 10, top: 15, bottom: 25),
                      margin: EdgeInsets.only(top: 14),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color.fromARGB(40, 111, 111, 111),
                      ),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image(
                              image: AssetImage('assets/Group.png'),
                              height: 50,
                              width: 50,
                            ),
                            Text(
                              "Customer Care",
                              style: TextStyle(
                                  fontSize: 17,
                                  color: Color.fromARGB(255, 5, 96, 250)),
                            ),
                            Text(
                              'Our customer service care line is active from 8-9pm on weekdays and 9-5 weekends-tap to call us today',
                              style: TextStyle(
                                color: _iconBool
                                    ? _darkTheme.primaryColor
                                    : _lightTheme.primaryColor,
                                fontSize: 8.6,
                              ),
                            ),
                          ]),
                    ),
                    Spacer(),
                    Container(
                      padding: EdgeInsets.only(
                          left: 10, right: 10, top: 15, bottom: 25),
                      width: 168,
                      height: 160,
                      margin: EdgeInsets.only(top: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color.fromARGB(40, 111, 111, 111),
                      ),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image(
                              image: AssetImage('assets/Vector (2).png'),
                            ),
                            Text(
                              "Send a Package",
                              style: TextStyle(
                                fontSize: 17,
                                color: Color.fromARGB(255, 5, 96, 250),
                              ),
                            ),
                            Text(
                              'Request for a driver to pickup or deliver your package for',
                              style: TextStyle(
                                color: _iconBool
                                    ? _darkTheme.primaryColor
                                    : _lightTheme.primaryColor,
                                fontSize: 10.5,
                              ),
                            ),
                          ]),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      width: 168,
                      height: 160,
                      padding: EdgeInsets.only(
                          left: 10, right: 10, top: 15, bottom: 35),
                      margin: EdgeInsets.only(top: 15),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color.fromARGB(40, 111, 111, 111),
                      ),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image(
                              image: AssetImage(
                                  'assets/healthicons_call-centre.png'),
                              height: 47,
                            ),
                            Text(
                              "Fund your wallet",
                              style: TextStyle(
                                  fontSize: 17,
                                  color: Color.fromARGB(255, 5, 96, 250)),
                            ),
                            Text(
                              'To fund your wallet is aseasy as ABC, make use of our fast technology and top-up your wallet today',
                              style: TextStyle(
                                color: _iconBool
                                    ? _darkTheme.primaryColor
                                    : _lightTheme.primaryColor,
                                fontSize: 8.4,
                              ),
                            ),
                          ]),
                    ),
                    Spacer(),
                    Container(
                      padding: EdgeInsets.only(
                          left: 10, right: 10, top: 20, bottom: 35),
                      width: 168,
                      height: 160,
                      margin: EdgeInsets.only(top: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color.fromARGB(255, 5, 96, 250),
                      ),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image(
                              image: AssetImage('assets/Vector (3).png'),
                            ),
                            Text(
                              "Book a rider",
                              style: TextStyle(
                                  fontSize: 17,
                                  color: Color.fromARGB(255, 255, 255, 255)),
                            ),
                            Text(
                              'Search for availabe rider within your area',
                              style: TextStyle(
                                fontSize: 10.5,
                              ),
                            ),
                          ]),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}

class Profilepage extends StatefulWidget {
  const Profilepage({super.key});
  @override
  State<Profilepage> createState() => MypageState();
}

class MypageState extends State<Profilepage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: _iconBool ? _darkTheme : _lightTheme,
        home: Scaffold(
          bottomNavigationBar: Container(
            height: 56,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MyHomePage()),
                    );
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.home_rounded,
                        size: 27,
                      ),
                      Text(
                        "Home",
                        style: TextStyle(
                          color: _iconBool
                              ? _darkTheme.primaryColor
                              : _lightTheme.primaryColor,
                        ),
                      )
                    ],
                  ),
                ),
                GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Wallet()),
                      );
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.wallet,
                          size: 32,
                        ),
                        Text(
                          "Wallet",
                          style: TextStyle(
                            color: _iconBool
                                ? _darkTheme.primaryColor
                                : _lightTheme.primaryColor,
                          ),
                        ),
                      ],
                    )),
                GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Track()),
                      );
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.directions_car_filled_sharp,
                          size: 32,
                        ),
                        Text(
                          "Track",
                          style: TextStyle(
                            color: _iconBool
                                ? _darkTheme.primaryColor
                                : _lightTheme.primaryColor,
                          ),
                        )
                      ],
                    )),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MyHomePage()),
                    );
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Profilepage()),
                            );
                          },
                          child: Container(
                              width: 60,
                              height: 36,
                              decoration: BoxDecoration(
                                border: Border(
                                  top: BorderSide(
                                    color: Color.fromARGB(255, 78, 13, 255),
                                    width:
                                        5.0, // You can adjust the width as needed
                                  ),
                                ),
                              ),
                              child: Icon(
                                Icons.person,
                                size: 32,
                                color: Color.fromARGB(255, 78, 13, 255),
                              ))),
                      Text(
                        "Profile",
                        style:
                            TextStyle(color: Color.fromARGB(255, 78, 13, 255)),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          body: Container(
            padding: EdgeInsets.all(25),
            width: 393,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 30),
                  height: 50,
                  width: 350,
                  child: Container(
                    padding: EdgeInsets.all(5),
                    child: Row(
                      children: [
                        Container(
                          height: 18,
                          width: 16,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              border: Border.all(
                                color: Color.fromARGB(255, 136, 133, 133),
                              )),
                          child: Icon(
                            Icons.arrow_back_ios_rounded,
                            color: Color.fromARGB(255, 136, 133, 133),
                            size: 13,
                          ),
                        ),
                        SizedBox(
                          width: 300,
                          child: Text(
                            "Profile",
                            style: TextStyle(
                                color: Color.fromARGB(255, 136, 133, 133),
                                fontSize: 18),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Image(
                      image: AssetImage('assets/Frame 83.png'),
                      height: 55,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Ken Nwaeze",
                          style: TextStyle(
                            color: _iconBool
                                ? _darkTheme.primaryColor
                                : _lightTheme.primaryColor,
                            fontSize: 17,
                            fontWeight: FontWeight.w700,
                          ),
                          textAlign: TextAlign.left,
                        ),
                        Row(
                          children: [
                            Text("Current Balance:",
                                style: TextStyle(
                                    color: _iconBool
                                        ? _darkTheme.primaryColor
                                        : _lightTheme.primaryColor,
                                    fontSize: 13)),
                            Text(" N10,712:00",
                                style: TextStyle(
                                    color: Color.fromARGB(255, 5, 96, 250),
                                    fontSize: 13,
                                    fontWeight: FontWeight.w500)),
                          ],
                        )
                      ],
                    ),
                    Spacer(),
                    Image(
                      image: AssetImage('assets/Group 1.png'),
                      height: 20,
                      fit: BoxFit.fill,
                      color: Colors.grey.shade500,
                    ),
                  ],
                ),
                SizedBox(height: 10),
                SizedBox(
                  width: 350,
                  child: Row(
                    children: [
                      Text('Enable dark mode',
                          style: TextStyle(
                              color: _iconBool
                                  ? _darkTheme.primaryColor
                                  : _lightTheme.primaryColor,
                              fontSize: 17.5,
                              fontWeight: FontWeight.w500)),
                      Spacer(),
                      IconButton(
                        onPressed: () {
                          setState(() {
                            _iconBool = !_iconBool;
                          });
                        },
                        icon: Icon(
                          _iconBool ? _iconDark : _iconLight,
                          size: 40,
                          color: Color.fromARGB(255, 5, 96, 250),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 55,
                  margin: EdgeInsets.only(top: 15),
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color.fromARGB(20, 0, 27, 59)),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image(image: AssetImage('assets/profile.png')),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Edit Profile",
                              style: TextStyle(
                                  color: _iconBool
                                      ? _darkTheme.primaryColor
                                      : _lightTheme.primaryColor,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w500)),
                          Text("name, phone number, address, emali,...",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 148, 148, 152),
                                  fontSize: 11,
                                  fontWeight: FontWeight.w500)),
                        ],
                      ),
                      Spacer(),
                      Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: Color.fromARGB(255, 132, 132, 132),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 55,
                  margin: EdgeInsets.only(top: 10),
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color.fromARGB(20, 0, 27, 59)),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image(image: AssetImage('assets/bankstatement.png')),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Statements & Report",
                              style: TextStyle(
                                  color: _iconBool
                                      ? _darkTheme.primaryColor
                                      : _lightTheme.primaryColor,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w500)),
                          Text(
                              "Download transaction details, orders, deliveries",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 148, 148, 152),
                                  fontSize: 11,
                                  fontWeight: FontWeight.w500)),
                        ],
                      ),
                      Spacer(),
                      Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: Color.fromARGB(255, 132, 132, 132),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 56,
                  margin: EdgeInsets.only(top: 10),
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color.fromARGB(20, 0, 27, 59)),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image(image: AssetImage('assets/notification.png')),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Notification Settings",
                              style: TextStyle(
                                  color: _iconBool
                                      ? _darkTheme.primaryColor
                                      : _lightTheme.primaryColor,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w500)),
                          Text("mute, unmute, set location & tracking setting",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 148, 148, 152),
                                  fontSize: 11,
                                  fontWeight: FontWeight.w500)),
                        ],
                      ),
                      Spacer(),
                      Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: Color.fromARGB(255, 132, 132, 132),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 56,
                  margin: EdgeInsets.only(top: 10),
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color.fromARGB(20, 0, 27, 59)),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image(image: AssetImage('assets/card.png')),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Card & Bank account settings",
                              style: TextStyle(
                                  color: _iconBool
                                      ? _darkTheme.primaryColor
                                      : _lightTheme.primaryColor,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w500)),
                          Text("change cards, delete card details",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 148, 148, 152),
                                  fontSize: 11,
                                  fontWeight: FontWeight.w500)),
                        ],
                      ),
                      Spacer(),
                      Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: Color.fromARGB(255, 132, 132, 132),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 56,
                  margin: EdgeInsets.only(top: 10),
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color.fromARGB(20, 0, 27, 59)),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image(image: AssetImage('assets/Referals.png')),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Referals",
                              style: TextStyle(
                                  color: _iconBool
                                      ? _darkTheme.primaryColor
                                      : _lightTheme.primaryColor,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w500)),
                          Text("check no of friends and earn",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 148, 148, 152),
                                  fontSize: 11,
                                  fontWeight: FontWeight.w500)),
                        ],
                      ),
                      Spacer(),
                      Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: Color.fromARGB(255, 132, 132, 132),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 56,
                  margin: EdgeInsets.only(top: 10),
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color.fromARGB(20, 0, 27, 59)),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image(image: AssetImage('assets/about.png')),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("About us",
                              style: TextStyle(
                                  color: _iconBool
                                      ? _darkTheme.primaryColor
                                      : _lightTheme.primaryColor,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w500)),
                          Text("know more about us, terms and conditions",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 148, 148, 152),
                                  fontSize: 11,
                                  fontWeight: FontWeight.w500)),
                        ],
                      ),
                      Spacer(),
                      Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: Color.fromARGB(255, 132, 132, 132),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 58, //Avoid overflow problem
                  margin: EdgeInsets.only(top: 9),
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color.fromARGB(20, 0, 27, 59)),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image(image: AssetImage('assets/logout.png')),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Log Out",
                              style: TextStyle(
                                  color: _iconBool
                                      ? _darkTheme.primaryColor
                                      : _lightTheme.primaryColor,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w500)),
                        ],
                      ),
                      Spacer(),
                      Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: Color.fromARGB(255, 132, 132, 132),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }

  State<StatefulWidget> createState() {
    throw UnimplementedError();
  }
}

class Wallet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: _iconBool ? _darkTheme : _lightTheme,
        home: Scaffold(
          bottomNavigationBar: SizedBox(
            height: 56,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MyHomePage()),
                    );
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.home_rounded,
                        size: 27,
                      ),
                      Text(
                        "Home",
                        style: TextStyle(
                            color: _iconBool
                                ? _darkTheme.primaryColor
                                : _lightTheme.primaryColor),
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Wallet()),
                      );
                    },
                    child: Container(
                        width: 60,
                        decoration: BoxDecoration(
                          border: Border(
                            top: BorderSide(
                              color: Color.fromARGB(255, 78, 13, 255),
                              width: 5.0, // You can adjust the width as needed
                            ),
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(
                              image: AssetImage(
                                  'assets/healthicons_call-centre.png'),
                              height: 30,
                              color: Color.fromARGB(255, 78, 13, 255),
                            ),
                            Text(
                              "Wallet",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 74, 40, 169)),
                            ),
                          ],
                        ))),
                GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Track()),
                      );
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.directions_car_filled_sharp,
                          size: 32,
                        ),
                        Text(
                          "Track",
                          style: TextStyle(
                              color: _iconBool
                                  ? _darkTheme.primaryColor
                                  : _lightTheme.primaryColor),
                        ),
                      ],
                    )),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Profilepage()),
                        );
                      },
                      child: Icon(
                        Icons.person,
                        size: 27,
                      ),
                    ),
                    Text(
                      "Profile",
                      style: TextStyle(
                          color: _iconBool
                              ? _darkTheme.primaryColor
                              : _lightTheme.primaryColor),
                    ),
                  ],
                ),
              ],
            ),
          ),
          body: Container(
            padding: EdgeInsets.all(25),
            width: 393,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 30),
                  height: 50,
                  width: 350,
                  child: Container(
                    padding: EdgeInsets.all(5),
                    child: Row(
                      children: [
                        Container(
                          height: 18,
                          width: 16,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              border: Border.all(
                                color: Color.fromARGB(255, 136, 133, 133),
                              )),
                          child: Icon(
                            Icons.arrow_back_ios_rounded,
                            color: Color.fromARGB(255, 136, 133, 133),
                            size: 13,
                          ),
                        ),
                        SizedBox(
                          width: 300,
                          child: Text(
                            "Wallet",
                            style: TextStyle(
                                color: Color.fromARGB(255, 136, 133, 133),
                                fontSize: 18),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Image(
                      image: AssetImage('assets/Frame 83.png'),
                      height: 55,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Ken Nwaeze",
                          style: TextStyle(
                            color: _iconBool
                                ? _darkTheme.primaryColor
                                : _lightTheme.primaryColor,
                            fontSize: 17,
                            fontWeight: FontWeight.w700,
                          ),
                          textAlign: TextAlign.left,
                        ),
                        Row(
                          children: [
                            Text("Current Balance:",
                                style: TextStyle(
                                    color: _iconBool
                                        ? _darkTheme.primaryColor
                                        : _lightTheme.primaryColor,
                                    fontSize: 13)),
                            Text(" N10,712:00",
                                style: TextStyle(
                                    color: Color.fromARGB(255, 5, 96, 250),
                                    fontSize: 13,
                                    fontWeight: FontWeight.w500)),
                          ],
                        )
                      ],
                    ),
                    Spacer(),
                    Icon(
                      Icons.remove_red_eye_outlined,
                    )
                  ],
                ),
                SizedBox(height: 10),
                Container(
                  width: 350,
                  height: 100,
                  margin: EdgeInsets.only(bottom: 5),
                  padding: EdgeInsets.only(top: 6, bottom: 10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color.fromARGB(20, 0, 27, 59)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("Top Up",
                          style: TextStyle(
                            color: _iconBool
                                ? _darkTheme.primaryColor
                                : _lightTheme.primaryColor,
                            fontSize: 17,
                            fontWeight: FontWeight.w700,
                          )),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Image(image: AssetImage('assets/Frame 91.png')),
                          Image(image: AssetImage('assets/Frame 92.png')),
                          Image(image: AssetImage('assets/Frame 93.png')),
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Text("Transaction History",
                    style: TextStyle(
                        color: _iconBool
                            ? _darkTheme.primaryColor
                            : _lightTheme.primaryColor,
                        fontSize: 17.5,
                        fontWeight: FontWeight.w500)),
                Container(
                  height: 45,
                  margin: EdgeInsets.only(top: 6),
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color.fromARGB(20, 0, 27, 59)),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Delivery Fee",
                              style: TextStyle(
                                  color: _iconBool
                                      ? _darkTheme.primaryColor
                                      : _lightTheme.primaryColor,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w500)),
                          Text("July 07 2022",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 148, 148, 152),
                                  fontSize: 11,
                                  fontWeight: FontWeight.w500))
                        ],
                      ),
                      Spacer(),
                      Text("-N3,000.00",
                          style: TextStyle(
                              color: Color.fromARGB(255, 199, 1, 1),
                              fontSize: 15,
                              fontWeight: FontWeight.w500))
                    ],
                  ),
                ),
                Container(
                  height: 45,
                  margin: EdgeInsets.only(top: 10),
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color.fromARGB(20, 0, 27, 59)),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Delivery Fee",
                              style: TextStyle(
                                  color: _iconBool
                                      ? _darkTheme.primaryColor
                                      : _lightTheme.primaryColor,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w500)),
                          Text("July 07 2022",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 148, 148, 152),
                                  fontSize: 11,
                                  fontWeight: FontWeight.w500))
                        ],
                      ),
                      Spacer(),
                      Text("-N2,000.00",
                          style: TextStyle(
                              color: Color.fromARGB(255, 199, 1, 1),
                              fontSize: 15,
                              fontWeight: FontWeight.w500))
                    ],
                  ),
                ),
                Container(
                  height: 55,
                  margin: EdgeInsets.only(top: 8),
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color.fromARGB(20, 0, 27, 59),
                  ),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Delivery Fee",
                              style: TextStyle(
                                  color: _iconBool
                                      ? _darkTheme.primaryColor
                                      : _lightTheme.primaryColor,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w500)),
                          Text("July 28 2022",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 148, 148, 152),
                                  fontSize: 11,
                                  fontWeight: FontWeight.w500))
                        ],
                      ),
                      Spacer(),
                      Text("-N10,000.00",
                          style: TextStyle(
                              color: Color.fromARGB(255, 53, 179, 105),
                              fontSize: 15,
                              fontWeight: FontWeight.w500))
                    ],
                  ),
                ),
                Container(
                  height: 55,
                  margin: EdgeInsets.only(top: 8),
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color.fromARGB(20, 0, 27, 59),
                  ),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Delivery Fee",
                              style: TextStyle(
                                  color: _iconBool
                                      ? _darkTheme.primaryColor
                                      : _lightTheme.primaryColor,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w500)),
                          Text("July 25 2022",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 148, 148, 152),
                                  fontSize: 11,
                                  fontWeight: FontWeight.w500))
                        ],
                      ),
                      Spacer(),
                      Text("-N2,000.00",
                          style: TextStyle(
                              color: Color.fromARGB(255, 199, 1, 1),
                              fontSize: 15,
                              fontWeight: FontWeight.w500))
                    ],
                  ),
                ),
                Container(
                  height: 55,
                  margin: EdgeInsets.only(top: 8),
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color.fromARGB(20, 0, 27, 59),
                  ),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Delivery Fee",
                              style: TextStyle(
                                  color: _iconBool
                                      ? _darkTheme.primaryColor
                                      : _lightTheme.primaryColor,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w500)),
                          Text("July 25 2022",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 148, 148, 152),
                                  fontSize: 11,
                                  fontWeight: FontWeight.w500))
                        ],
                      ),
                      Spacer(),
                      Text("-N4,000.00",
                          style: TextStyle(
                              color: Color.fromARGB(255, 53, 179, 105),
                              fontSize: 15,
                              fontWeight: FontWeight.w500))
                    ],
                  ),
                ),
                Container(
                  height: 55,
                  margin: EdgeInsets.only(top: 8),
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color.fromARGB(20, 0, 27, 59),
                  ),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Delivery Fee",
                              style: TextStyle(
                                  color: _iconBool
                                      ? _darkTheme.primaryColor
                                      : _lightTheme.primaryColor,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w500)),
                          Text("July 17 2022",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 148, 148, 152),
                                  fontSize: 11,
                                  fontWeight: FontWeight.w500))
                        ],
                      ),
                      Spacer(),
                      Text("-N5,000.00",
                          style: TextStyle(
                              color: Color.fromARGB(255, 199, 1, 1),
                              fontSize: 15,
                              fontWeight: FontWeight.w500))
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}

class Track extends StatefulWidget {
  @override
  // ignore: library_private_types_in_public_api
  _TrackeState createState() => _TrackeState();
}

class _TrackeState extends State<Track> {
  bool isChecked = true;
  bool isChecked1 = true;
  bool isChecked2 = false;
  bool isChecked3 = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: _iconBool ? _darkTheme : _lightTheme,
        home: Scaffold(
          bottomNavigationBar: Container(
            height: 56,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MyHomePage()),
                    );
                  },
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.home_rounded,
                          size: 27,
                        ),
                        Text(
                          "Home",
                          style: TextStyle(
                            color: _iconBool
                                ? _darkTheme.primaryColor
                                : _lightTheme.primaryColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Wallet()),
                      );
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.wallet,
                          size: 32,
                        ),
                        Text(
                          "Wallet",
                          style: TextStyle(
                            color: _iconBool
                                ? _darkTheme.primaryColor
                                : _lightTheme.primaryColor,
                          ),
                        ),
                      ],
                    )),
                GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Track()),
                      );
                    },
                    child: Container(
                        width: 60,
                        decoration: BoxDecoration(
                          border: Border(
                            top: BorderSide(
                              color: Color.fromARGB(255, 78, 13, 255),
                              width: 5.0, // You can adjust the width as needed
                            ),
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.directions_car,
                              size: 30,
                              color: Color.fromARGB(255, 78, 13, 255),
                            ),
                            Text(
                              "Track",
                              style: TextStyle(),
                            ),
                          ],
                        ))),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Profilepage()),
                        );
                      },
                      child: Icon(
                        Icons.person,
                        size: 27,
                      ),
                    ),
                    Text(
                      "Profile",
                      style: TextStyle(
                        color: _iconBool
                            ? _darkTheme.primaryColor
                            : _lightTheme.primaryColor,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          body: Container(
            child: Column(
              children: [
                Image(
                  image: (_iconBool ? _darkmap : _lightmap),
                  fit: BoxFit.fill,
                  width: 400,
                  height: 250,
                ),
                Container(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Tracking Number',
                        style: TextStyle(
                          fontSize: 19.5,
                          fontWeight: FontWeight.w600,
                          color: _iconBool
                              ? _darkTheme.primaryColor
                              : _lightTheme.primaryColor,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Image(
                            image: AssetImage("assets/sun.png"),
                            height: 20,
                            fit: BoxFit.fill,
                          ),
                          Text(
                            '  R-7458-4567-4434-5854',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w800,
                                color: Color.fromARGB(255, 26, 54, 213)),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Package Status',
                        style: TextStyle(fontSize: 18, color: Colors.grey),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        height: 290,
                        child: Column(
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Checkbox(
                                  side: BorderSide(
                                      color: Color.fromARGB(255, 26, 54, 213)),
                                  value: isChecked,
                                  onChanged: (bool? newValue) {
                                    setState(() {
                                      isChecked = newValue!;
                                    });
                                  },
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Courier requested',
                                      style: TextStyle(
                                          fontSize: 16,
                                          color: _iconBool
                                              ? _darkTheme.primaryColor
                                              : _lightTheme.primaryColor),
                                    ),
                                    Text(
                                      'July 7 2022 08:00am',
                                      style: TextStyle(
                                          fontSize: 16, color: Colors.red),
                                    ),
                                  ],
                                )
                              ],
                            ),
                            Spacer(),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Checkbox(
                                  side: BorderSide(
                                      color: Color.fromARGB(255, 26, 54, 213)),
                                  value: isChecked1,
                                  onChanged: (bool? newValue) {
                                    setState(() {
                                      isChecked1 = newValue!;
                                    });
                                  },
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Package ready for delivery',
                                      style: TextStyle(
                                        color: _iconBool
                                            ? _darkTheme.primaryColor
                                            : _lightTheme.primaryColor,
                                        fontSize: 16,
                                      ),
                                    ),
                                    Text(
                                      'July 7 2022 08:30am',
                                      style: TextStyle(
                                          fontSize: 16, color: Colors.red),
                                    ),
                                  ],
                                )
                              ],
                            ),
                            Spacer(),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Checkbox(
                                  side: BorderSide(
                                      color: Color.fromARGB(255, 26, 54, 213)),
                                  value: isChecked2,
                                  onChanged: (bool? newValue) {
                                    setState(() {
                                      isChecked2 = newValue!;
                                    });
                                  },
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Package in transit',
                                      style: TextStyle(
                                          fontSize: 16,
                                          color:
                                              Color.fromARGB(255, 26, 54, 213)),
                                    ),
                                    Text(
                                      'July 7 2022 08:00am',
                                      style: TextStyle(
                                          fontSize: 16, color: Colors.red),
                                    ),
                                  ],
                                )
                              ],
                            ),
                            Spacer(),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Checkbox(
                                  side: BorderSide(
                                      color: Color.fromARGB(255, 26, 54, 213)),
                                  value: isChecked3,
                                  onChanged: (bool? newValue) {
                                    setState(() {
                                      isChecked3 = newValue!;
                                    });
                                  },
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Package delivered',
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: _iconBool
                                            ? _darkTheme.primaryColor
                                            : _lightTheme.primaryColor,
                                      ),
                                    ),
                                    Text(
                                      'July 7 2022 10:30am',
                                      style: TextStyle(
                                          fontSize: 16, color: Colors.red),
                                    ),
                                  ],
                                )
                              ],
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Container(
                                width: 330,
                                height: 47,
                                color: Colors.indigoAccent,
                                child: ElevatedButton(
                                  onPressed: () {},
                                  style: ButtonStyle(
                                    backgroundColor:
                                        MaterialStateProperty.all<Color>(
                                            Colors.indigoAccent),
                                  ),
                                  child: Text(
                                    'View Package Info',
                                    style: TextStyle(
                                        fontSize: 17,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w900),
                                  ),
                                ))
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
