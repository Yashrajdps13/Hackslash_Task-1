import 'package:flutter/material.dart';
import 'package:app/material.dart/global.dart';


class Track extends StatefulWidget {
  const Track({super.key});

  @override
  State<Track> createState() => _TrackState();
}

class _TrackState extends State<Track> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: 
      SingleChildScrollView(
        child: Container(
          color: Maincolor,
          child: Column(
            
            children: [
           
            Image(image: AssetImage("assets/images/Map1.png"),height: 350,  fit: BoxFit.cover,),
            SizedBox(height: 25,),
            Container(
              
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Text("Tracking Number",style: TextStyle(color: Colors.white,fontSize: 19),)
                    ],
                  ),
                  SizedBox(height: 20,),
                  Row(
                    children: [
                      Icon(Icons.ac_unit,color: Colors.blue,),
                      SizedBox(width: 10,),
                      Text("R-7458-4567-4434-5854",style: TextStyle(color: Colors.blue,fontSize: 18),)
                    ],
                  ),
                  SizedBox(height: 14,),
                  Row(
                    children: [
                      Text("Package Status",style: TextStyle(color: Colors.grey,fontSize: 15),)
                    ],
                  ),
                  SizedBox(height: 20,),
                  Row(
                    children: [
                      Icon(Icons.check_box,color: Colors.blue,),
                      SizedBox(width: 4,),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 10,),
                          Text("Courier requested",style: TextStyle(color: Colors.grey,fontSize: 17),),
                          SizedBox(height: 2,),
                          Text("july 7 2022 08:00am",style: TextStyle(color: Colors.orange),)
                        ],
                      )
                    ],
                  ),
                  SizedBox(height: 10,),
                   Row(
                    children: [
                      Icon(Icons.check_box,color: Colors.blue,),
                      SizedBox(width: 4,),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 10,),
                          Text("Package ready for delivery",style: TextStyle(color: Colors.grey,fontSize: 17),),
                          SizedBox(height: 2,),
                          Text("july 7 2022 08:30am",style: TextStyle(color: Colors.orange),)
                        ],
                      )
                    ],
                  ),
                   SizedBox(height: 10,),
                   Row(
                    children: [
                      Icon(Icons.check_box_outline_blank,color: Colors.blue,),
                      SizedBox(width: 4,),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 10,),
                          Text("Package in transit",style: TextStyle(color: Colors.grey,fontSize: 17),),
                          SizedBox(height: 2,),
                          Text("july 7 2022 10:30am",style: TextStyle(color: Colors.orange),)
                        ],
                      )
                    ],
                  ),
                   SizedBox(height: 10,),
                   Row(
                    children: [
                      Icon(Icons.check_box_outline_blank,color: Colors.blue,),
                      SizedBox(width: 4,),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 10,),
                          Text("Package deliverd",style: TextStyle(color: Colors.grey,fontSize: 17),),
                          SizedBox(height: 2,),
                          Text("july 7 2022 10:30am",style: TextStyle(color: Colors.orange),)
                        ],
                      )
                    ],
                  ),
                  SizedBox(height: 50,),
                  Container(
                    width: 600,
                    height: 50,
                    decoration: BoxDecoration(
                      
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child:Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                         Text("View Package Info",style: TextStyle(color: Colors.white,fontSize: 17),),
                      ],
                    )
                  ),
                  SizedBox(height: 40,),

                ],
              ),
            )
             



            ],
          ),
        ),


),
 
      
      );
  }
}