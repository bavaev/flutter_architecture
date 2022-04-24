import 'package:flutter/services.dart';

class DataBase {
  Future<String> loadData() async {
    try {
      return await rootBundle.loadString('assets/users_list.json');
    } catch (e) {
      return 'Error';
    }
  }
}
