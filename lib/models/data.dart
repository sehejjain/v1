import 'package:json_annotation/json_annotation.dart';
import 'package:portfolio/models/icon_data.dart';

// RUN: flutter pub run build_runner build

@JsonSerializable()
class Data {
  final String name;
  final String description;
  final List<SocialMediaIconData> icons;

  Data(this.name, this.description, this.icons);
}
