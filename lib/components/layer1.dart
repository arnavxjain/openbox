import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sandbox/screens/home.dart';

class Layer1 extends StatefulWidget {
  final String name;
  const Layer1({super.key, required this.name});

  @override
  State<Layer1> createState() => _Layer1State();
}

class _Layer1State extends State<Layer1> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF181818),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Center(child: Text("Good Morning, ${widget.name}", style: TextStyle(color: Colors.white, fontFamily: "monext", fontSize: 16),)),
            )
          ],
        ),
      ),
    );
  }
}
