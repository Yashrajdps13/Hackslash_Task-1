import 'package:flutter/material.dart';
import 'package:task1/utils/global.dart';

class wallet_widget extends StatefulWidget {
  final String boldtext;
  final String normaltext;
  final String Number;
  final Color color;
  const wallet_widget({
    Key? key,
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
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      margin: EdgeInsets.symmetric(vertical: 5, horizontal: 0),
      color: boxcolour,
      alignment: Alignment.centerLeft,
      child: Row(
        children: [
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  widget.boldtext,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                  ),
                ),
                Text(
                  widget.normaltext,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(color: Colors.white, fontSize: 10),
                ),
              ],
            ),
          ),
          Spacer(),
          Text(
            widget.Number,
            style: TextStyle(color: widget.color),
          ),
        ],
      ),
    );
  }
}
