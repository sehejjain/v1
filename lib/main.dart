import 'package:flutter/material.dart';
import 'package:portfolio/responsive_widget.dart';
import 'package:portfolio/screens/large_screen/coming_soon.dart';
import 'package:portfolio/screens/large_screen/home_alt.dart';
import 'package:portfolio/screens/large_screen/project_screen.dart';

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
      initialRoute: '/',
      routes: {
        HomeScreen.route: (context) => ResponsiveWidget(
              largeScreen: HomeScreen(),
            ),
        ComingSoon.route: (context) => ComingSoon(),
        ProjectScreen.route: (context) => ProjectScreen(),
      },
    );
  }
}
