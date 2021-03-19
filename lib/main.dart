// @dart=2.9

import 'package:flutter/material.dart';
import 'package:portfolio/responsive_widget.dart';
import 'package:portfolio/screens/home_alt.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Sehej Jain",
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: ResponsiveWidget(
        largeScreen: HomeScreen(),
      ),
    );
  }
}
