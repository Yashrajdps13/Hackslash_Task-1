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
      bottomNavigationBar: NavBar(),
          body: Column(
            children: [
              Image.asset("assets/map.png",
              scale: 30,
              alignment: Alignment.topCenter),
          Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 32.0),
           child: SingleChildScrollView(
             child: Column(
               children: [
                 Text("Tracking Number",
                 style: TextStyle(
                   color: Colors.white
                 ),),
                 Text("R-7458-4567-4434-5854",
                 style: TextStyle(
                   color: Color.fromRGBO(5, 96, 250,0)
                 ),),
                 Text("Package Status",
                 style: TextStyle(
                   color: Colors.grey
                 ),),
                 CheckboxListTile(
                   title: Text("Courier requested",
                   style: TextStyle(
                     color: Colors.grey
                   ),),
                   value: true,
                   onChanged: (newValue) {},
                   controlAffinity: ListTileControlAffinity.leading,  //  <-- leading Checkbox
                 ),
                 Text("July 7 2022 08:00 am",
                 style: TextStyle(
                   color: Color.fromRGBO(236, 128, 0, 1)
                 ),),
                 CheckboxListTile(
                   title: Text("Package reaady for delivery",
                     style: TextStyle(
                         color: Colors.grey
                     ),),
                   value: true,
                   onChanged: (newValue) {},
                   controlAffinity: ListTileControlAffinity.leading,  //  <-- leading Checkbox
                 ),
                 Text("July 7 2022 08:30 am",
                   style: TextStyle(
                       color: Color.fromRGBO(236, 128, 0, 1)
                   ),),
                 CheckboxListTile(
                   title: Text("Package in transit",
                   style: TextStyle(
                     color: Color.fromRGBO(5, 96, 250, 1)
                   ),),
                   value: false,
                   onChanged: (newValue) {},
                   controlAffinity: ListTileControlAffinity.leading,  //  <-- leading Checkbox
                 ),
                 Text("July 7 2022 10:30 am",
                   style: TextStyle(
                       color: Color.fromRGBO(236, 128, 0, 1)
                   ),),
                 CheckboxListTile(
                   title: Text("Package delivered",
                     style: TextStyle(
                         color: Colors.grey
                     ),),
                   value: false,
                   onChanged: (newValue) {},
                   controlAffinity: ListTileControlAffinity.leading,  //  <-- leading Checkbox
                 ),
                 Text("July 7 2022 10:30 am",
                   style: TextStyle(
                       color: Colors.grey
                   ),),
             ElevatedButton(
               style: ElevatedButton.styleFrom(
                 backgroundColor: Color.fromRGBO(5, 96, 250, 1),
                 elevation: 0,
               ),
                 onPressed: () {},
                 child: Text( 'View Package Info',
                 style: TextStyle(
                   color: Colors.white
                 ),)

             )
               ]



             ),
           ),         )
            ],

            ),


          ),







       );


  }
}