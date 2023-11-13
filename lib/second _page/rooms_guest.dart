import 'package:assignment_task/second%20_page/switch_page.dart';
import 'package:assignment_task/second%20_page/room_add.dart';
import 'package:flutter/material.dart';

import 'number_of_adult.dart';

class BottomSheetApp extends StatelessWidget {
  const BottomSheetApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          title: const Text('Rooms and Guests',
              style: TextStyle(color: Colors.black)),
          actions: [
            InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const Icon(
                  Icons.clear,
                  color: Colors.black,
                ))
          ],

        ),
        body: const BottomSheetExample(),
      ),
    );
  }
}
class BottomSheetExample extends StatelessWidget {
  const BottomSheetExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black12,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: RoomsAddAndRemove(),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    const Row(
                      children: [
                        Text('ROOM 1',
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 18)),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const NumberOfAdult(),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        const Text('Children',
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 18)),
                        const Spacer(),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                side: const BorderSide(color: Colors.blue),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30),
                                )),
                            onPressed: () {},
                            child: const Icon(
                              Icons.remove,
                              color: Colors.blue,
                            )),
                        const SizedBox(
                          width: 10,
                        ),
                        const Text('2'),
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
                            onPressed: () {},
                            child: const Icon(
                              Icons.add,
                              color: Colors.blue,
                            )),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Text('Age of child 1',
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 18)),
                        Spacer(),
                        Text(' 14 years',
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.w500,
                                fontSize: 18)),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Text('Age of child 2',
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 18)),
                        Spacer(),
                        Text(' 14 years',
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.w500,
                                fontSize: 18
                        )),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text('Pet-friendly',
                                style: TextStyle(
                                    fontWeight: FontWeight.w500, fontSize: 18)),
                          ],
                        ),
                        Row(
                          children: [
                            Text('Only show stays that allow pets',style:
                            TextStyle(
                                fontSize: 15
                            )),

                          ],
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [SwitchApp()],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
