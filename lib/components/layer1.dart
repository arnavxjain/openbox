import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sandbox/globals.dart';
import 'package:sandbox/screens/home.dart';

class Layer1 extends StatefulWidget {
  final String name;
  const Layer1({super.key, required this.name});

  @override
  State<Layer1> createState() => _Layer1State();
}

class _Layer1State extends State<Layer1> {

  String current = 'home';

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    current = Globals.screenState;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF181818),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 40.0, left: 26, right: 26),
          child: Column(
            children: [
              Text("Good Morning, Nikki", style: TextStyle(color: Colors.white, fontFamily: "monext", fontSize: 18),),
              // if (current == 'home') Container(child: Text('home', style: TextStyle(color: Colors.white),),)
              // else if (current == 'stats') Container(child: Text('stats', style: TextStyle(color: Colors.white)),)
              // else if (current == 'link') Container(child: Text('link', style: TextStyle(color: Colors.white)),)
              // else Container(child: Text('prof', style: TextStyle(color: Colors.white)),)
            ],
          ),
        ),
      ),
    );
  }
}
