import 'package:flutter/material.dart';
import 'package:portfolio/responsive_widget.dart';
import 'package:portfolio/screens/large_screen/coming_soon.dart';
import 'package:portfolio/screens/large_screen/home_screen.dart';
import 'package:portfolio/screens/large_screen/master_page.dart';
import 'package:url_strategy/url_strategy.dart';

void main() {
  setPathUrlStrategy();

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
      initialRoute: HomeScreen.route,
      routes: {
        HomeScreen.route: (context) => ResponsiveWidget(
              largeScreen: HomeScreen(),
            ),
        ComingSoon.route: (context) => ComingSoon(),
        "/projects": (context) => MasterPage(
              index: 1,
            ),
        "/about": (context) => MasterPage(
              index: 4,
            ),
        "/publications": (context) => MasterPage(
              index: 2,
            ),
        "/experience": (context) => MasterPage(
              index: 3,
            ),
      },
    );
  }
}
