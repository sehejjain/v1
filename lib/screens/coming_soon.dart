import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ComingSoon extends StatefulWidget {
  @override
  _ComingSoonState createState() => _ComingSoonState();
}

class _ComingSoonState extends State<ComingSoon> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Sehej Jain',
                style: GoogleFonts.oswald(fontSize: 70, color: Colors.white70),
              ),
              SizedBox(
                height: 11,
              ),
              Text(
                'Coming Soon',
                style:
                    GoogleFonts.montserrat(fontSize: 50, color: Colors.white70),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
