import 'package:flutter/material.dart';
import 'package:task1/utils/global.dart';
import 'package:task1/widgets/tracktile.dart';

class Track extends StatefulWidget {
  const Track({super.key});

  @override
  State<Track> createState() => _TrackState();
}

class _TrackState extends State<Track> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkbackgroundcolor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image(
              image: AssetImage("assets/images/mapdark.png"),
            ),
            SizedBox(
              height: 35,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "    Tracking Number",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Row(
                children: [
                  SizedBox(
                    width: 9,
                    height: 10,
                  ),
                  Image(
                    image: AssetImage("assets/images/symbol.png"),
                    height: 40,
                    width: 40,
                  ),
                  SizedBox(
                    width: 5,
                    height: 10,
                  ),
                  Text(
                    "R-7458-4567-4434-5854",
                    style: TextStyle(
                        color: darktextcolour,
                        fontSize: 17,
                        fontWeight: FontWeight.w500),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 13,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Row(
                children: [
                  SizedBox(
                    width: 21,
                    height: 10,
                  ),
                  Text(
                    "Package Status",
                    style: TextStyle(
                        color: Color(0xffA7A7A7),
                        fontSize: 15,
                        fontWeight: FontWeight.w500),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 13,
            ),
            track_widget(
                boldtext: "Courier Requested",
                normaltext: "July 7 2022  08:00am",
                icon: Icons.check_box,
                boldcolor: Color(0xffA7A7A7),
                normalcolor: Color(0xffEC8000)),
            track_widget(
                boldtext: "Package ready for delivery",
                normaltext: "July 7 2022  08:30am",
                icon: Icons.check_box,
                boldcolor: Color(0xffA7A7A7),
                normalcolor: Color(0xffEC8000)),
            track_widget(
                boldtext: "Package in transit",
                normaltext: "July 7 2022  10:30am",
                icon: Icons.check_box_outline_blank,
                boldcolor: darktextcolour,
                normalcolor: Color(0xffEC8000)),
            track_widget(
                boldtext: "Package delivered",
                normaltext: "July 7 2022  10:30am",
                icon: Icons.check_box_outline_blank,
                boldcolor: Color(0xffA7A7A7),
                normalcolor: Color(0xffA7A7A7)),
            SizedBox(
              height: 29,
            ),
            Container(
              alignment: Alignment.center,
              height: 42,
              width: 340,
              decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5))),
                color: darktextcolour,
              ),
              child: Text(
                "View Package Info",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
