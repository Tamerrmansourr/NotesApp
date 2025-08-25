import 'package:flutter/material.dart';

class CustomIcon extends StatelessWidget {
  const CustomIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(color: const Color(0xFF2E2E2E),borderRadius: BorderRadius.all(Radius.circular(14))),
      child: Icon(Icons.search,
    ),);
  }
}