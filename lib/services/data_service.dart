import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;

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
