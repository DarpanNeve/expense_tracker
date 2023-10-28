import 'package:flutter/material.dart';

class NewExpense extends StatefulWidget {
  const NewExpense({super.key});

  @override
  State<NewExpense> createState() => _NewExpenseState();
}

class _NewExpenseState extends State<NewExpense> {
  final _titlecontroller = TextEditingController();
  final _amountcontroller = TextEditingController();

  @override
  void dispose() {
    _titlecontroller.dispose();
    _amountcontroller.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          TextField(
            controller: _titlecontroller,
            maxLength: 50,
            decoration: const InputDecoration(
              label: Text("Title"),
            ),
          ),
          TextField(
            controller: _amountcontroller,
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(
              prefixText: "\$",
              label: Text("Amount"),
            ),
          ),
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {
                  print(_titlecontroller.text);
                },
                child: const Text("Save Expense"),
              ),
              TextButton(
                onPressed: () {},
                child: const Text("Cancel"),
              ),
            ],
          )
        ],
      ),
    );
  }
}
