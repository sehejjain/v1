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
                  height: size.height * 0.43,
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
                SizedBox(
                  height: size.height * 0.08,
                ),
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
                        style: GoogleFonts.montserrat(
                            fontSize: size.height * 0.018),
                        textAlign: TextAlign.center,
                      ),
                      globalRedirect:
                          "http://www.bayareaglobalhealthchallenge.com/2021-finalists",
                      redirectLink: false,
                      redirectPage: true,
                      size: size,
                    ),
                    Spacer(
                      flex: 1,
                    ),
                    ProjectText(
                      name: "Genome Sequencing",
                      title: "Research Project",
                      subtitle:
                          "Applying Nature Inspired Algorithms to assemble a genome from subsequences.",
                      heading: Text(
                        "Paper under Review",
                        style: GoogleFonts.montserrat(
                          fontSize: size.height * 0.018,
                        ),
                      ),
                      redirectLink: false,
                      redirectPage: true,
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
                      name: "Brain Stroke",
                      title: "Coming Soon",
                      subtitle: "",
                      heading: Text(
                        "",
                        style: GoogleFonts.montserrat(
                          fontSize: size.height * 0.018,
                        ),
                      ),
                      redirectLink: false,
                      redirectPage: true,
                      size: size,
                    ),
                    Spacer(
                      flex: 1,
                    ),
                    ProjectText(
                      name: "Ranking Youtube Videos",
                      title: "Sentiment Analysis Web App",
                      subtitle:
                          "Used NLP to rank YouTube videos using weighted ranking of their comments.",
                      redirectLink: true,
                      redirectPage: false,
                      size: size,
                      heading: Icon(
                        FontAwesomeIcons.github,
                        color: Colors.black54,
                        size: size.height * 0.03,
                      ),
                      link:
                          "https://github.com/sehejjain/Ranking-Youtube-Videos",
                    ),
                    Spacer(
                      flex: 1,
                    ),
                    ProjectText(
                      name: "IIITDMJ Companion",
                      title: "Coming Soon",
                      subtitle: "A Companion for IIITDMJ Students.",
                      //Helps newcomers to get acquainted and acclimatized to the College, and helps other students in keeping a track of their  of their life at college.
                      heading: Text(
                        "Team Members: Manish Pandey and Vishnu R",
                        style: GoogleFonts.montserrat(
                          fontSize: size.height * 0.018,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      redirectLink: false,
                      redirectPage: true,
                      size: size,
                    ),
                    Spacer(
                      flex: 1,
                    ),
                    ProjectText(
                      name: "Sanjeevani",
                      title: "A+ Grade in Flipr Hackathon 6.0",
                      subtitle:
                          "Developed a COVID mapper app according to the given guidelines within a specified Time Limit.",
                      heading: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap: () {
                              launch(
                                  "https://github.com/Fuzzy-Spork/Sanjivani");
                            },
                            child: Icon(
                              FontAwesomeIcons.github,
                              color: Colors.black54,
                              size: size.height * 0.03,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          InkWell(
                            onTap: () {
                              launch(
                                  "https://www.linkedin.com/feed/update/urn:li:activity:6714366472652656640/");
                            },
                            child: Icon(
                              FontAwesomeIcons.linkedin,
                              color: Colors.black54,
                              size: size.height * 0.03,
                            ),
                          ),
                        ],
                      ),
                      size: size,
                      redirectLink: false,
                      redirectPage: true,
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
                      name: "This is Us",
                      title: "Matching You to Your Cause",
                      subtitle:
                          "Developed an app to connects Volunteers and Organisations",
                      heading: Icon(
                        FontAwesomeIcons.github,
                        color: Colors.black54,
                        size: size.height * 0.03,
                      ),
                      link: "https://github.com/sehejjain/this-is-us-Flutter",
                      globalRedirect: "",
                      redirectLink: false,
                      redirectPage: true,
                      size: size,
                    ),
                    Spacer(
                      flex: 9,
                    ),
                    ProjectText(
                      name: "Ranking Youtube Videos",
                      title: "Sentiment Analysis Web App",
                      subtitle:
                          "We developed an app that used a Natural Language Processing Model to rank YouTube videos of different categories using weighted ranking of their comments.",
                      redirectLink: true,
                      redirectPage: false,
                      size: size,
                      heading: Icon(
                        FontAwesomeIcons.github,
                        color: Colors.black54,
                        size: size.height * 0.03,
                      ),
                      link:
                          "https://github.com/sehejjain/Ranking-Youtube-Videos",
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
    this.route = ComingSoon.route,
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
          width: size.width * 0.22,
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
                style: GoogleFonts.montserrat(fontSize: size.height * 0.02),
                textAlign: TextAlign.center,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: this.heading,
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
