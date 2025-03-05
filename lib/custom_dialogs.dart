import 'package:flutter/material.dart';

class CustomDialog extends StatelessWidget {
  const CustomDialog({super.key});

  @override
  Widget build(BuildContext context) {
    // Create a controller to handle TextField input
    TextEditingController textController = TextEditingController();

    return AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
      title: Text(
        'Custom Dialog',
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text('Please enter some text below:'),
          SizedBox(height: 10),
          TextField(
            controller: textController,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Enter text',
            ),
          ),
        ],
      ),
      actions: <Widget>[
        ElevatedButton(
          onPressed: () {
            // Get the text from the controller and close the dialog
            String enteredText = textController.text;
            print('Entered text: $enteredText');
            Navigator.of(context).pop();
          },
          child: Text('Submit'),
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.of(context).pop(); // Close the dialog without submitting
          },
          child: Text('Cancel'),
        ),
      ],
    );
  }
}
