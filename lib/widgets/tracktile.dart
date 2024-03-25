import 'package:flutter/material.dart';
import 'package:task1/utils/global.dart';

class track_widget extends StatefulWidget {
  final String boldtext;
  final String normaltext;
  final IconData icon;
  final Color boldcolor;
  final Color normalcolor;
  const track_widget({
    Key? key,
    required this.boldtext,
    required this.normaltext,
    required this.icon,
    required this.boldcolor,
    required this.normalcolor,
  });

  @override
  State<track_widget> createState() => _track_widgetState();
}

class _track_widgetState extends State<track_widget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.06,
      padding: EdgeInsets.only(top: 5, left: 19, right: 10),
      alignment: Alignment.center,
      child: Row(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Icon(
              widget.icon,
              color: darktextcolour,
              size: 25,
            ),
          ),
          SizedBox(
            width: 15,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.boldtext,
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: widget.boldcolor),
              ),
              Flexible(
                child: Text(
                  widget.normaltext,
                  maxLines: 1,
                  style: TextStyle(color: widget.normalcolor, fontSize: 11),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
