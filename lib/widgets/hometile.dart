import 'package:flutter/material.dart';

class home_widget extends StatefulWidget {
  final String boldtext;
  final String normaltext;
  final IconData icon;
  final Color boldcolor;
  final Color normalcolor;
  final Color backcolor;
  final Color iconcolor;
  const home_widget({
    Key? key,
    required this.boldtext,
    required this.normaltext,
    required this.icon,
    required this.boldcolor,
    required this.normalcolor,
    required this.backcolor,
    required this.iconcolor,
  });

  @override
  State<home_widget> createState() => _home_widgetState();
}

class _home_widgetState extends State<home_widget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.188,
      width: MediaQuery.of(context).size.width * 0.407,
      padding: EdgeInsets.only(left: 10, top: 10, right: 10),
      decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(8))),
          color: widget.backcolor),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(widget.icon, color: widget.iconcolor, size: 50),
          Text(widget.boldtext,
              style: TextStyle(
                  color: widget.boldcolor,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.bold,
                  fontSize: 16)),
          Text(
              widget.normaltext,
              style: TextStyle(
                  color: widget.normalcolor, fontFamily: 'Roboto', fontSize: 9)),
        ],
      ),
    );
  }
}
