import 'package:flutter/material.dart';
import 'package:portfolio/components/project_card.dart';
import 'package:portfolio/data/projects.dart';

class ProjectsScreen extends StatefulWidget {
  @override
  _ProjectsScreenState createState() => _ProjectsScreenState();
}

class _ProjectsScreenState extends State<ProjectsScreen> {
  getProjects(Size size) {
    List<ProjectCard> cards = [];
    for (var project in projects["projects"]) {
      cards.add(ProjectCard(
          size: MediaQuery.of(context).size,
          name: project["name"],
          title: project["title"],
          subtitle: project["subtitle"],
          extra: project["team"]));
    }
    return cards;
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      child: GridView.count(
        crossAxisCount: 3,
        childAspectRatio: size.width / (size.height * 1.5),
        children: getProjects(size),
      ),
    );
  }
}
