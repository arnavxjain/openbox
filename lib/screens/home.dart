import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sandbox/components/layer1.dart';
import 'package:sandbox/components/nav.dart';
import 'package:sandbox/screens/onboarding.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String name = '';

  void initState() {
      super.initState();
      _initializeLifeCycle();
  }

  void _initializeLifeCycle() async { 
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      name = prefs.getString('name').toString();
    });
    print(name);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Layer1(name: name,),
          Positioned(
            width: MediaQuery.of(context).size.width,
            child: Center(child: Nav()),
            bottom: 60,
            // left: 100,
          )
        ],
      ),
    );
  }
}

