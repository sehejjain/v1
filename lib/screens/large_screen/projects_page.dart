import 'package:flutter/material.dart';
import 'package:portfolio/components/project_card.dart';
import 'package:portfolio/data/projects.dart';

class ProjectsScreen extends StatefulWidget {
  @override
  _ProjectsScreenState createState() => _ProjectsScreenState();
}

class _ProjectsScreenState extends State<ProjectsScreen> {
  getProject(Size size, int index) {
    return ProjectCard(
      project: projects["projects"][index],
      size: MediaQuery.of(context).size,
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        SizedBox(
          height: size.height * 0.1,
        ),
        Expanded(
          child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: size.width > 1000
                      ? 3
                      : size.width > 700
                          ? 2
                          : 1,
                  mainAxisSpacing: 0,
                  mainAxisExtent: size.height / 2.5),
              itemCount: projects["projects"].length,
              itemBuilder: (context, int index) {
                return GridTile(
                  child: getProject(size, index),
                );
              }),
        ),
      ],
    );
  }
}
