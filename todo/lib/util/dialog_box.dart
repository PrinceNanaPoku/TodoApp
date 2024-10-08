import 'package:flutter/material.dart';
import 'package:myapp/util/button.dart';

class DialogBox extends StatelessWidget {
  final controller;
  final VoidCallback onSave;
  final VoidCallback onCancel;
  const DialogBox({
    super.key,
    required this.controller,
    required this.onSave,
    required this.onCancel,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.yellow,
      content:

          //TextField to add new task
          Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          TextField(
            controller: controller,
            decoration: InputDecoration(
              hintText: 'Enter New Task',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          //Save Button
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MyButton(
                text: 'Save',
                onPressed: onSave,
              ),
              const SizedBox(
                width: 10.0,
              ),
              //Cancel Button
              MyButton(
                text: 'Cancel',
                onPressed: onCancel,
              ),
            ],
          )
        ],
      ),
    );
  }
}
