import 'package:flutter/material.dart';
import 'package:hackslash_task1/widgets/nav.dart';

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
        ),






       );


  }
}