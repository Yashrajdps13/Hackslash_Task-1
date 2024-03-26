import 'package:flutter/material.dart';
import '../widgets/nav.dart';


class Track extends StatefulWidget {

  @override
  State<Track> createState() => _TrackState();
}

class _TrackState extends State<Track> {
  @override
  Widget build(BuildContext context) {
    return Material(
        child: Scaffold(

          body: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: 320,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage("assets/images/map.png"),

                    ),),),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 32.0),
                  child: SizedBox(
                    height: 390,
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Tracking Number",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16
                            ),),
                          Spacer(),
                          Row(
                            children: [
                              Container(
                                  height:23,
                                  width:23,
                                  child: Image.asset("assets/images/trackid.png")),
                              SizedBox(
                                width: 5,
                              ),
                              Text("R-7458-4567-4434-5854",
                                style: TextStyle(
                                    color: Color.fromRGBO(5, 96, 250,1),
                                    fontSize: 16
                                ),),
                            ],
                          ),
                          Spacer(),
                          Text("Package Status",
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 14
                            ),),
                          CheckboxListTile(
                            title: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Courier requested",
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 14
                                  ),),
                                Text("July 7 2022 08:00 am",
                                  style: TextStyle(
                                      color: Color.fromRGBO(236, 128, 0, 1),
                                      fontSize: 14
                                  ),),
                              ],
                            ),
                            value: true,
                            onChanged: (newValue) {},
                            controlAffinity: ListTileControlAffinity.leading,  //  <-- leading Checkbox
                          ),

                          CheckboxListTile(
                            title: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Package reaady for delivery",
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 14
                                  ),),
                                Text("July 7 2022 08:30 am",
                                  style: TextStyle(
                                      color: Color.fromRGBO(236, 128, 0, 1),
                                      fontSize: 14
                                  ),),
                              ],
                            ),
                            value: true,
                            onChanged: (newValue) {},
                            controlAffinity: ListTileControlAffinity.leading,  //  <-- leading Checkbox
                          ),

                          CheckboxListTile(
                            title: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Package in transit",
                                  style: TextStyle(
                                      color: Color.fromRGBO(5, 96, 250, 1),
                                      fontSize: 16
                                  ),),
                                Text("July 7 2022 10:30 am",
                                  style: TextStyle(
                                      color: Color.fromRGBO(236, 128, 0, 1),
                                      fontSize: 14
                                  ),),
                              ],
                            ),
                            value: false,
                            onChanged: (newValue) {},
                            controlAffinity: ListTileControlAffinity.leading,  //  <-- leading Checkbox
                          ),

                          CheckboxListTile(
                            title: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Package delivered",
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 14
                                  ),),
                                Text("July 7 2022 10:30 am",
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 14
                                  ),),
                              ],
                            ),
                            value: false,
                            onChanged: (newValue) {},
                            controlAffinity: ListTileControlAffinity.leading,  //  <-- leading Checkbox
                          ),

                          SizedBox(
                            height: 30,
                          ),
                          SizedBox(
                            width: 341,
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Color.fromRGBO(5, 96, 250, 1),
                                    elevation: 0,
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(5.0)
                                    )

                                ),
                                onPressed: () {},
                                child: Text( 'View Package Info',
                                    style: TextStyle(
                                        color: Colors.white
                                    ),
                                    textAlign: TextAlign.center)

                            ),
                          )
                        ]



                    ),
                  ),         )
              ],

            ),
          ),


        ),







    );


  }
}