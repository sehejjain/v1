import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:social_media_buttons/social_media_buttons.dart';

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
        child: Center(
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
                    Center(
                      child: Row(
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
                    ),
                    Center(
                      child: Row(
                        children: [
                          SizedBox(
                            width: size.width * 0.1,
                          ),
                          SocialMediaButton.google(
                            url: "mailto:2018225@gmail.com",
                            size: 25,
                            color: Colors.black54,
                          ),
                          SocialMediaButton.linkedin(
                            url: "https://www.linkedin.com/in/sehejjain/",
                            size: 25,
                            color: Colors.black54,
                          ),
                          SocialMediaButton.instagram(
                            url:
                                "https://www.instagram.com/sehej.on.the.offbeat/",
                            size: 25,
                            color: Colors.black54,
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
      ),
    );
  }
}
