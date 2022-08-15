import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


import 'imtihon2.dart';

class Imtihon extends StatefulWidget {
  static var path = 'imtihon';
  const Imtihon({Key? key}) : super(key: key);

  @override
  State<Imtihon> createState() => _ImtihonState();
}

class _ImtihonState extends State<Imtihon> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 40.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                   Image.asset('assets/imtihon/image1.png'),
                   const SizedBox(height: 80,),
                   const Text('Welcome to\n  Uno to Do!',
                   style: TextStyle(
                    fontSize: 38,
                    fontWeight: FontWeight.w400,
                   ),
                   ),
                   const SizedBox(height: 15,),
                   const Text('Start using the best To Do app',
                   style: TextStyle(
                    color: Color(0xFF5835E5),
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                   ),
                   ),
                   const SizedBox(height: 80,),
                    CupertinoButton(
                            padding: const EdgeInsets.symmetric(horizontal: 110, vertical: 15),
                            onPressed: () {
                              Navigator.pushNamed(context, Imtihon2.path);
                            },
                            borderRadius: BorderRadius.circular(30),
                            color: const Color(0xFF5835E5),
                            child: const Text(
                              'Get started',
                              style: TextStyle(
                                color: Colors.white,
                                letterSpacing: 1.5,
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
          
              ],
            ),
          ),
        ),
      ),
    );
  }
}