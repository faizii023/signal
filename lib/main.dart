import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:redux_thunk/redux_thunk.dart';
import 'package:signal/screens/auth/Login.dart';
import 'package:signal/screens/auth/onboarding_screen.dart';
import 'package:signal/store/reducer.dart';

// Initial state/store values
final store = Store<ChatState>(allReducers,
    initialState: ChatState(
        errorMessage: "",
        messages: [],
        activeUser: "",
        activeRoom: "",
        allUser: [],
        isAuthenticated: false,
        user: null,
        logLoading: false,
        regLoading: false),
    middleware: [thunkMiddleware]);

Future<void> main() async {
  runApp(MyApp(store: store));
}

class MyApp extends StatelessWidget {
  final Store<ChatState> store;

  MyApp({super.key, required this.store});

  @override
  Widget build(BuildContext context) {
    return StoreProvider(
      store: store,
      child: MaterialApp(
        title: 'Flutter Signal App',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        initialRoute: "onboarding",
        routes: {
          "onboarding": (BuildContext context) => Onboarding(),
          "login": (BuildContext context) => Login(),
        },
        // home: const SafeArea(
        //   child: Scaffold(),
        // ),
      ),
    );
  }
}
