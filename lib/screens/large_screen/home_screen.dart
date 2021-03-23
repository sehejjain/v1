import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/components/social_media_icon.dart';
import 'package:portfolio/models/icon_data.dart';

import 'package:portfolio/screens/large_screen/master_page.dart';

import 'coming_soon.dart';

class HomeScreen extends StatelessWidget {
  static const String route = '';
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xff222222),
      body: SafeArea(
        child: Stack(
          children: [
            Hero(
              tag: "Image",
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: size.height * 0.6,
                  child: FractionalTranslation(
                    translation: Offset(0.007, 0),
                    child: Image(
                      image: AssetImage("images/sehej.png"),
                    ),
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Row(
                children: [
                  SocialMediaIcon(
                    iconData: SocialMediaIconData(
                      icon: Icons.mail,
                      link: "mailto:2018225@iiitdmj.ac.in",
                    ),
                  ),
                  SocialMediaIcon(
                    iconData: SocialMediaIconData(
                      icon: FontAwesomeIcons.linkedin,
                      link: "https://www.linkedin.com/in/sehejjain/",
                    ),
                  ),
                  SocialMediaIcon(
                    iconData: SocialMediaIconData(
                      icon: FontAwesomeIcons.github,
                      link: "https://github.com/sehejjain",
                    ),
                  ),
                  SocialMediaIcon(
                    iconData: SocialMediaIconData(
                      icon: FontAwesomeIcons.instagram,
                      link: "https://www.instagram.com/sehej.on.the.offbeat/",
                    ),
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                width: size.width * 0.7,
                child: Column(
                  children: [
                    SizedBox(
                      height: size.height * 0.05,
                    ),
                    Text(
                      'Hey, I\'m Sehej',
                      style: GoogleFonts.oswald(
                        fontSize: size.height * 0.08,
                        color: Colors.orangeAccent,
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.03,
                    ),
                    Text(
                      "I am a 20-year-old Computer Science Undergrad from New Delhi."
                      "\nThe foci of my projects vary from building software solutions to developing ideas and doing research, but what I prize myself for is the ability to learn new things and then building upon them."
                      "\nMy aspirations in my life are centred around empowering people, and striving for inclusive and dynamic answers to the world’s problems.",
                      style: GoogleFonts.montserrat(
                          fontSize: size.height * 0.022, color: Colors.white54),
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
                      Spacer(
                        flex: 2,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => MasterPage(
                                index: 0,
                              ),
                            ),
                          );
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Projects",
                            style: GoogleFonts.montserrat(
                              fontSize: size.height * 0.05,
                              color: Colors.orangeAccent,
                            ),
                          ),
                        ),
                      ),
                      Spacer(
                        flex: 4,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => MasterPage(
                                index: 1,
                              ),
                            ),
                          );
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Publications",
                            style: GoogleFonts.montserrat(
                              fontSize: size.height * 0.05,
                              color: Colors.orangeAccent,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      Spacer(
                        flex: 2,
                      )
                    ],
                  ),
                  SizedBox(
                    height: size.height * 0.09,
                  ),
                  Row(
                    children: [
                      Spacer(
                        flex: 1,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => MasterPage(
                                index: 2,
                              ),
                            ),
                          );
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Experience",
                            style: GoogleFonts.montserrat(
                              fontSize: size.height * 0.05,
                              color: Colors.orangeAccent,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      Spacer(
                        flex: 5,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => MasterPage(
                                index: 3,
                              ),
                            ),
                          );
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "About",
                            style: GoogleFonts.montserrat(
                              fontSize: size.height * 0.05,
                              color: Colors.orangeAccent,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      Spacer(
                        flex: 1,
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
