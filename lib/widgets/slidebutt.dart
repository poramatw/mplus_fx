// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class SlideButton extends StatefulWidget {
  const SlideButton({Key? key}) : super(key: key);

  @override
  State<SlideButton> createState() => _SlideButtonState();
}

class _SlideButtonState extends State<SlideButton> {
  double translateX = 0.0;
  double translateY = 0.0;
  double myWidth = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amber,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(22)),
      height: 50,
      width: 150,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          closeSuccessful(),
          myWidth == 0.0
              ? Expanded(
                  child: Center(
                    child: Text("Swipe to close"),
                  ),
                )
              : SizedBox()
        ],
      ),
    );
  }

  Widget closeSuccessful() => Transform.translate(
        offset: Offset(translateX, translateY),
        child: AnimatedContainer(
            duration: Duration(microseconds: 200),
            curve: Curves.linear,
            width: 100 + myWidth,
            height: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(22),
              color: Colors.blue,
            ),
            child: myWidth > 0.0
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Icon(
                        Icons.check,
                        color: Colors.white,
                        size: 30,
                      ),
                      Flexible(child: Text("close Successful "))
                    ],
                  )
                : Icon(Icons.navigate_next)),
      );
}
