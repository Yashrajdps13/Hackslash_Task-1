import 'package:flutter/material.dart';
import 'package:task1/utils/global.dart';

class Track extends StatefulWidget {
  const Track({super.key});

  @override
  State<Track> createState() => _TrackState();
}

class _TrackState extends State<Track> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkbackgroundcolor,
      body: SingleChildScrollView(),
    );
  }
}
