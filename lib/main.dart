import 'package:flutter/material.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';
import 'package:portfolio/responsive_widget.dart';
import 'package:portfolio/screens/large_screen/coming_soon.dart';
import 'package:portfolio/screens/large_screen/home_screen.dart' as large;
import 'package:flutter/scheduler.dart';
import 'package:portfolio/screens/large_screen/master_page.dart';
import 'package:portfolio/screens/small_screen/home_screen.dart' as small;

void configureApp() {
  setUrlStrategy(PathUrlStrategy());
}

void main() {
  configureApp();
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
      initialRoute: large.HomeScreen.route,
      routes: {
        large.HomeScreen.route: (context) => ResponsiveWidget(
              largeScreen: large.HomeScreen(),
              smallScreen: small.HomeScreen(),
            ),
        ComingSoon.route: (context) => ComingSoon(),
        "/projects": (context) => MasterPage(index: 0),
        "/publications": (context) => MasterPage(index: 1),
        "/experience": (context) => MasterPage(index: 2),
        "/about": (context) => MasterPage(index: 3),
      },
    );
  }
}
