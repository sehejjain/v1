import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/components/social_media_icon.dart';
import 'package:portfolio/models/icon_data.dart';

class AboutScreen extends StatefulWidget {
  @override
  _AboutScreenState createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Hero(
          tag: "Image",
          child: Align(
            alignment: Alignment.bottomRight,
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
          alignment: Alignment.center,
          child: Column(
            children: [
              Text("Hi"),
              Hero(
                tag: "desc",
                child: Container(
                  width: size.width * 0.6,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "I am a 20-year-old Computer Science Undergrad from New Delhi."
                      "\nThe foci of my projects vary from building software solutions to developing ideas and doing research, but what I prize myself for is the ability to learn new things and then building upon them."
                      "\nMy aspirations in my life are centred around empowering people, and striving for inclusive and dynamic answers to the world’s problems.",
                      style: GoogleFonts.montserrat(
                          fontSize: size.height * 0.027, color: Colors.white54),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: size.height * 0.1,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  width: size.width * 0.5,
                  child: Column(
                    children: [
                      Text(
                        "I will be graduating from IIIT Jabalpur in May 2022, with a B.Tech in Computer Science and Engineering. Here are a few technologies that I have been working with recently:",
                        style: GoogleFonts.montserrat(
                            fontSize: size.height * 0.027,
                            color: Colors.white54),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
