import 'package:json_annotation/json_annotation.dart';
import 'package:portfolio/models/icon_data.dart';

// RUN: flutter pub run build_runner build

@JsonSerializable()
class Data {
  String name;
  String description;
  List<SocialMediaIconData> icons;
}
