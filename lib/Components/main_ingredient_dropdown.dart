import 'package:flutter/material.dart';

const List<String> dropDownItemList = <String>['One', 'Two', 'Three', 'Four'];

class MainIngredientDropdown extends StatefulWidget {
  const MainIngredientDropdown({super.key});

  @override
  State<MainIngredientDropdown> createState() => _MainIngredientDropdownState();
}

class _MainIngredientDropdownState extends State<MainIngredientDropdown> {
  String dropdownValue = dropDownItemList.first;

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue,
      icon: const Icon(Icons.arrow_downward),
      elevation: 16,
      style: const TextStyle(color: Colors.deepPurple),
      underline: Container(
        height: 2,
        color: Colors.deepPurpleAccent,
      ),
      onChanged: (String? value) {
        // This is called when the user selects an item.
        setState(() {
          dropdownValue = value!;
        });
      },
      items: dropDownItemList.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}
