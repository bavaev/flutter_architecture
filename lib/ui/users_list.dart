import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import 'package:test_app/business/user.dart';
import 'package:test_app/data/database.dart';

class UsersList extends StatefulWidget {
  const UsersList({Key? key}) : super(key: key);

  @override
  State<UsersList> createState() => _UsersListState();
}

class _UsersListState extends State<UsersList> {
  User? user;

  DataBase get data => GetIt.I.get<DataBase>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Users List'),
      ),
      body: FutureBuilder(
        future: data.loadData(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            List<dynamic> data = jsonDecode(snapshot.data.toString());
            return ListView.builder(
              itemCount: data.length,
              itemBuilder: (snapshot, index) {
                return ListTile(
                  title: Text('${data[index]['lastName']} ${data[index]['firstName']} - ${data[index]['age']} лет'),
                );
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
