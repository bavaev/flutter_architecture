import 'dart:io';
import 'package:path_provider/path_provider.dart';

import 'package:test_app/business/user.dart';

class NewUser {
  User? user;

  Future<String> get _localPath async {
    final directory = await getApplicationDocumentsDirectory();
    return directory.path;
  }

  Future<File> get _localFile async {
    final path = await _localPath;
    return File('$path/counter.txt');
  }

  Future<File> createUser(String? newUser) async {
    final file = await _localFile;
    return file.writeAsString('$newUser');
  }
}
