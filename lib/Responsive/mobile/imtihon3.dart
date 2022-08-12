import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Imtihon3 extends StatefulWidget {
  static var path = '/imtihon3';
  const Imtihon3({Key? key}) : super(key: key);

  @override
  State<Imtihon3> createState() => _Imtihon3State();
}

class _Imtihon3State extends State<Imtihon3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor: Color(0xFFB0A2F2),
     appBar: AppBar(
      backgroundColor:  Color(0xFFB0A2F2) ,
      bottomOpacity: 0,
      elevation: 0,
      title: const Text('Task List', style: TextStyle(
        color: Colors.white,
        fontSize: 24,
        fontWeight: FontWeight.w400,
      ),),
     ),
    );
  }
}