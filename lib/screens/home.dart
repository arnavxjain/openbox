import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sandbox/components/layer1.dart';
import 'package:sandbox/components/nav.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Layer1(),
          Positioned(
            width: MediaQuery.of(context).size.width,
            child: Center(child: Nav()),
            bottom: 100,
            // left: 100,
          )
        ],
      ),
    );
  }
}

