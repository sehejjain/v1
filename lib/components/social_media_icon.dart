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
      padding: const EdgeInsets.only(right: 10.0, bottom: 25),
      child: InkWell(
        child: Icon(
          iconData!.icon,
          size: size.height * 0.06,
          color: Colors.black54,
        ),
        onTap: () {
          launch(iconData!.link!);
        },
      ),
    );
  }
}
