import 'package:app/utilities/global.dart';
import 'package:app/widgets/track_widget.dart';
import 'package:flutter/material.dart';

class tracking extends StatefulWidget {
  const tracking({super.key});

  @override
  State<tracking> createState() => _trackingState();
}

class _trackingState extends State<tracking> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SingleChildScrollView(
        child: Container(
          color: backgroundcolor,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                alignment: Alignment.center,
                child: Image.asset("assets/images/map.png"),
              ),
              SizedBox(height: 20,),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 18,vertical: 20),
                child: Text("Tracking Number",style: TextStyle(color: Colors.white,fontSize: 20),),
              ),
              Container(
                child: Row(
                  children: [
                    SizedBox(width: 18,),
                    Icon(Icons.sunny,color: Colors.blue,),
                    SizedBox(width: 5,),
                    Text("R-7458-4567-4434-5854",style: TextStyle(color: Colors.blue,fontSize: 15),)
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 18,vertical: 20),
                child: Text("Package Status",style: TextStyle(color: Colors.grey,fontSize: 18),),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 18),
                child: Column(
                  children: [
                    tracking_widget(color: Colors.grey, box: Icons.check_box_rounded, greytext: "Courier requested", normaltext: "July 7 2022  08:00am"),

                    tracking_widget(color: Colors.grey, box: Icons.check_box_rounded, greytext: "Package ready for delivery", normaltext: "July 7 2022  08:30am"),

                    tracking_widget(color: Colors.blue, box: Icons.check_box_outline_blank_rounded, greytext: "Package in transit", normaltext: "July 7 2022  10:30am"),

                    tracking_widget(color: Colors.grey, box: Icons.check_box_outline_blank_rounded, greytext: "Package delivered", normaltext: "July 7 2022  10:30am"),
                  ],
                ),
              ),
              Container(
                height: 50,
                margin: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.all(Radius.circular(10))
                ),
                child: Align(
                  alignment: Alignment.center,
                  child:Text("View Package Info",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
