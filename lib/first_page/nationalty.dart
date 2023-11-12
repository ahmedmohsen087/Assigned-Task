import 'package:flutter/material.dart';

const List<String> list = <String>[
  'Egyptian',
  'American',
  'Russian',
  ' Palestinian',

];

class NationalityDropdown extends StatefulWidget {
  const NationalityDropdown({super.key});

  @override
  State<NationalityDropdown> createState() => _NationalityDropdownState();
}

class _NationalityDropdownState extends State<NationalityDropdown> {
  String dropdownValue = list.first;

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue,
      icon: const Icon(Icons.arrow_downward),
      elevation: 0,
      style: const TextStyle(color: Colors.deepPurple),
      onChanged: (String? value) {
        setState(() {
          dropdownValue = value!;
        });
      },
      items: list.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}
