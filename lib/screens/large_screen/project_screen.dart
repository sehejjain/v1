import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/screens/large_screen/coming_soon.dart';

class ProjectScreen extends StatefulWidget {
  static const String route = "/projects";

  @override
  _ProjectScreenState createState() => _ProjectScreenState();
}

class _ProjectScreenState extends State<ProjectScreen> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xff222222),
      appBar: AppBar(
        backgroundColor: Color(0xff222222),
        elevation: 0,
        title: Text(
          "projects",
          style: GoogleFonts.oswald(
            fontSize: size.height * 0.05,
            color: Colors.orangeAccent,
          ),
        ),
      ),
      body: SafeArea(
        child: Row(
          children: [
            NavigationRail(
              backgroundColor: Colors.transparent,
              selectedIndex: _selectedIndex,
              onDestinationSelected: (int index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
              unselectedIconTheme: IconThemeData(color: Colors.white60),
              selectedLabelTextStyle: GoogleFonts.oswald(
                color: Colors.orangeAccent,
                fontSize: 14,
                letterSpacing: 1,
                decorationThickness: 2.0,
              ),
              unselectedLabelTextStyle: GoogleFonts.oswald(
                fontSize: 13,
                letterSpacing: 0.8,
                color: Colors.white60,
              ),
              labelType: NavigationRailLabelType.all,
              destinations: [
                NavigationRailDestination(
                  icon: SizedBox.shrink(),
                  label: Padding(
                    padding: EdgeInsets.symmetric(vertical: 8),
                    child: RotatedBox(
                      quarterTurns: -1,
                      child: Text(
                        "First",
                      ),
                    ),
                  ),
                ),
                NavigationRailDestination(
                  icon: SizedBox.shrink(),
                  label: Padding(
                    padding: EdgeInsets.symmetric(vertical: 8),
                    child: RotatedBox(
                      quarterTurns: -1,
                      child: Text(
                        "First",
                      ),
                    ),
                  ),
                ),
                NavigationRailDestination(
                  icon: SizedBox.shrink(),
                  label: Padding(
                    padding: EdgeInsets.symmetric(vertical: 8),
                    child: RotatedBox(
                      quarterTurns: -1,
                      child: Text(
                        "First",
                      ),
                    ),
                  ),
                ),
                NavigationRailDestination(
                  icon: SizedBox.shrink(),
                  label: Padding(
                    padding: EdgeInsets.symmetric(vertical: 8),
                    child: RotatedBox(
                      quarterTurns: -1,
                      child: Text(
                        "First",
                      ),
                    ),
                  ),
                ),
              ],
            ),
            VerticalDivider(thickness: 1, width: 1),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  height: size.height * 0.08,
                ),
                Container(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class ProjectCard extends StatefulWidget {
  final Size size;

  const ProjectCard({Key? key, required this.size}) : super(key: key);

  @override
  _ProjectCardState createState() => _ProjectCardState();
}

class _ProjectCardState extends State<ProjectCard> {
  Text getHeadingText(String heading) {
    return Text(
      heading,
      style: GoogleFonts.montserrat(
        fontSize: widget.size.height * 0.045,
        color: Colors.white60,
        fontWeight: FontWeight.w400,
      ),
      textAlign: TextAlign.center,
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, ComingSoon.route);
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Card(
          elevation: 0,
          color: Colors.transparent,
          child: Column(
            children: [
              getHeadingText("Sirhaana"),
              Text(
                "Empowering the Urban Poor",
                style: GoogleFonts.montserrat(
                  fontSize: widget.size.height * 0.025,
                  color: Colors.white54,
                ),
                textAlign: TextAlign.center,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Bay Area Global Health Innovation Challenge, Top 16 Finalist",
                  style: GoogleFonts.montserrat(
                    fontSize: widget.size.height * 0.02,
                    color: Colors.white54,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Text(
                "Team Members: Ayushi Gupta, Sumedh Supe and Swati Ramtilak",
                style: GoogleFonts.montserrat(
                  fontSize: widget.size.height * 0.02,
                  color: Colors.white54,
                ),
                textAlign: TextAlign.center,
              ),
              Text(
                "We envision a service that will serve the urban poor, address their issue of handling emergencies and guide them through. We want to bridge the gap between the present-day healthcare systems and the urban poor, who mostly prefer their home remedies or are unaware of the schemes they are eligible for. We want to be a service that can have an impact and help people so that they are not turned away or taken advantage of because of their circumstances. \n"
                "\"Trust our vision for us to return it back with our service.\"",
                style: GoogleFonts.montserrat(
                  fontSize: widget.size.height * 0.018,
                  color: Colors.white54,
                ),
                textAlign: TextAlign.center,
              )
            ],
          ),
        ),
      ),
    );
  }
}

Map<String, dynamic> projects = {
  "Sirhaana": {
    "title": "Empowering the Urban Poor",
    "subtitle": "Bay Area Global Health Innovation Challenge, Top 16 Finalists",
    "team": "Ayushi Gupta, Sehej Jain, Swati Ramtilak and Sumedh Supe",
  }
};
