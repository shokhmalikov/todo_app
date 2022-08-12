import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'imtihon4.dart';

class MyIntro extends StatefulWidget {
  static var path = '/intro';
  const MyIntro({Key? key}) : super(key: key);

  @override
  State<MyIntro> createState() => _MyIntroState();
}

class _MyIntroState extends State<MyIntro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Row(
        children: [
          Container(
            height: double.infinity,
            width: 450,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 120.0, left: 75),
                  child: Image.asset('assets/imtihon/logo.png'),
                ),
                SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(
                        height: 60,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(right: 90.0),
                        child: Text(
                          'Welcome to\nUno to Do!',
                          style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      const Center(
                        child: Text(
                          '''Start using the best to-do app, you can
create and manage your To Do lists to 
improve your organization.''',
                          style: TextStyle(
                            color: Color(0xFF5835E5),
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 60,
                      ),
                      CupertinoButton(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 125, vertical: 8),
                        onPressed: () {
                          Navigator.pushNamed(context, Imtihon4.path);
                        },
                        borderRadius: BorderRadius.circular(30),
                        color: const Color(0xFF5835E5),
                        child: const Text(
                          'Get started',
                          style: TextStyle(
                            color: Colors.white,
                            letterSpacing: 1.5,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
              child: Container(
                color: Color.fromARGB(255, 231, 229, 249),
                child: Image.asset('assets/imtihon/image1.png'),
                ))
        ],
      ),
    ));
  }
}
