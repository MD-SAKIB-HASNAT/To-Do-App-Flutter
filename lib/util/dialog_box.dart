import 'package:flutter/material.dart';
import 'package:todo_app/util/my_button.dart';

// ignore: must_be_immutable
class DialogBox extends StatelessWidget {
  final controller;
   VoidCallback onSave;
   VoidCallback onCancel;
   DialogBox({
    super.key, 
    required this.controller, 
    required this.onSave, 
    required this.onCancel});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.yellow[300],
      content: Container(
        height: 150,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextField(
              controller: controller ,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Add a new task',

              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                
                MyButton(text: "Save", onPressed: onSave),
                const SizedBox(width: 8),
                MyButton(text: "Cancel", onPressed: onCancel)
              ],
            ),
          ],
        ),
      ),
    );
  }
}