import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/screens/large_screen/coming_soon.dart';
import 'package:url_launcher/url_launcher.dart';

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
          centerTitle: true,
        ),
        backgroundColor: Color(0xff8ebeed),
        body: Stack(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Text(
                'Projects and Acomplishments',
                style: GoogleFonts.montserrat(
                  color: Colors.black54,
                  fontSize: size.height * 0.045,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
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
                      flex: 1,
                    ),
                    ProjectText(
                      name: "Sirhaana",
                      title: "Empowering the Urban Poor",
                      subtitle:
                          "Bay Area Global Health Innovation Challenge, Top 16 Finalist",
                      heading: Text(
                        "Team Members: Ayushi Gupta, Sumedh Supe and Swati Ramtilak",
                        textAlign: TextAlign.center,
                      ),
                      globalRedirect:
                          "http://www.bayareaglobalhealthchallenge.com/2021-finalists",
                      redirectLink: false,
                      redirectPage: true,
                      route: ComingSoon.route,
                      size: size,
                    ),
                    Spacer(
                      flex: 1,
                    ),
                    ProjectText(
                      name: "Genome Sequencing",
                      title: "Research Project",
                      subtitle:
                          "Applying Nature Inspired Algorithms to solve the permutation-optimization problem of assembling a genome from subsequences.",
                      heading: Text("Paper under Review"),
                      redirectLink: false,
                      redirectPage: true,
                      route: ComingSoon.route,
                      size: size,
                    ),
                    Spacer(
                      flex: 1,
                    ),
                  ],
                ),
                Spacer(),
                Row(
                  children: [
                    Spacer(
                      flex: 1,
                    ),
                    ProjectText(
                      name: "Sirhaana",
                      title: "Empowering the Urban Poor",
                      subtitle: "Bay Area Global Health Innovation Challenge",
                      heading: Text("Top 16 Finalist"),
                      globalRedirect:
                          "http://www.bayareaglobalhealthchallenge.com/2021-finalists",
                      redirectLink: true,
                      redirectPage: false,
                      size: size,
                    ),
                    Spacer(
                      flex: 4,
                    ),
                    ProjectText(
                      name: "Flipr Hackathon 6.0",
                      title: "A+ Grade for Mobile Development",
                      subtitle:
                          "Developed a COVID mapper app according to the given guidelines within a specified Time Limit.",
                      heading: Icon(
                        FontAwesomeIcons.github,
                        color: Colors.black54,
                        size: size.height * 0.03,
                      ),
                      link: "https://github.com/Fuzzy-Spork/Quester",
                      size: size,
                      redirectLink: false,
                      redirectPage: false,
                    ),
                    Spacer(
                      flex: 1,
                    ),
                  ],
                ),
                Spacer(),
                Row(
                  children: [
                    Spacer(
                      flex: 1,
                    ),
                    ProjectText(
                      name: "Sirhaana",
                      title: "Empowering the Urban Poor",
                      subtitle: "Bay Area Global Health Innovation Challenge",
                      heading: Text("Top 16 Finalist"),
                      globalRedirect:
                          "http://www.bayareaglobalhealthchallenge.com/2021-finalists",
                      redirectLink: true,
                      redirectPage: false,
                      size: size,
                    ),
                    Spacer(
                      flex: 9,
                    ),
                    ProjectText(
                      name: "Sirhaana",
                      title: "Empowering the Urban Poor",
                      subtitle: "Bay Area Global Health Innovation Challenge",
                      heading: Text("Top 16 Finalist"),
                      globalRedirect:
                          "http://www.bayareaglobalhealthchallenge.com/2021-finalists",
                      redirectLink: true,
                      redirectPage: false,
                      size: size,
                    ),
                    Spacer(
                      flex: 1,
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
    required this.heading,
    required this.name,
    required this.subtitle,
    required this.title,
    this.link = "",
    this.globalRedirect = "",
    required this.redirectLink,
    required this.redirectPage,
    this.route,
  }) : super(key: key);

  final Size size;
  final String name;
  final String title;
  final String subtitle;
  final Widget heading;
  final String? link;
  final String? globalRedirect;
  final bool redirectLink;
  final bool redirectPage;
  final String? route;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (this.redirectLink) {
          launch(this.globalRedirect!);
        }
        if (this.redirectPage) {
          Navigator.of(context).pushNamed(route!);
        }
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: size.width * 0.25,
          child: Column(
            children: [
              Text(
                name,
                style: GoogleFonts.montserrat(fontSize: size.height * 0.03),
              ),
              Text(
                this.title,
                style: GoogleFonts.montserrat(
                  fontSize: size.height * 0.02,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: size.height * 0.01,
              ),
              Text(
                this.subtitle,
                textAlign: TextAlign.center,
              ),
              link == ""
                  ? this.heading
                  : InkWell(
                      onTap: () {
                        launch(link!);
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: this.heading,
                      ),
                    ),
            ],
          ),
        ),
      ),
    );
  }
}

// class ProjectBlock extends StatelessWidget {
//   const ProjectBlock({
//     Key? key,
//     required this.size,
//     required this.desc,
//     required this.heading,
//   }) : super(key: key);

//   final Size size;
//   final String heading;
//   final String desc;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: size.height * 0.3,
//       width: size.height * 0.3,
//       child: Row(
//         children: [
//           SizedBox(
//             height: size.height * 0.3,
//             width: 8,
//             child: Container(
//               color: Colors.black54,
//             ),
//           ),
//           SizedBox(
//             width: 5,
//           ),
//           Column(
//             mainAxisAlignment: MainAxisAlignment.start,
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Text(
//                 heading,
//                 style: TextStyle(
//                   color: Colors.black54,
//                   fontSize: 23,
//                   fontWeight: FontWeight.w900,
//                 ),
//               ),
//               FittedBox(
//                 child: Container(
//                   height: size.height * 0.2,
//                   width: size.height * 0.25,
//                   child: Text(
//                     desc,
//                     style: TextStyle(
//                         color: Colors.black54,
//                         fontSize: 16,
//                         fontWeight: FontWeight.bold),
//                   ),
//                 ),
//               ),
//               Row(
//                 children: [
//                   Icon(
//                     Icons.open_in_new,
//                     size: 30,
//                     color: Colors.black54,
//                   )
//                 ],
//               )
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }
