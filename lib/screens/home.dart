import 'package:flutter/material.dart';
import 'package:task1/utils/global.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: darkbackgroundcolor,
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 24),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            color: darkbackgroundcolor,
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
                        color: boxcolour),
                    height: MediaQuery.of(context).size.height * 0.04,
                    width: MediaQuery.of(context).size.width * 0.875,
                    child: TextField(
                      cursorColor: Colors.white,
                      style: TextStyle(fontSize: 13, color: Colors.white),
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(bottom: 13, left: 10),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                color: boxcolour,
                              )),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                color: boxcolour,
                              )),
                          hintText: "Search",
                          hintStyle:
                              TextStyle(fontSize: 13, color: searchcolour)),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.028,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.1,
                    decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(8))),
                        color: boxcolour),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.046,
                  ),
                  Text(
                    "Special for you",
                    style: TextStyle(
                        fontSize: MediaQuery.of(context).size.height * 0.019,
                        color: specialtextcolour),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.00829,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.0758,
                    decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(8))),
                        color: boxcolour),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.0343,
                  ),
                  Text(
                    "What would you like to do",
                    style: TextStyle(
                        fontSize: MediaQuery.of(context).size.height * 0.019,
                        color: darktextcolour),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.0142,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.188,
                    decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(8))),
                        color: boxcolour),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.0284,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.188,
                    decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(8))),
                        color: boxcolour),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.0284,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.188,
                    decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(8))),
                        color: boxcolour),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.11,
                  )
                ],
              ),
            ),
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
                      Container(
                        child: Column(children: [
                          Container(
                            color: darktextcolour,
                            height: 3,
                            width: 30,
                          ),
                          SizedBox(
                            height: 8,
                            width: 30,
                          ),
                          Icon(Icons.home, color: darktextcolour),
                          Text(
                            "Home",
                            style:
                                TextStyle(fontSize: 15, color: darktextcolour),
                          )
                        ]),
                      ),
                      Expanded(child: SizedBox(), flex: 1),
                      Container(
                        child: Column(children: [
                          SizedBox(
                            height: 11,
                            width: 30,
                          ),
                          Icon(Icons.wallet, color: Colors.white),
                          Text(
                            "Wallet",
                            style: TextStyle(fontSize: 15, color: Colors.white),
                          )
                        ]),
                      ),
                      Expanded(child: SizedBox(), flex: 1),
                      Container(
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
                      Expanded(child: SizedBox(), flex: 1),
                      Container(
                        child: Column(children: [
                          SizedBox(
                            height: 11,
                            width: 30,
                          ),
                          Icon(Icons.person_rounded, color: Colors.white),
                          Text(
                            "Profile",
                            style: TextStyle(fontSize: 15, color: Colors.white),
                          )
                        ]),
                      ),
                    ],
                  ),
                )),
          ),
        ));
  }
}
