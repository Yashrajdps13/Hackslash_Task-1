import 'package:app/utilities/global.dart';
import 'package:flutter/material.dart';

class prof_widget extends StatefulWidget {
  final IconData icon ;
  final String boldtext ;
  final String normaltext ;

  const prof_widget(
      {Key ?key,
        required this.icon,
        required this.boldtext,
        required this.normaltext});

  @override
  State<prof_widget> createState() => _prof_widgetState();
}

class _prof_widgetState extends State<prof_widget> {
  @override
  Widget build(BuildContext context) {
    return
      Container(
      padding: EdgeInsets.symmetric(horizontal:15 ,vertical:15 ),
      color: primaryboxcolor,
      alignment: Alignment.centerLeft,

      child:Row(
        children: [
          Icon(widget.icon, color: Colors.white,),
          SizedBox(width: 8,),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(widget.boldtext,
                  style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold, fontSize: 16,),
                ),
                Text(widget.normaltext,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(color: Colors.white,fontSize: 10),
                ),
              ],
            ),
          ),
          Spacer(),
          Icon(Icons.arrow_forward_ios_rounded,color: Colors.white,size: 15,),
        ],
      ),
    );
  }
}
