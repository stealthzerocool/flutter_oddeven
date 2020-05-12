

import 'package:flutter/material.dart';

import 'oddeven.dart';

void main() {
  runApp(Oddeven());
}

class Oddeven extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
//        backgroundColor: Colors.blueAccent,

        body :Odevn(),
      ),
    );
  }
}
