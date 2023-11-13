import 'package:flutter/material.dart';

class RoomsAddAndRemove extends StatefulWidget {
  const RoomsAddAndRemove({super.key});

  @override
  State<RoomsAddAndRemove> createState() => _RoomsAddAndRemoveState();
}

class _RoomsAddAndRemoveState extends State<RoomsAddAndRemove> {
  int numberOfRoom = 1;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text('Rooms',
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18)),
        const Spacer(),
        ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                side: BorderSide(
                    color: numberOfRoom == 1 ? Colors.grey : Colors.blue),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                )),
            onPressed: () {
              setState(() {
                numberOfRoom = numberOfRoom > 1 ? numberOfRoom - 1 : 1;
              });
            },
            child: Icon(
              Icons.remove,
              color: numberOfRoom == 1 ? Colors.grey : Colors.blue,
            )),
        const SizedBox(
          width: 10,
        ),
        Text('$numberOfRoom'),
        const SizedBox(
          width: 10,
        ),
        ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                side: const BorderSide(color: Colors.blue),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                )),
            onPressed: () {
              setState(() {
                numberOfRoom++;
              });
            },
            child: const Icon(
              Icons.add,
              color: Colors.blue,
            )),
      ],
    );
  }
}
