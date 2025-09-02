import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_text_form_field.dart';

void showModalSheet(BuildContext context) {
  showModalBottomSheet(
    context: context,
    builder: (builder) {
      return Container(
        height: 500,
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
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                SizedBox(height: 20,),
                CustomTextFormField(hintText: 'Title',),
                SizedBox(height: 20,),
                CustomTextFormField(hintText: 'Content',maxLines: 5,),
              ],
            ),
          ),
        ),
      );
    },
  );
}