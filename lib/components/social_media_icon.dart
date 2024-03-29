import 'package:flutter/material.dart';
import 'package:portfolio/models/icon_data.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialMediaIcon extends StatelessWidget {
  final SocialMediaIconData? iconData;
  const SocialMediaIcon({
    Key? key,
    this.iconData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(left: 10.0, bottom: 5),
      child: InkWell(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(
            iconData!.icon,
            size: size.height * 0.03,
            color: Colors.white54,
          ),
        ),
        onTap: () {
          launch(iconData!.link!);
        },
      ),
    );
  }
}
