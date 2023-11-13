import 'package:flutter/material.dart';

class NumberOfAdult extends StatefulWidget {
  const NumberOfAdult({Key? key}) : super(key: key);

  @override
  State<NumberOfAdult> createState() => _NumberOfAdultState();
}

class _NumberOfAdultState extends State<NumberOfAdult> {
  int numberOfAdult = 1;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text('Adults',
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18)),
        const Spacer(),
        ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                side: const BorderSide(color: Colors.blue),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                )),
            onPressed: () {
              setState(() {
                numberOfAdult = numberOfAdult > 1 ? numberOfAdult - 1 : 1;
              });
            },
            child: const Icon(
              Icons.remove,
              color: Colors.blue,
            )),
        const SizedBox(
          width: 10,
        ),
        Text('$numberOfAdult'),
        const SizedBox(
          width: 10,
        ),
        ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                side: BorderSide(
                    color: numberOfAdult == 4 ? Colors.grey : Colors.blue),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                )),
            onPressed: () {
              setState(() {
                if (numberOfAdult < 4) {
                  numberOfAdult++;
                } else if (numberOfAdult == 4) {
                  numberOfAdult = 4;
                }
              });
            },
            child: Icon(
              Icons.add,
              color: numberOfAdult == 4 ? Colors.grey : Colors.blue,
            )),
      ],
    );
  }
}
