import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/screens/large_screen/coming_soon.dart';

class ProjectCard extends StatefulWidget {
  final Size size;
  final String name;
  final String title;
  final String subtitle;
  final String extra;

  const ProjectCard(
      {Key? key,
      required this.size,
      required this.name,
      required this.title,
      required this.subtitle,
      required this.extra})
      : super(key: key);

  @override
  _ProjectCardState createState() => _ProjectCardState();
}

class _ProjectCardState extends State<ProjectCard> {
  Text getHeadingText(String heading) {
    return Text(
      heading,
      style: GoogleFonts.montserrat(
        fontSize: widget.size.height * 0.045,
        color: Colors.orangeAccent,
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
        padding: const EdgeInsets.all(28.0),
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
                  color: Colors.orangeAccent,
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
                // "We envision a service that will serve the urban poor, address their issue of handling emergencies and guide them through. We want to bridge the gap between the present-day healthcare systems and the urban poor, who mostly prefer their home remedies or are unaware of the schemes they are eligible for. We want to be a service that can have an impact and help people so that they are not turned away or taken advantage of because of their circumstances. \n"
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
