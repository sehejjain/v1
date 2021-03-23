import 'package:flutter/material.dart';
import 'package:portfolio/responsive_widget.dart';
import 'package:portfolio/screens/large_screen/coming_soon.dart';
import 'package:portfolio/screens/large_screen/home_screen.dart';
import 'package:flutter/scheduler.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    timeDilation = 5.0;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Sehej Jain",
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: HomeScreen.route,
      routes: {
        HomeScreen.route: (context) => ResponsiveWidget(
              largeScreen: HomeScreen(),
            ),
        ComingSoon.route: (context) => ComingSoon(),
      },
    );
  }
}
