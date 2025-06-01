import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sandbox/screens/home.dart';
import 'package:sandbox/screens/onboarding.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  var _nameState = null;

  @override
  void initState() {
    super.initState();
    _initializeLifeCycle();

    Timer(Duration(seconds: 3), () {
      print('timed');
      print(_nameState);
      if (_nameState == true) {
        Navigator.pushReplacement(context, MaterialPageRoute(
          builder: (context) => Home(),
        ));
      } else {
        Navigator.pushReplacement(context, MaterialPageRoute(
          builder: (context) => Onboarding(),
        ));
      }
    });
  }

  void _initializeLifeCycle() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    if (prefs.getString("name") == null || prefs.getString("name") == "") {
      _nameState = false;
    } else {
      _nameState = true;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF7989FF),
      body: Center(
        child: Text('XP', style: TextStyle(fontFamily: 'monext', fontSize: 30),),
      ),
    );
  }
}
