import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  void saveNewTask() {}
  void cancelNewTask() {}
  const MyButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0),
            child: ElevatedButton(
              onPressed: saveNewTask,
              child: const Text('Save'),
            ),
          ),
          ElevatedButton(
            onPressed: cancelNewTask,
            child: const Text('Cancel'),
          ),
        ],
      ),
    );
  }
}
