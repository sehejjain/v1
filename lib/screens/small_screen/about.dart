import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
        // Hero(
        //   tag: "Image",
        //   child: Align(
        //     alignment: Alignment.bottomRight,
        //     child: Container(
        //       height: size.height * 0.6,
        //       child: FractionalTranslation(
        //         translation: Offset(0.007, 0),
        //         child: Image(
        //           image: AssetImage("images/sehej.png"),
        //         ),
        //       ),
        //     ),
        //   ),
        // ),
        Align(
          alignment: Alignment.center,
          child: Column(
            children: [
              // Text("Hi"),
              SizedBox(
                height: size.height * 0.04,
              ),
              // Hero(
              //   tag: "desc",
              //   child: Container(
              //     width: size.width * 0.6,
              //     child: Padding(
              //       padding: const EdgeInsets.all(8.0),
              //       child: Text(
              //         "I am a 21-year-old Computer Science Undergrad from New Delhi."
              //         "\nThe foci of my projects vary from building software solutions to developing ideas and doing research, but what I prize myself for is the ability to learn new things and then building upon them."
              //         "\nMy aspirations in my life are centred around empowering people, and striving for inclusive and dynamic answers to the world’s problems.",
              //         style: GoogleFonts.montserrat(
              //           fontSize: size.height * 0.027,
              //           color: Colors.white54,
              //         ),
              //         textAlign: TextAlign.center,
              //       ),
              //     ),
              //   ),
              // ),
              SizedBox(
                height: size.height * 0.1,
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  padding: EdgeInsets.all(10),
                  width: size.width * 0.9,
                  child: Column(
                    children: [
                      Text(
                        "I will be graduating from IIIT Jabalpur in May 2022, with a B.Tech in Computer Science and Engineering. \nHere are a few skills that I consider myself proficient in:",
                        style: GoogleFonts.montserrat(
                            fontSize: size.height * 0.027,
                            color: Colors.white54),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: size.height * 0.04,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Text(
                              "\u2022 Soft Computing",
                              style: GoogleFonts.montserrat(
                                  fontSize: size.height * 0.027,
                                  color: Colors.white54),
                              textAlign: TextAlign.center,
                            ),
                            Text(
                              "\u2022 Artificial Intelligence",
                              style: GoogleFonts.montserrat(
                                  fontSize: size.height * 0.027,
                                  color: Colors.white54),
                              textAlign: TextAlign.center,
                            ),
                            Text(
                              "\u2022 Machine Learning",
                              style: GoogleFonts.montserrat(
                                  fontSize: size.height * 0.027,
                                  color: Colors.white54),
                              textAlign: TextAlign.center,
                            ),
                            Text(
                              "\u2022 Research",
                              style: GoogleFonts.montserrat(
                                  fontSize: size.height * 0.027,
                                  color: Colors.white54),
                              textAlign: TextAlign.center,
                            ),
                            Text(
                              "\u2022 Python Programming",
                              style: GoogleFonts.montserrat(
                                  fontSize: size.height * 0.027,
                                  color: Colors.white54),
                              textAlign: TextAlign.center,
                            ),
                            Text(
                              "\u2022 Flutter Development",
                              style: GoogleFonts.montserrat(
                                  fontSize: size.height * 0.027,
                                  color: Colors.white54),
                              textAlign: TextAlign.center,
                            ),
                            Text(
                              "\u2022 Data Science Techniques",
                              style: GoogleFonts.montserrat(
                                  fontSize: size.height * 0.027,
                                  color: Colors.white54),
                              textAlign: TextAlign.center,
                            ),
                            Text(
                              "\u2022 Data Structures and Algorithms",
                              style: GoogleFonts.montserrat(
                                  fontSize: size.height * 0.027,
                                  color: Colors.white54),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      )
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
