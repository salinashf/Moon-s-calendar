import 'dart:async';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Clock extends StatefulWidget {
  @override
  _ClockState createState() => _ClockState();
}

class _ClockState extends State<Clock> {
  String currTime = "¿Hoy la Luna?..";
  String currDate = "";
  var timer;

  @override
  void initState() {
    super.initState();
    timer =
        new Timer.periodic(const Duration(seconds: 1), (Timer t) => _clock());
    // calculateMoonPhase(DateTime.now().);
    currDate = DateFormat('EEE d MMM').format(DateTime.now());
  }

  @override
  void dispose() {
    super.dispose();
    timer.cancel();
  }

  void _clock() {
    setState(() {
      currTime = DateFormat('kk:mm:ss').format(DateTime.now());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          new Text(
            currTime,
            style: TextStyle(fontWeight: FontWeight.w700, fontSize: 35, color:Colors.yellow,height: 3 ),
          ),
          new Text(
            currDate,
            style: TextStyle(fontWeight: FontWeight.w300, fontSize: 24),
          ),
        ],
      ),
    );
  }
}
