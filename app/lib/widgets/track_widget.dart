import 'package:app/utilities/global.dart';
import 'package:flutter/material.dart';

class tracking_widget extends StatefulWidget {
  final IconData box;
  final String greytext ;
  final String normaltext ;
  final Color color ;

  const tracking_widget(
      {Key ?key,
        required this.color,
        required this.box,
        required this.greytext,
        required this.normaltext});

  @override
  State<tracking_widget> createState() => _tracking_widgetState();
}

class _tracking_widgetState extends State<tracking_widget> {
  @override
  Widget build(BuildContext context) {
    return
      Container(
        padding: EdgeInsets.symmetric(vertical:10 ),
        color: backgroundcolor,
        alignment: Alignment.centerLeft,

        child:Row(
          children: [
            Icon(widget.box, color: Colors.blue,size: 25,),
            SizedBox(width: 8,),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(widget.greytext,
                    style: TextStyle(color: widget.color,fontWeight: FontWeight.bold, fontSize: 16,),
                  ),
                  Text(widget.normaltext,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(color: Colors.orange,fontSize: 14),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
  }
}
