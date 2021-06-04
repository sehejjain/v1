import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ExperiencePage extends StatefulWidget {
  const ExperiencePage({Key? key}) : super(key: key);

  @override
  _ExperiencePageState createState() => _ExperiencePageState();
}

class _ExperiencePageState extends State<ExperiencePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: ListView(
        children: [
          Text(
            "Work Experience",
            style: GoogleFonts.montserrat(
                fontSize: size.height * 0.04, color: Colors.orangeAccent),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: size.height * 0.02,
          ),
          Card(
            color: Colors.transparent,
            child: Container(
              width: size.width * 0.35,
              padding: EdgeInsets.all(18),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "ABC Group",
                      style: GoogleFonts.montserrat(
                        fontSize: size.height * 0.04,
                        color: Colors.white60,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Flutter Developer",
                      style: GoogleFonts.montserrat(
                        fontSize: size.height * 0.025,
                        color: Colors.white60,
                        fontStyle: FontStyle.italic,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Designed and developed a Project Management Suite for efficient Site & Project Management. Features include Document and Plan Management, Daily Progress Reports, Customised Report, Material Management, Human Resource Management and Project Expenditure Management.",
                      style: GoogleFonts.montserrat(
                        fontSize: size.height * 0.0175,
                        color: Colors.white60,
                        fontStyle: FontStyle.italic,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: size.height * 0.01,
          ),
          Card(
            color: Colors.transparent,
            child: Container(
              width: size.width * 0.35,
              padding: EdgeInsets.all(18),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Fusion IIIT",
                      style: GoogleFonts.montserrat(
                        fontSize: size.height * 0.04,
                        color: Colors.white60,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Project Steering Team",
                      style: GoogleFonts.montserrat(
                        fontSize: size.height * 0.025,
                        color: Colors.white60,
                        fontStyle: FontStyle.italic,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Building and managing multiple teams of students to create an Enterprise Resource Planning (ERP) system for IIITDM Jabalpur. I am leading a team which is creating an entire Flutter Mobile Application from scratch encompassing various modules for the institute.",
                      style: GoogleFonts.montserrat(
                        fontSize: size.height * 0.0175,
                        color: Colors.white60,
                        fontStyle: FontStyle.italic,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: size.height * 0.07,
          ),
          Text(
            "Positions of Responsibility",
            style: GoogleFonts.montserrat(
                fontSize: size.height * 0.04, color: Colors.orangeAccent),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: size.height * 0.02,
          ),
          Card(
            color: Colors.transparent,
            child: Container(
              width: size.width * 0.3,
              padding: EdgeInsets.all(8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "IIITDMJ:",
                      style: GoogleFonts.montserrat(
                        fontSize: size.height * 0.04,
                        color: Colors.white60,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "\u2022 Senator: Student Senate",
                      style: GoogleFonts.montserrat(
                        fontSize: size.height * 0.02,
                        color: Colors.white60,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "\u2022 Co-convener of the Cultural Fraternity",
                      style: GoogleFonts.montserrat(
                        fontSize: size.height * 0.02,
                        color: Colors.white60,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "\u2022 Training and Placement Representative",
                      style: GoogleFonts.montserrat(
                        fontSize: size.height * 0.02,
                        color: Colors.white60,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "\u2022 Co-ordinator of Saaz, the Music Club",
                      style: GoogleFonts.montserrat(
                        fontSize: size.height * 0.02,
                        color: Colors.white60,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: size.height * 0.01,
          ),
        ],
      ),
    );
  }
}
