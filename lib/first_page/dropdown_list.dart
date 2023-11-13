import 'package:flutter/material.dart';

import 'nationality.dart';

class NationalityDropdownList extends StatelessWidget {
  const NationalityDropdownList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 70,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(15)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const Text(
            'Select Nationality ',
            style: TextStyle(
                color: Colors.blue, fontSize: 16, fontWeight: FontWeight.w500),
          ),
          const SizedBox(
            width: 20,
          ),
          InkWell(
              onTap: () {
                const NationalityDropdown();
              },
              child: const Icon(Icons.keyboard_arrow_down_sharp))
        ],
      ),
    );
  }
}
