import 'package:flutter/material.dart';
import 'package:task1/utils/global.dart';

class profile_tile extends StatefulWidget {
  final IconData icon;
  final String boldtext;
  final String normaltext;

  const profile_tile(
      {Key? key,
      required this.icon,
      required this.boldtext,
      required this.normaltext});

  @override
  State<profile_tile> createState() => _profile_tileState();
}

class _profile_tileState extends State<profile_tile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: dark == true ? boxcolour : lightboxcolour,
      height: MediaQuery.of(context).size.height * 0.07,
      padding: EdgeInsets.only(top: 8, left: 10, right: 10),
      alignment: Alignment.center,
      margin: EdgeInsets.symmetric(vertical: 5, horizontal: 0),
      child: Row(
        children: [
          Icon(
            widget.icon,
            color: dark == true ? Colors.white : Colors.black,
            size: 30,
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
                    color: dark == true ? Colors.white : Colors.black),
              ),
              Flexible(
                child: Text(
                  widget.normaltext,
                  maxLines: 1,
                  style: TextStyle(color: Color(0xffA7A7A7), fontSize: 11),
                ),
              ),
            ],
          ),
          Spacer(),
          Icon(
            Icons.navigate_next,
            color: dark == true ? Colors.white : Colors.black,
          )
        ],
      ),
    );
  }
}
