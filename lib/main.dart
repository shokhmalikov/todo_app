import 'package:flutter/material.dart';
import 'package:imtihon2/Responsive/desktop/imtihon4.dart';
import 'package:imtihon2/Responsive/desktop/intro.dart';
import 'package:imtihon2/Responsive/mobile/imtihon.dart';
import 'package:imtihon2/Responsive/mobile/imtihon2.dart';
import 'package:imtihon2/Responsive/mobile/imtihon3.dart';
import 'package:imtihon2/SplashPage/splash.dart';

import 'HomePage/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        Imtihon.path:(context) => const Imtihon(),
        HomePage.path:(context) => const HomePage(),
        Imtihon2.path:(context) => const Imtihon2(),
        Imtihon3.path:(context) => const Imtihon3(),
        Imtihon4.path:(context) => const Imtihon4(),
        SplashPage.path:(context) => const SplashPage(),
        MyIntro.path:(context) => const MyIntro(),
      },
      home: const SplashPage(),
    );
  }
}
