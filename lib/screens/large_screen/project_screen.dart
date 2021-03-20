import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProjectScreen extends StatelessWidget {
  static const String route = '/projects';
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.blueGrey.shade900),
          elevation: 0,
          backgroundColor: Colors.transparent,
          centerTitle: false,
          title: Text(
            'Projects and Acomplishments',
            style: TextStyle(
              color: Colors.black54,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        backgroundColor: Color(0xff8ebeed),
        body: Stack(
          children: [
            Hero(
              tag: "Image",
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: size.height * 0.65,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image(
                        image: AssetImage("images/sehej.png"),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Column(
              children: [
                Spacer(),
                Row(
                  children: [
                    Spacer(
                      flex: 5,
                    ),
                    ProjectText(
                      name: "Sirhaana",
                      title: "Empowering the Urban Poor",
                      subtitle: "Bay Area Global Health Innovation Challenge",
                      heading: "Top 16 Finalist",
                      size: size,
                      alignment: TextAlign.left,
                    ),
                    Spacer(
                      flex: 1,
                    ),
                    ProjectText(
                      name: "Sirhaana",
                      title: "Empowering the Urban Poor",
                      subtitle: "Bay Area Global Health Innovation Challenge",
                      heading: "Top 16 Finalist",
                      size: size,
                      alignment: TextAlign.right,
                    ),
                    Spacer(
                      flex: 5,
                    ),
                  ],
                ),
                Spacer(),
                Row(
                  children: [
                    Spacer(
                      flex: 3,
                    ),
                    ProjectText(
                      name: "Sirhaana",
                      title: "Empowering the Urban Poor",
                      subtitle: "Bay Area Global Health Innovation Challenge",
                      heading: "Top 16 Finalist",
                      size: size,
                      alignment: TextAlign.left,
                    ),
                    Spacer(
                      flex: 4,
                    ),
                    ProjectText(
                      name: "Sirhaana",
                      title: "Empowering the Urban Poor",
                      subtitle: "Bay Area Global Health Innovation Challenge",
                      heading: "Top 16 Finalist",
                      size: size,
                      alignment: TextAlign.right,
                    ),
                    Spacer(
                      flex: 3,
                    ),
                  ],
                ),
                Spacer(),
                Row(
                  children: [
                    Spacer(
                      flex: 2,
                    ),
                    ProjectText(
                      name: "Sirhaana",
                      title: "Empowering the Urban Poor",
                      subtitle: "Bay Area Global Health Innovation Challenge",
                      heading: "Top 16 Finalist",
                      size: size,
                      alignment: TextAlign.left,
                    ),
                    Spacer(
                      flex: 8,
                    ),
                    ProjectText(
                      name: "Sirhaana",
                      title: "Empowering the Urban Poor",
                      subtitle: "Bay Area Global Health Innovation Challenge",
                      heading: "Top 16 Finalist",
                      size: size,
                      alignment: TextAlign.right,
                    ),
                    Spacer(
                      flex: 2,
                    ),
                  ],
                ),
                Spacer(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class ProjectText extends StatelessWidget {
  ProjectText({
    Key? key,
    required this.size,
    required this.alignment,
    required this.heading,
    required this.name,
    required this.subtitle,
    required this.title,
  }) : super(key: key);

  final Size size;
  final TextAlign alignment;
  final String name;
  final String title;
  final String subtitle;
  final String heading;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width * 0.3,
      child: Column(
        children: [
          Text(
            name,
            style: GoogleFonts.montserrat(fontSize: size.height * 0.03),
            textAlign: alignment,
          ),
          Text(
            this.title,
            style: GoogleFonts.montserrat(
              fontSize: size.height * 0.02,
            ),
            textAlign: alignment,
          ),
          SizedBox(
            height: size.height * 0.01,
          ),
          Text(
            this.subtitle,
            textAlign: alignment,
          ),
          Text(
            this.heading,
            textAlign: alignment,
          ),
        ],
      ),
    );
  }
}

class ProjectBlock extends StatelessWidget {
  const ProjectBlock({
    Key? key,
    required this.size,
    required this.desc,
    required this.heading,
  }) : super(key: key);

  final Size size;
  final String heading;
  final String desc;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.3,
      width: size.height * 0.3,
      child: Row(
        children: [
          SizedBox(
            height: size.height * 0.3,
            width: 8,
            child: Container(
              color: Colors.black54,
            ),
          ),
          SizedBox(
            width: 5,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                heading,
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 23,
                  fontWeight: FontWeight.w900,
                ),
              ),
              FittedBox(
                child: Container(
                  height: size.height * 0.2,
                  width: size.height * 0.25,
                  child: Text(
                    desc,
                    style: TextStyle(
                        color: Colors.black54,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Row(
                children: [
                  Icon(
                    Icons.open_in_new,
                    size: 30,
                    color: Colors.black54,
                  )
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
