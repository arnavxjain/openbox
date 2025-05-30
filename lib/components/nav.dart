import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Nav extends StatefulWidget {
  const Nav({super.key});

  @override
  State<Nav> createState() => _NavState();
}

class _NavState extends State<Nav> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: Color(0xFF202020)
            ),
            child: Container(
              width: 150,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(child: Icon(CupertinoIcons.home, color: Color(0xFF555555), size: 20,)),
                  GestureDetector(child: Icon(CupertinoIcons.graph_circle, color: Color(0xFF555555), size: 20,)),
                  GestureDetector(child: Icon(CupertinoIcons.link, color: Color(0xFF555555), size: 18,)),
                  GestureDetector(child: Icon(CupertinoIcons.cube_box_fill, color: Color(0xFF555555), size: 20,))
                ],
              ),
            ),
          ),
          SizedBox(width: 5),
          SizedBox(
            height: 41,
            width: 41,
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
