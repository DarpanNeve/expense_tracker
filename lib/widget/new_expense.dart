import 'package:flutter/material.dart';

class NewExpense extends StatefulWidget {
  const NewExpense({super.key});

  @override
  State<NewExpense> createState() => _NewExpenseState();
}

class _NewExpenseState extends State<NewExpense> {
  var _enteredTitle = '';

  _saveTitle(String inputValue) {
    _enteredTitle = inputValue;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          TextField(
            onChanged: _saveTitle,
            maxLength: 50,
            decoration: const InputDecoration(label: Text("Title")),
          )
        ],
      ),
    );
  }
}
