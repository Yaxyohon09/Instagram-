import 'package:flutter/material.dart';
import 'Sahifa1.dart';
import 'Sahifa2.dart';
import 'Sahifa3.dart';
import 'Sahifa4.dart';
import 'Sahifa5.dart';
import 'Sahifa6.dart';
import 'Sahifa7.dart';
import 'Sahifa8.dart';
import 'Sahifa9.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "Sahifa1",
      routes: {
        "Sahifa1": ((context) => Sahifa1()),
        "Sahifa2": ((context) => Sahifa2()),
        "Sahifa3": ((context) => Sahifa3()),
        "Sahifa4": ((context) => Sahifa4()),
        "Sahifa5": ((context) => Sahifa5()),
        "Sahifa6": ((context) => Sahifa6()),
        "Sahifa7": ((context) => Sahifa7()),
        "Sahifa8": ((context) => Sahifa8()),
        "Sahifa9": ((context) => Sahifa9()),
      },
    ),
  );
}
