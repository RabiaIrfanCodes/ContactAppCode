import 'package:flutter/material.dart';

Widget myImage(myImage , mywidth, myheight) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Container(
        width: mywidth,
        height: myheight,
        child: myImage,
      ),
    ],
  );
}

Widget myText() {
  return Container(
    // color: Colors.blue,
    child: Text(
      "You have no contacts yet",
      style: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w600,
      ),
    ),
  );
}