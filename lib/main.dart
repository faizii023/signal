import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:signal/screens/home/UserList.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: Text(
            "Signal",
            style: GoogleFonts.ubuntu(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.w900,
            ),
          ),
          actions: <Widget>[
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                size: 30,
                color: Colors.black,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                MaterialCommunityIcons.dots_vertical,
                size: 30,
                color: Colors.black,
              ),
            )
          ],
        ),
        body:const UserList(),
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
              onPressed: () {},
              heroTag: null,
              backgroundColor: Colors.white,
              child: const Icon(Icons.photo),
            ),
            const SizedBox(height: 10),
            FloatingActionButton(
              onPressed: () {},
              backgroundColor: Colors.blueAccent,
              child: const Icon(
                Icons.edit,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
