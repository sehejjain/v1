import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/models/icon_data.dart';
import 'package:social_media_buttons/social_media_buttons.dart';
import 'package:url_launcher/url_launcher.dart';
import 'project_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xff8ebeed),
      body: Container(
        child: Stack(
          children: [
            Align(
              alignment: Alignment.bottomRight,
              child: Image.asset(
                'assets/sehej_new.png',
                fit: BoxFit.scaleDown,
              ),
            ),
            Container(
              height: size.height,
              width: size.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: size.width * 0.1,
                      ),
                      Text(
                        'Hey, I\'m Sehej',
                        style: GoogleFonts.montserratAlternates(
                          fontSize: 70,
                          color: Colors.black54,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: size.width * 0.1,
                      ),
                      Container(
                        width: size.width * 0.5,
                        child: Text(
                          "I am a 20-year-old Computer Science Undergrad from New Delhi."
                          "\nThe focus of my projects varies from building software solutions to building things for the internet, but what I prize myself for is the ability to learn new things and build upon them in my problem-solving process.",
                          style: GoogleFonts.montserrat(fontSize: 20),
                        ),
                      ),
                    ],
                  ),
                  Center(
                    child: Row(
                      children: [
                        SizedBox(
                          width: size.width * 0.1,
                        ),
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
                            link:
                                "https://www.instagram.com/sehej.on.the.offbeat/",
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.05,
                  ),
                  Center(
                    child: Row(
                      children: [
                        SizedBox(
                          width: size.width * 0.1,
                        ),
                        SizedBox(
                          width: size.width * 0.1,
                          height: size.height * 0.01,
                          child: Container(
                            color: Colors.black54,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Center(
                    child: Row(
                      children: [
                        SizedBox(
                          width: size.width * 0.1,
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => ProjectScreen(),
                                  ));
                            });
                          },
                          hoverColor: Colors.transparent,
                          child: Text(
                            'Projects',
                            style: GoogleFonts.montserratAlternates(
                              fontSize: 35,
                              color: Colors.black54,
                            ),
                          ),
                        ),
                      ],
                    ),
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

class SocialMediaIcon extends StatelessWidget {
  final SocialMediaIconData iconData;
  const SocialMediaIcon({
    Key key,
    this.iconData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 6.0, right: 6.0),
      child: InkWell(
        child: Icon(
          iconData.icon,
          size: 25,
          color: Colors.black54,
        ),
        onTap: () {
          launch(iconData.link);
        },
      ),
    );
  }
}
