import 'package:flutter/material.dart';
import '../second _page/rooms_guest.dart';

class RoomDetails extends StatelessWidget {
  const RoomDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 70,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(25)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Text(
            '1 Room,2 Adult,0 Children ',
            style: TextStyle(
                color: Colors.blue, fontSize: 16, fontWeight: FontWeight.w500),
          ),
          const SizedBox(
            width: 20,
          ),
          InkWell(
              onTap: () {
                showModalBottomSheet(
                  context: context,
                  isScrollControlled: true,
                  builder: (context) {
                    return BottomSheetApp();
                  },
                );
              },
              child: const Icon(Icons.keyboard_arrow_down_sharp))
        ],
      ),
    );
  }
}
