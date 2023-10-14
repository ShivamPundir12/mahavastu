// ignore_for_file: unused_local_variable
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:mahavastu/screen/homescreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  late Timer timer;
  @override
  void initState() {
    timer = Timer(
      Duration(seconds: 9),
      () => Navigator.pushReplacement(
        context,
        PageRouteBuilder(
          // transitionDuration: Duration(seconds: ),
          pageBuilder: ((BuildContext context, animation, secondaryAnimation) {
            return HomeScreen();
          }),
        ),
      ),
    );
    super.initState();
  }

  void dispose() {
    timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        child: Image.asset(
          'assets/splash.gif',
          fit: BoxFit.fitHeight,
        ),
      ),
    );
  }
}
