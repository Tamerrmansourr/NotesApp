import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.text, this.onTap});
  final String text;
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 40,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Colors.cyanAccent,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(color: Colors.black, fontSize: 16,fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
