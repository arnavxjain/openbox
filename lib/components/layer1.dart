import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Layer1 extends StatefulWidget {
  const Layer1({super.key});

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
            Text("demo", style: TextStyle(color: Colors.white),)
          ],
        ),
      ),
    );
  }
}
