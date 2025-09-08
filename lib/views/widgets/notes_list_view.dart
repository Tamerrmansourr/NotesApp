
import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_notes_item.dart';
import 'package:notes_app/views/widgets/edit_notes_view_body.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 6,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 12.0),
          child: GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, EditNotesViewBody.id);
            },
            child: CustomNotesItem(
              date: 'Aug 25,2025',
              desc: 'Build your career with Tharwat Samy',
              title: 'Flutter tips',
            ),
          ),
        );
      },
    );
  }
}
