import 'dart:async';
import 'package:flutter/material.dart';

import '../HomePage/homepage.dart';
import '../Responsive/mobile/imtihon.dart';
//import 'home_page.dart';

class SplashPage extends StatefulWidget {
  static var path = '/splash';
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
 Size? _size;
  @override
  void didChangeDependencies() {
    _size = MediaQuery.of(context).size;

    ///timer
    Timer(const Duration(seconds: 3), () {
     Navigator.of(context)
         .pushNamedAndRemoveUntil(HomePage.path, (route) => false);
    });
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
      body: Center(
        child: Image.asset('assets/imtihon/splash.png', width: _size!.width * 0.4),
      ),
    );
  }
}