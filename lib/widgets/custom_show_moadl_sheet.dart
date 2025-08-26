import 'package:flutter/material.dart';

void showModalSheet(BuildContext context) {
  showModalBottomSheet(
    context: context,
    builder: (builder) {
      return Container(
        height: 400,
        color: Colors.transparent, //could change this to Color(0xFF737373),
        //so you don't have to change MaterialApp canvasColor
        child: Container(
          decoration: BoxDecoration(
            // color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: const Radius.circular(20),
              topRight: const Radius.circular(20),
            ),
          ),
          child: Center(child: Text("This is a modal sheet")),
        ),
      );
    },
  );
}
