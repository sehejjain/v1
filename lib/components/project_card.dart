import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/screens/large_screen/coming_soon.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectCard extends StatefulWidget {
  final Map project;
  final Size size;

  const ProjectCard({Key? key, required this.project, required this.size})
      : super(key: key);

  @override
  _ProjectCardState createState() => _ProjectCardState();
}

class _ProjectCardState extends State<ProjectCard> {
  Map stringToPage = {
    "Sirhaana": ComingSoon(),
    "Brain Stroke": ComingSoon(),
  };

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (widget.project.containsKey("link")) {
          launch(widget.project["link"]);
        } else if (widget.project.containsKey("page")) {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => stringToPage[widget.project["name"]],
            ),
          );
        } else {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ComingSoon(),
            ),
          );
        }
      },
      child: Card(
        elevation: 0,
        color: Colors.transparent,
        child: Column(
          children: [
            Text(
              widget.project["name"],
              style: GoogleFonts.montserrat(
                fontSize: widget.size.height * 0.043,
                color: Colors.orangeAccent,
                fontWeight: FontWeight.w400,
              ),
              textAlign: TextAlign.center,
            ),
            widget.project.containsKey("title")
                ? Text(
                    widget.project["title"],
                    style: GoogleFonts.montserrat(
                      fontSize: widget.size.height * 0.025,
                      color: Colors.orangeAccent,
                    ),
                    textAlign: TextAlign.center,
                  )
                : Container(),
            widget.project.containsKey("subtitle")
                ? Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      widget.project["subtitle"],
                      style: GoogleFonts.montserrat(
                        fontSize: widget.size.height * 0.02,
                        color: Colors.white54,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  )
                : Container(),
            widget.project.containsKey("team")
                ? Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      widget.project["team"],
                      style: GoogleFonts.montserrat(
                        fontSize: widget.size.height * 0.02,
                        color: Colors.white54,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  )
                : Container(),
            widget.project.containsKey("quote")
                ? Text(
                    // "We envision a service that will serve the urban poor, address their issue of handling emergencies and guide them through. We want to bridge the gap between the present-day healthcare systems and the urban poor, who mostly prefer their home remedies or are unaware of the schemes they are eligible for. We want to be a service that can have an impact and help people so that they are not turned away or taken advantage of because of their circumstances. \n"
                    widget.project["quote"],
                    style: GoogleFonts.montserrat(
                      fontSize: widget.size.height * 0.018,
                      color: Colors.white54,
                    ),
                    textAlign: TextAlign.center,
                  )
                : Container(),
            widget.project.containsKey("subsubtitle")
                ? Text(
                    widget.project["subsubtitle"],
                    style: GoogleFonts.montserrat(
                      fontStyle: FontStyle.italic,
                      color: Colors.white54,
                    ),
                    textAlign: TextAlign.center,
                  )
                : Container(),
          ],
        ),
      ),
    );
  }
}
