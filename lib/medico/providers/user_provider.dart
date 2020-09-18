import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;

class _UserProvider {
  List<dynamic> users = [];

  _UserProvider() {
    // cargarData();
  }

  Future<List<dynamic>> cargarData() async {
    final resp = await rootBundle.loadString('data/user_data.json');
    Map dataMap = json.decode(resp);
    users = dataMap['usuarios'];
    return users;
  }
}

final userProvider = new _UserProvider();
