import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    this.hintText,
    this.onSaved,
    this.obscureText = false,
    this.icon,
    this.maxLines = 1, this.onChanged,
  });
  final String? hintText;
  final Function(String?)? onSaved;
  final bool? obscureText;
  final Icon? icon;
  final int? maxLines;
  final Function(String)? onChanged;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChanged,
      maxLines: maxLines,
      obscureText: obscureText!,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return 'field required';
        } else {
          return null;
        }
      },
      onSaved: onSaved,
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
