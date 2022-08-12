import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Imtihon4 extends StatefulWidget {
  static var path = '/imtihon4';
  const Imtihon4({Key? key}) : super(key: key);

  @override
  State<Imtihon4> createState() => _Imtihon4State();
}

class _Imtihon4State extends State<Imtihon4> {
  bool _rememberMe = false;
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
                          onPressed: () {},
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
    return  DefaultTabController(
      initialIndex: 1,
      length: 2,
      child: Scaffold(
        body: SafeArea(child: Row(
          children: [
            Container(
              height: double.infinity,
              width: 280,
              child:  Padding(
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
                        width: 50,
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
                          width: 95,
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
                          width: 125,
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
                          width: 102,
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
                          width: 88,
                        ),
                        Icon(Icons.arrow_forward_ios, color: Colors.black)
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 240,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 270.0),
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
            Expanded(child: Container(
            color: const Color(0xFFB0A2F2),
            child: Padding(
              padding: const EdgeInsets.only(top: 30.0, left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:   [
                  const Text('Task List', style: TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.w400,
        ),),
        const SizedBox(height: 30,),
         const TabBar(
              tabs: <Widget>[
                Tab(
                  text: 'To Do'
                ),
                Tab(
                  text: 'Completed',
                ),
              ],
            ),
            const SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Container(
           height: 55,
           width: double.infinity,
           decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Colors.white,
           ),
           child: Padding(
             padding: const EdgeInsets.all(12.0),
             child: Row(
              children: [
                 Checkbox(
                                value: _rememberMe,
                                checkColor: Colors.white,
                                activeColor: Colors.black,
                                onChanged: ((value) {
                                  setState(() {
                                    _rememberMe = value!;
                                  });
                                }),
                              ),
                              const SizedBox(width: 20,),
                              RichText(
            text: const TextSpan(children: [
              TextSpan(
                  text: 'Task Name\n',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.black)),
              TextSpan(
                  text: 'Today - Note',
                  style: TextStyle(
                     color: Colors.grey)),
            ]),
          ),
          const SizedBox(width: 747,),
          Icon(Icons.star, color: Color.fromARGB(255, 255, 55, 0),)
              ],
             ),
           ),
              ),
            ),
            const SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Container(
           height: 55,
           width: double.infinity,
           decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Colors.white,
           ),
           child: Padding(
             padding: const EdgeInsets.all(12.0),
             child: Row(
              children: [
                 Checkbox(
                                value: _rememberMe,
                                checkColor: Colors.white,
                                activeColor: Colors.black,
                                onChanged: ((value) {
                                  setState(() {
                                    _rememberMe = value!;
                                  });
                                }),
                              ),
                              const SizedBox(width: 20,),
                              RichText(
            text: const TextSpan(children: [
              TextSpan(
                  text: 'Task Name\n',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.black)),
              TextSpan(
                  text: 'Note',
                  style: TextStyle(
                     color: Colors.grey)),
            ]),
          ),
          const SizedBox(width: 755,),
  Icon(Icons.star_border,)              ],
             ),
           ),
              ),
            ),
            const SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Container(
           height: 55,
           width: double.infinity,
           decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Colors.white,
           ),
           child: Padding(
             padding: const EdgeInsets.all(12.0),
             child: Row(
              children: [
                 Checkbox(
                                value: _rememberMe,
                                checkColor: Colors.white,
                                activeColor: Colors.black,
                                onChanged: ((value) {
                                  setState(() {
                                    _rememberMe = value!;
                                  });
                                }),
                              ),
                              const SizedBox(width: 20,),
                              RichText(
            text: const TextSpan(children: [
              TextSpan(
                  text: 'Task Name',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.black)),
            ]),
          ),
          const SizedBox(width: 755,),
  Icon(Icons.star_border,)              ],
             ),
           ),
              ),
            ),
            const SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Container(
           height: 55,
           width: double.infinity,
           decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Colors.white,
           ),
           child: Padding(
             padding: const EdgeInsets.all(12.0),
             child: Row(
              children: [
                 Checkbox(
                                value: _rememberMe,
                                checkColor: Colors.white,
                                activeColor: Colors.black,
                                onChanged: ((value) {
                                  setState(() {
                                    _rememberMe = value!;
                                  });
                                }),
                              ),
                              const SizedBox(width: 20,),
                              RichText(
            text: const TextSpan(children: [
              TextSpan(
                  text: 'Task Name\n',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.black)),
              TextSpan(
                  text: 'Wed, 30 Mar',
                  style: TextStyle(
                     color: Color(0xFFF85977))),
            ]),
          ),
          const SizedBox(width: 750,),
          Icon(Icons.star_border,)
              ],
             ),
           ),
              ),
            ),
            const SizedBox(height: 105,),
            Container(
                      padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
                      width: double.infinity,
                      child: CupertinoButton(
                        padding: EdgeInsets.all(10),
                        onPressed: () {},
                        borderRadius: BorderRadius.circular(30),
                        color: Color(0xFF988cd0),
                        child: const Text(
                          '+ Add a task',
                          style: TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255),
                            letterSpacing: 1.5,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
    
                ],
              ),
            ),
            ))
          ],
        )),
      ),
    );
  }
}