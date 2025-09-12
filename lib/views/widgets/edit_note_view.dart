import 'package:flutter/material.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/widgets/edit_notes_view_body.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key, required this.note});
  static String id = 'edit notes view';
  final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return EditNotesViewBody(note: note);
  }
}
