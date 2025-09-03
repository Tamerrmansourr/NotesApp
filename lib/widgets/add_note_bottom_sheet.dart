import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_button.dart';
import 'package:notes_app/widgets/custom_text_form_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20),
            CustomTextFormField(hintText: 'Title'),
            SizedBox(height: 20),
            CustomTextFormField(hintText: 'Content',maxLines: 5,),
            SizedBox(height: 50),
            CustomButton(text: 'Add'),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
