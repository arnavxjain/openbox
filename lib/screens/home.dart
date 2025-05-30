import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sandbox/components/layer1.dart';
import 'package:sandbox/components/nav.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int _onboarded = 0;
  TextEditingController _name = TextEditingController();

  void initState() {
      super.initState();
      _initializeLifeCycle();
  }

  void _initializeLifeCycle() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    if (prefs.getString('name') != null) {
      _onboarded = 1;
    } else {
      _onboarded = 2;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _onboarded == 1 ? Stack(
        children: [
          Layer1(),
          Positioned(
            width: MediaQuery.of(context).size.width,
            child: Center(child: Nav()),
            bottom: 60,
            // left: 100,
          )
        ],
      ) : Scaffold(
        backgroundColor: Color(0xFF181818),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: Text("XPERIATE", style: TextStyle(color: Colors.white, fontFamily: "monext", fontSize: 20),),
                ),
                SizedBox(height: 225),
                Text("What does the world call you?", style: TextStyle(fontFamily: 'monext', fontSize: 13, color: Colors.white, letterSpacing: -0.3), textAlign: TextAlign.left, ),
                SizedBox(height: 10),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'First Name',
                    filled: true,
                    fillColor: Color(0xFF222222),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide.none
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide.none
                    ),
                    hintStyle: TextStyle(
                      letterSpacing: -0.5
                    ),
                  ),
                  controller: _name,
                  style: TextStyle(
                    color: Colors.grey
                  ),
                ),
                Expanded(
                  child: SizedBox(width: 1,),
                ),
                CupertinoButton(
                  disabledColor: Color(0xFF333333),
                  color: Color(0xFF7989FF),
                    alignment: Alignment.center,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Continue', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),),
                        SizedBox(width: 5),
                        Icon(CupertinoIcons.arrow_right_circle, color: Colors.white,)
                      ],
                    ),
                    onPressed: _name == "" ? null : () {}
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 20),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

