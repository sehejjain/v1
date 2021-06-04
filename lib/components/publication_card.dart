import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/screens/large_screen/coming_soon.dart';
import 'package:url_launcher/url_launcher.dart';

class PublicationCard extends StatefulWidget {
  final Map project;
  final Size size;

  const PublicationCard({Key? key, required this.project, required this.size})
      : super(key: key);

  @override
  _PublicationCardState createState() => _PublicationCardState();
}

class _PublicationCardState extends State<PublicationCard> {
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
                fontSize: widget.size.height * 0.04,
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
            widget.project.containsKey("authors")
                ? Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      widget.project["authors"],
                      style: GoogleFonts.montserrat(
                        fontSize: widget.size.height * 0.02,
                        color: Colors.white54,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  )
                : Container(),
            widget.project.containsKey("journal")
                ? Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Journal: " + widget.project["journal"],
                      style: GoogleFonts.montserrat(
                        fontSize: widget.size.height * 0.018,
                        color: Colors.white54,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  )
                : Container(),
            widget.project.containsKey("status")
                ? Text(
                    "Status: " + widget.project["status"],
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
