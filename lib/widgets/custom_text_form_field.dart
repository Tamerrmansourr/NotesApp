import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    this.hintText,
    this.onChanged,
    this.obscureText = false,
    this.icon,
    this.maxLines = 1,
  });
  final String? hintText;
  final Function(String)? onChanged;
  final bool? obscureText;
  final Icon? icon;
  final int? maxLines;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: maxLines,
      obscureText: obscureText!,
      validator: (value) {
        if (value!.isEmpty) {
          return 'field required';
        }
        return null;
      },
      onChanged: onChanged,
      decoration: InputDecoration(
        filled: true,
        contentPadding: EdgeInsets.all(16),
        hintText: hintText,
        hintStyle: TextStyle(
          fontSize: 14,
          // color: Colors.cyanAccent,
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(style: BorderStyle.none, color: Colors.white),

          borderRadius: BorderRadius.circular(8),
        ),
        prefixIcon: icon,
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.blueAccent),
          borderRadius: BorderRadius.circular(8),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.red),
          borderRadius: BorderRadius.circular(8),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.red),
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }
}
