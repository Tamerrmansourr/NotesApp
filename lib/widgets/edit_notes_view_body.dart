import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_app_bar.dart';
import 'package:notes_app/widgets/custom_text_form_field.dart';

class EditNotesViewBody extends StatelessWidget {
  const EditNotesViewBody({super.key});
  static String id = 'edit notes view';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            SizedBox(height: 50),
            CustomAppBar(text: 'Edit Note', icon: Icon(Icons.check)),
            SizedBox(height: 20),
            CustomTextFormField(hintText: 'Title'),
            SizedBox(height: 20),
            CustomTextFormField(hintText: 'Content', maxLines: 5),
          ],
        ),
      ),
    );
  }
}
