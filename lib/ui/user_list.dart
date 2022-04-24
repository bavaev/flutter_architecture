import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import 'package:test_app/business/user.dart';
import 'package:test_app/data/database.dart';

class UserList extends StatefulWidget {
  const UserList({Key? key}) : super(key: key);

  @override
  State<UserList> createState() => _UserListState();
}

class _UserListState extends State<UserList> {
  User? user;

  DataBase get data => GetIt.I.get<DataBase>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('User List'),
      ),
      body: FutureBuilder(
        future: data.loadData(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            List<dynamic> data = jsonDecode(snapshot.data.toString());

            return ListView.builder(
              itemCount: data.length,
              itemBuilder: (snapshot, index) {
                return Text(data[index]['lastName']);
              },
            );
          }

          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
