import 'dart:convert';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:signal/extensions.dart';
import 'package:signal/inbox/inbox.dart';

import '../../model/Models.dart';

class UserList extends StatelessWidget {
  const UserList({super.key});

  @override
  Widget build(BuildContext context) {
    return const SignalList(title: "User");
  }
}

class SignalList extends StatefulWidget {
  const SignalList({super.key, required this.title});

  final String title;

  @override
  State<SignalList> createState() => _SignalListState();
}

class _SignalListState extends State<SignalList> {
  Future<List<User>> _getUsers() async {
    var data =
        await http.get(Uri.parse("https://jsonplaceholder.typicode.com/users"));
    var jsonData = jsonDecode(data.body);
    List<User> users = [];
    for (var u in jsonData) {
      User user = User(id: u['id'],name: u['name'],email: u['email']);
      users.add(user);
    }

    return users;
  }

  @override
  void initState() {
    super.initState();
    _getUsers();
  }

  Color getRandomColor() {
    return Color(Random().nextInt(0xFFFFFFFF)).withOpacity(1.0);
  }

  Color getContrastingTextColor(Color backgroundColor) {
    return backgroundColor.computeLuminance() > 0.5
        ? Colors.black
        : Colors.white;
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: _getUsers(),
        initialData: const [],
        builder: (context, snapshot) {
          if (snapshot.data == null) {
            return const Center(
              child: Text("Loading ..."),
            );
          } else {
            return ListView.builder(
                itemCount: snapshot.data?.length,
                itemBuilder: (context, index) {
                  Color bgColor = getRandomColor();
                  Color textColor = getContrastingTextColor(bgColor);
                  return InkWell(
                    splashColor: bgColor,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>  Inbox(name:snapshot.data?[index].name ),
                        ),
                      );
                    },
                    child: Ink(
                      child: ListTile(
                        leading: CircleAvatar(
                          backgroundColor: bgColor,
                          foregroundColor: textColor,
                          child: Text(
                              "${snapshot.data?[index].name.toString().initials}"),
                        ),
                        title: Text(snapshot.data?[index].name),
                        subtitle:
                            Text("${snapshot.data?[index].name} is on Signal"),
                        trailing: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[Text("Feb 4")],
                        ),
                      ),
                    ),
                  );
                });
          }
        });
  }
}
