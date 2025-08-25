import 'package:flutter/material.dart';
import 'package:notes_app/widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});
  static String id = 'home page';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.cyanAccent,
        foregroundColor: Colors.black,
        shape: CircleBorder(),
        onPressed: () {},
        child: Icon(Icons.add),
      ),
      backgroundColor: Colors.grey.shade900,
      body: NotesViewBody(),
    );
  }
}
