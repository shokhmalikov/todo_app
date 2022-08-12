import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'imtihon3.dart';

class Imtihon2 extends StatefulWidget {
  static var path = '/imtihon2';
  const Imtihon2({Key? key}) : super(key: key);

  @override
  State<Imtihon2> createState() => _Imtihon2State();
}

class _Imtihon2State extends State<Imtihon2> {
 void _showDialog(){
  showDialog(context: context, builder: (context)=> AlertDialog(
                      title: const Text('New List'),
                      content: const TextField(
                        decoration: InputDecoration(
                          hintText: 'Enter list title'
                        ),
                      ),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: const Text('Cancel', style: 
                          TextStyle(
                            color:  Color(0xFF5835E5),
                          ),),
                        ),
                        CupertinoButton(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 25, vertical: 8),
                          onPressed: () {
                            Navigator.pushNamed(context, Imtihon3.path);
                          },
                          borderRadius: BorderRadius.circular(30),
                          color: const Color(0xFF5835E5),
                          child: const Text(
                            '+ Create',
                            style: TextStyle(
                              color: Colors.white,
                              letterSpacing: 1.5,
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ],
                    ));
 }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 25.0, left: 20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      height: 38,
                      width: 38,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xFF5946D2),
                      ),
                      child: const Center(
                        child: Text(
                          'AB',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    const Text(
                      'Antonio Bonilla',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(
                      width: 170,
                    ),
                    const Icon(
                      Icons.search,
                      color: Color(0xFF5946D2),
                    )
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Icon(
                        Icons.star,
                        color: Color(0xFFF85977),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        'Important',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        width: 220,
                      ),
                      Icon(Icons.arrow_forward_ios, color: Colors.black)
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Icon(
                        Icons.home,
                        color: Color(0xFF5946D2),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        'Tasks',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        width: 252,
                      ),
                      Icon(Icons.arrow_forward_ios, color: Colors.black)
                    ],
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                const Padding(
                  padding: EdgeInsets.only(right: 20.0),
                  child: Divider(
                    thickness: 1,
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Icon(
                        Icons.list,
                        color: Color(0xFF5946D2),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        'Task List',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        width: 228,
                      ),
                      Icon(Icons.arrow_forward_ios, color: Colors.black)
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Icon(
                        Icons.list,
                        color: Color(0xFF5946D2),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        'House List',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        width: 214,
                      ),
                      Icon(Icons.arrow_forward_ios, color: Colors.black)
                    ],
                  ),
                ),
                const SizedBox(
                  height: 400,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 280.0),
                  child: Builder(
                    builder: (context) {
                      return TextButton(
                        onPressed:_showDialog,
                        child: const Text(
                          '+ New List',
                          style: TextStyle(
                            color: Color(0xFF5946D2),
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      );
                    }
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
