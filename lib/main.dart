import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import 'package:test_app/ui/user_list.dart';
import 'package:test_app/data/database.dart';

void main() {
  final data = DataBase();
  GetIt.I.registerSingleton(data);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: UserList(),
    );
  }
}
