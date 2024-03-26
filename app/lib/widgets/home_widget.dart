import 'package:app/utilities/global.dart';
import 'package:flutter/material.dart';

class home_widget extends StatefulWidget {

  final IconData icon ;
  final String boldtext ;
  final String Text ;

  const home_widget(
      {Key ?key,
        required this.icon,
        required this.boldtext,
        required this.Text,

      });

  @override
  State<home_widget> createState() => _home_widgetState();
}

class _home_widgetState extends State<home_widget> {
  @override
  Widget build(BuildContext context) {
    return
      Container(
        padding: EdgeInsets.symmetric(horizontal:10 ,vertical:10 ),
        color: primaryboxcolor,
        alignment: Alignment.centerLeft,
        child: Column(
          children: [
            Icon(widget.icon,color: Colors.blue,size:50,),
            Text(widget.boldtext,style: TextStyle(color: Colors.blue,fontSize: 16,fontWeight: FontWeight.bold),),
            Text(widget.Text,style: TextStyle(color: Colors.white,fontSize:8 ),)
          ],
        ),

      );
  }
}
