import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hackslash_task_1/utils/colors.dart';

class Profile extends StatefulWidget {
  final String titleText;
  final String subTitleText;
  final IconData icon;

  const Profile(
      {Key? key,
      required this.icon,
      required this.titleText,
      required this.subTitleText});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: lightBackgroundColor,
      height: 80,
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      alignment: Alignment.center,
      margin: EdgeInsets.symmetric(vertical: 5, horizontal: 0),
      child: Row(
        children: [
          Icon(widget.icon),
          SizedBox(
            width: 10,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.titleText,
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              Text(
                widget.subTitleText,
                maxLines: 1,
                style: TextStyle(
                    color: Colors.white70, overflow: TextOverflow.ellipsis),
              ),
            ],
          ),
          Spacer(),
          Icon(Icons.navigate_next)
        ],
      ),
    );
  }
}
