import 'package:flutter/material.dart';
import 'package:portfolio/components/publication_card.dart';
import 'package:portfolio/data/publications.dart';

class PublicationsScreen extends StatefulWidget {
  @override
  _PublicationsScreenState createState() => _PublicationsScreenState();
}

class _PublicationsScreenState extends State<PublicationsScreen> {
  getPublication(Size size, int index) {
    return PublicationCard(
      project: publications["publications"][index],
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
              itemCount: publications["publications"].length,
              itemBuilder: (context, int index) {
                return GridTile(
                  child: getPublication(size, index),
                );
              }),
        ),
      ],
    );
  }
}
