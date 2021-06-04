import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/components/social_media_icon.dart';
import 'package:portfolio/models/icon_data.dart';

import 'package:flutter/scheduler.dart';

class HomeScreen extends StatelessWidget {
  static const String route = '';

  @override
  Widget build(BuildContext context) {
    timeDilation = 2;
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xff222222),
      body: SafeArea(
        child: Stack(
          children: [
            Hero(
              tag: "Image",
              child: Align(
                alignment: Alignment.bottomRight,
                child: Image(
                  image: AssetImage("images/sehej.png"),
                ),
              ),
            ),
            Hero(
              tag: "Social",
              child: Align(
                alignment: Alignment.bottomRight,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
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
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                width: size.width * 0.8,
                child: Column(
                  children: [
                    SizedBox(
                      height: size.height * 0.05,
                    ),
                    Text(
                      'Hey, I\'m Sehej',
                      style: GoogleFonts.oswald(
                        fontSize: size.height * 0.07,
                        color: Colors.orangeAccent,
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.03,
                    ),
                    Hero(
                      tag: "desc",
                      child: Text(
                        "I am a 21-year-old Computer Science Undergrad from New Delhi."
                        "\nThe foci of my projects vary from building software solutions to developing ideas and doing research, but what I prize myself for is the ability to learn new things and then building upon them."
                        "\nMy aspirations in my life are centred around empowering people, and striving for inclusive and dynamic answers to the world’s problems.",
                        style: GoogleFonts.montserrat(
                            fontSize: size.height * 0.022,
                            color: Colors.white54),
                        textAlign: TextAlign.center,
                      ),
                    ),

                    SizedBox(height: size.height * 0.02),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, "/projects");
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Projects",
                              style: GoogleFonts.montserrat(
                                fontSize: size.height * 0.035,
                                color: Colors.orangeAccent,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, "/publications");
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Publications",
                              style: GoogleFonts.montserrat(
                                fontSize: size.height * 0.035,
                                color: Colors.orangeAccent,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ],
                    ),
                    // SizedBox(
                    //   height: size.height * 0.06,
                    // ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, "/experience");
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Experience",
                              style: GoogleFonts.montserrat(
                                fontSize: size.height * 0.035,
                                color: Colors.orangeAccent,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, "/about");
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "About",
                              style: GoogleFonts.montserrat(
                                fontSize: size.height * 0.035,
                                color: Colors.orangeAccent,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
