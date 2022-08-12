import 'package:flutter/material.dart';
import '../Responsive/desktop/intro.dart';
import '../Responsive/mobile/imtihon.dart';
import '../Responsive/responsive_layout.dart';

class HomePage extends StatefulWidget {
  static var path = '/home_page';
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
     body: ResponsiveLayout(
      mobileBody: Imtihon(), 
      desktopBody: MyIntro(),
      ),
    );
  }
}