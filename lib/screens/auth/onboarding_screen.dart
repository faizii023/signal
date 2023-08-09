import 'package:flutter/material.dart';
import 'package:localstorage/localstorage.dart';
import 'package:signal/main.dart';
import 'package:signal/store/actions/authActions.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 1), () {
      store.dispatch(
          loadUser(store: store, context: context));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/welcome.png"),
              fit: BoxFit.fitHeight),
        ),
      ),
    );
  }
}
