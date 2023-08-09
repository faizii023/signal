import 'package:flutter/material.dart';
import "package:redux/redux.dart";
import 'package:shared_preferences/shared_preferences.dart';
import 'package:signal/store/reducer.dart';

//Load user
Future<void> loadUser({Store<ChatState>? store, BuildContext? context}) async {
  SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
  String _token=sharedPreferences.getString("token")??"";
  final url=Uri.parse('uri');
}

//Login User
Future<void> loginUser() async {}

//Register User
Future<void> registerUser() async {}
