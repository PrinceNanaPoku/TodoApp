import 'package:flutter/material.dart';
import 'package:myapp/util/button.dart';

class DialogBox extends StatelessWidget {
  const DialogBox({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.yellow,
      content:

          //TextField to add new task
          Column(
        children: [
          TextField(
            decoration: InputDecoration(
              hintText: 'Enter New Task',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          //Save and Cancel Button
          const MyButton(),
        ],
      ),
    );
  }
}
