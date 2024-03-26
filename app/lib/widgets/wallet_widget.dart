import 'package:app/utilities/global.dart';
import 'package:flutter/material.dart';

class wallet_widget extends StatefulWidget {

  final String boldtext ;
  final String normaltext ;
  final String Number ;
  final Color color ;
  const wallet_widget(
      {Key ?key,
        required this.boldtext,
        required this.normaltext,
        required this.Number,
        required this.color,
      });

  @override
  State<wallet_widget> createState() => _wallet_widgetState();
}

class _wallet_widgetState extends State<wallet_widget> {
  @override
  Widget build(BuildContext context) {
    return
      Container(
        padding: EdgeInsets.symmetric(horizontal:12 ,vertical:12 ),
        color: primaryboxcolor,
        alignment: Alignment.centerLeft,

        child:Row(
          children: [

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
            Text(widget.Number,style: TextStyle(color:widget.color ),),
          ],
        ),
      );
  }
}
