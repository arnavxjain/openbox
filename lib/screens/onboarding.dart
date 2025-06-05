import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sandbox/screens/home.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  TextEditingController _name = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                onChanged: (val) {
                  setState(() {
                    _name.text = val.toString();
                  });
                },
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
                  onPressed: _name.text == "" ? null : () async {
                    print(_name.text);
                    SharedPreferences prefs = await SharedPreferences.getInstance();
                    prefs.setString('name', _name.text);

                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Home()));
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Continue', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),),
                      SizedBox(width: 5),
                      Icon(CupertinoIcons.arrow_right_circle, color: Colors.white,)
                    ],
                  )
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 20),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
