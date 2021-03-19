import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/components/social_media_icon.dart';
import 'package:portfolio/models/icon_data.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xff8ebeed),
      body: SafeArea(
        child: Stack(
          children: [
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: size.height * 0.65,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "sehej.png",
                    ),
                  ],
                ),
              ),
            ),
            // Align(
            //   alignment: Alignment.topRight,
            //   child: Container(
            //     padding: EdgeInsets.zero,
            //     // height: size.height * 0.2,
            //     child: Column(
            //       children: [
            //         SizedBox(
            //           height: 20,
            //         ),
            //         SocialMediaIcon(
            //           iconData: SocialMediaIconData(
            //             icon: Icons.mail,
            //             link: "mailto:2018225@iiitdmj.ac.in",
            //           ),
            //         ),
            //         SocialMediaIcon(
            //           iconData: SocialMediaIconData(
            //             icon: FontAwesomeIcons.linkedin,
            //             link: "https://www.linkedin.com/in/sehejjain/",
            //           ),
            //         ),
            //         SocialMediaIcon(
            //           iconData: SocialMediaIconData(
            //             icon: FontAwesomeIcons.github,
            //             link: "https://github.com/sehejjain",
            //           ),
            //         ),
            //         SocialMediaIcon(
            //           iconData: SocialMediaIconData(
            //             icon: FontAwesomeIcons.instagram,
            //             link: "https://www.instagram.com/sehej.on.the.offbeat/",
            //           ),
            //         ),
            //       ],
            //     ),
            //   ),
            // ),
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                width: size.width * 0.6,
                child: Column(
                  children: [
                    SizedBox(
                      height: size.height * 0.07,
                    ),
                    Text(
                      'Hey, I\'m Sehej',
                      style: GoogleFonts.montserratAlternates(
                        fontSize: 70,
                        color: Colors.black54,
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.04,
                    ),
                    Text(
                      "I am a 20-year-old Computer Science Undergrad from New Delhi."
                      "\nThe foci of my projects vary from building software solutions to developing ideas and doing research, but what I prize myself for is the ability to learn new things and then building upon them.",
                      style: GoogleFonts.montserrat(fontSize: 20),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Column(
                children: [
                  SizedBox(height: size.height * 0.45),
                  Row(
                    children: [
                      SizedBox(
                        width: size.width * 0.17,
                      ),
                      Text(
                        "Publications",
                        style: GoogleFonts.montserrat(
                          fontSize: 37,
                          color: Colors.black54,
                        ),
                      ),
                      Spacer(),
                      Text(
                        "Projects",
                        style: GoogleFonts.montserrat(
                          fontSize: 37,
                          color: Colors.black54,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        width: size.width * 0.17,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: size.height * 0.09,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: size.width * 0.14,
                      ),
                      SocialMediaIcon(
                        iconData: SocialMediaIconData(
                          icon: Icons.mail,
                          link: "mailto:2018225@iiitdmj.ac.in",
                        ),
                      ),
                      Spacer(),
                      SocialMediaIcon(
                        iconData: SocialMediaIconData(
                          icon: FontAwesomeIcons.github,
                          link: "https://github.com/sehejjain",
                        ),
                      ),
                      SizedBox(
                        width: size.width * 0.14,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: size.height * 0.09,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: size.width * 0.1,
                      ),
                      SocialMediaIcon(
                        iconData: SocialMediaIconData(
                          icon: FontAwesomeIcons.linkedin,
                          link: "https://www.linkedin.com/in/sehejjain/",
                        ),
                      ),
                      Spacer(),
                      SocialMediaIcon(
                        iconData: SocialMediaIconData(
                          icon: FontAwesomeIcons.instagram,
                          link:
                              "https://www.instagram.com/sehej.on.the.offbeat/",
                        ),
                      ),
                      SizedBox(
                        width: size.width * 0.1,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
