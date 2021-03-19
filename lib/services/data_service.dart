import 'dart:convert';

import 'package:portfolio/models/data.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:provider/provider.dart';

class DataService {
  var jsonString;
  DataService() {
    getData();
  }

  get data {
    return jsonDecode(jsonString);
  }

  Future<String> _loadFromAsset() async {
    return await rootBundle.loadString("assets/data.json");
  }

  Future parseJson() async {
    jsonString = await _loadFromAsset();
  }

  Future getData() async {
    await parseJson();
  }
}
