import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/screens/large_screen/projects_page.dart';

class MasterPage extends StatefulWidget {
  final int index;

  MasterPage({Key? key, this.index = 1}) : super(key: key);
  @override
  _MasterPageState createState() => _MasterPageState();
}

class _MasterPageState extends State<MasterPage> {
  // final arg = ModalRoute.of(context)!.settings.arguments;
  int _selectedIndex = 1;

  List<String> tabs = [
    "Home",
    "Projects",
    "Publications",
    "Experience",
    "About"
  ];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xff222222),
      appBar: AppBar(
        backgroundColor: Color(0xff222222),
        elevation: 0,
        title: Text(
          "projects",
          style: GoogleFonts.oswald(
            fontSize: size.height * 0.05,
            color: Colors.orangeAccent,
          ),
        ),
      ),
      body: SafeArea(
        child: Row(
          children: [
            LayoutBuilder(builder: (context, constraint) {
              return SingleChildScrollView(
                child: ConstrainedBox(
                  constraints: BoxConstraints(minHeight: constraint.maxHeight),
                  child: IntrinsicHeight(
                    child: NavigationRail(
                      backgroundColor: Colors.transparent,
                      selectedIndex: _selectedIndex,
                      onDestinationSelected: (int index) {
                        setState(() {
                          _selectedIndex = index;
                        });
                      },
                      unselectedIconTheme: IconThemeData(color: Colors.white60),
                      selectedLabelTextStyle: GoogleFonts.oswald(
                        color: Colors.orangeAccent,
                        fontSize: 14,
                        letterSpacing: 1,
                        decorationThickness: 2.0,
                      ),
                      unselectedLabelTextStyle: GoogleFonts.oswald(
                        fontSize: 13,
                        letterSpacing: 0.8,
                        color: Colors.white60,
                      ),
                      labelType: NavigationRailLabelType.all,
                      destinations: [
                        NavigationRailDestination(
                          icon: SizedBox.shrink(),
                          label: Padding(
                            padding: EdgeInsets.symmetric(vertical: 8),
                            child: RotatedBox(
                              quarterTurns: -1,
                              child: Text(
                                "Home",
                              ),
                            ),
                          ),
                        ),
                        NavigationRailDestination(
                          icon: SizedBox.shrink(),
                          label: Padding(
                            padding: EdgeInsets.symmetric(vertical: 8),
                            child: RotatedBox(
                              quarterTurns: -1,
                              child: Text(
                                "Projects",
                              ),
                            ),
                          ),
                        ),
                        NavigationRailDestination(
                          icon: SizedBox.shrink(),
                          label: Padding(
                            padding: EdgeInsets.symmetric(vertical: 8),
                            child: RotatedBox(
                              quarterTurns: -1,
                              child: Text(
                                "Publications",
                              ),
                            ),
                          ),
                        ),
                        NavigationRailDestination(
                          icon: SizedBox.shrink(),
                          label: Padding(
                            padding: EdgeInsets.symmetric(vertical: 8),
                            child: RotatedBox(
                              quarterTurns: -1,
                              child: Text(
                                "Experience",
                              ),
                            ),
                          ),
                        ),
                        NavigationRailDestination(
                          icon: SizedBox.shrink(),
                          label: Padding(
                            padding: EdgeInsets.symmetric(vertical: 8),
                            child: RotatedBox(
                              quarterTurns: -1,
                              child: Text(
                                "About",
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            }),
            VerticalDivider(thickness: 1, width: 1),
            Expanded(
              child: ProjectsScreen(),
            ),
          ],
        ),
      ),
    );
  }
}