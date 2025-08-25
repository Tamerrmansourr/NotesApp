import 'package:flutter/material.dart';

class CustomNotesItem extends StatelessWidget {
  CustomNotesItem({
    super.key,
    required this.title,
    required this.desc,
    required this.date,
  });
  String title, desc, date;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top:24,bottom: 24,left: 12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.amber,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            title: Text(
              title,
              style: TextStyle(color: Colors.black, fontSize: 18),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.only(top: 16),
              child: Text(desc, style: TextStyle(color: Colors.grey.shade800)),
            ),
            trailing: Padding(
              padding: const EdgeInsets.only(bottom: 15),
              child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.delete, color: Colors.black, size: 30),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: Text(date, style: TextStyle(color: Colors.grey.shade800)),
          ),
        ],
      ),
    );
  }
}
