import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sandbox/globals.dart';

class Nav extends StatefulWidget {
  const Nav({super.key});

  @override
  State<Nav> createState() => _NavState();
}

class _NavState extends State<Nav> {

  String current = 'home';

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    current = Globals.screenState;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 3, horizontal: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: Color(0xFF202020)
            ),
            child: Container(
              // width: 150,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CupertinoButton(padding: EdgeInsets.zero, child: Icon(CupertinoIcons.home, color: current == "home" ? Color(0xFF7989FF) : Color(0xFF555555), size: 20), onPressed: () {
                    setState(() {
                      Globals.changeScreenState("home");
                      current = 'home';
                    });
                  },),
                  CupertinoButton(padding: EdgeInsets.zero, child: Icon(CupertinoIcons.graph_circle, color: current == "stats" ? Color(0xFF7989FF) : Color(0xFF555555), size: 20), onPressed: () {
                    setState(() {
                      Globals.changeScreenState("stats");
                      current = 'stats';
                    });
                  },),
                  CupertinoButton(padding: EdgeInsets.zero, child: Icon(CupertinoIcons.link, color: current == "link" ? Color(0xFF7989FF) : Color(0xFF555555), size: 18), onPressed: () {
                    setState(() {
                      Globals.changeScreenState("link");
                      current = 'link';
                    });
                  },),
                  CupertinoButton(padding: EdgeInsets.zero, child: Icon(CupertinoIcons.cube_box_fill, color: current == "prof" ? Color(0xFF7989FF) : Color(0xFF555555), size: 20), onPressed: () {
                    setState(() {
                      Globals.changeScreenState("prof");
                      current = 'prof';
                    });
                  },)
                ],
              ),
            ),
          ),
          SizedBox(width: 5),
          SizedBox(
            height: 43,
            width: 43,
            child: CupertinoButton(
              padding: EdgeInsets.zero,
              sizeStyle: CupertinoButtonSize.medium,
              color: Color(0xFF7989FF).withOpacity(0.2),
                borderRadius: BorderRadius.circular(100),
                child: Icon(CupertinoIcons.plus, color: Color(0xFF7989FF),),
                onPressed: () {}
            ),
          )
        ],
      ),
    );
  }
}
