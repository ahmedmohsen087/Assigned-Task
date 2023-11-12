import 'package:assignment_task/secand%20_page/switch-page.dart';
import 'package:assignment_task/secand%20_page/room-add.dart';
import 'package:flutter/material.dart';

import 'number-of-adult.dart';

class BottomSheetApp extends StatefulWidget {

  @override
  State<BottomSheetApp> createState() => _BottomSheetAppState();

}
int NumberOfRoom = 1 ;


class _BottomSheetAppState extends State<BottomSheetApp> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,

          centerTitle: true,
            title: Text('Rooms and Guests',style: TextStyle(
              color: Colors.black
            )),
          actions: [
            InkWell(
              onTap: (){
                Navigator.pop(context);
              },
                child: Icon(Icons.clear,color: Colors.black,))
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
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: RoomsAddAndRemove(),
              ),
            ),
            SizedBox(height: 20,),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text('ROOM 1',style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 18
                        )),
                      ],
                    ),
                    SizedBox(height: 20,),
                    NumberOfAdult(),

                    SizedBox(height: 20,),
                    Row(
                      children: [
                        Text('Children',style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 18
                        )),
                        Spacer(),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                side: BorderSide(
                                    color: Colors.blue
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30),
                                )
                            ),
                            onPressed: (){}, child: Icon(Icons.remove,color: Colors
                            .blue,)),
                        SizedBox(width: 10,),
                        Text('2'),
                        SizedBox(width: 10,),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                side: BorderSide(
                                    color: Colors.blue
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30),
                                )
                            ),
                            onPressed: (){}, child: Icon(Icons.add,color: Colors
                            .blue,)),

                      ],
                    ),
                    SizedBox(height: 20,),
                    Row(
                      children: [
                        SizedBox(width: 10,),
                        Text('Age of child 1',style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 18
                        )),
                        Spacer(),
                        Text(' 14 years',style: TextStyle(
                          color: Colors.grey,
                            fontWeight: FontWeight.w500,
                            fontSize: 18
                        )),

                      ],
                    ),
                    SizedBox(height: 20,),
                    Row(
                      children: [
                        SizedBox(width: 10,),
                        Text('Age of child 2',style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 18
                        )),
                        Spacer(),
                        Text(' 14 years',style: TextStyle(
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
            SizedBox(height: 20,),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text('Pet-friendly',style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 18
                            )),
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
                    Spacer(),
                    Column(
                      children: [
                        SwitchApp()
                      ],
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
