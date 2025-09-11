import 'package:flutter/material.dart';
import 'package:notes_app/models/note_model.dart';

class CustomNotesItem extends StatelessWidget {
  const CustomNotesItem({
    super.key,
    required this.note,
  });
  final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 25, bottom: 25, left: 12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Color(note.color),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            title: Text(
              note.title,
              style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.only(top: 16),
              child: Text(note.subTitle, style: TextStyle(color: Colors.grey.shade800, fontSize: 16)),
            ),
            trailing: Padding(
              padding: const EdgeInsets.only(bottom: 15),
              child: IconButton(
                onPressed: () {
                  note.delete();
                },
                icon: Icon(Icons.delete, color: Colors.black, size: 30),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 16, top: 20),
            child: Text(note.date, style: TextStyle(color: Colors.grey.shade800)),
          ),
        ],
      ),
    );
  }
}
