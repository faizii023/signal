import 'package:flutter/material.dart';

class UserList extends StatelessWidget {
  const UserList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Text("User List "),
    );
  }
}

class SignalList extends StatefulWidget {
  const SignalList({super.key, required this.title});

  final String title;

  @override
  State<SignalList> createState() => _SignalListState();
}

class _SignalListState extends State<SignalList> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
