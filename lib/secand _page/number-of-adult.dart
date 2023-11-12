import 'package:flutter/material.dart';

class NumberOfAdult extends StatefulWidget {
  const NumberOfAdult({Key? key}) : super(key: key);

  @override
  State<NumberOfAdult> createState() => _NumberOfAdultState();
}

class _NumberOfAdultState extends State<NumberOfAdult> {
  int NumberOfAult = 1 ;
  int NumberMaxOfAult = 1 ;


  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('Adults',style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 18
        )),
        Spacer(),
        ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                side: BorderSide(
                    color:Colors.blue
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                )
            ),
            onPressed: (){
              setState(() {
                NumberOfAult = NumberOfAult > 1 ? NumberOfAult - 1 : 1;

              });
            },
            child: Icon(Icons.remove,
              color: Colors.blue,)),
        SizedBox(width: 10,),
        Text('$NumberOfAult'),
        SizedBox(width: 10,),
        ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                side: BorderSide(
                    color: NumberOfAult == 4 ? Colors.grey :Colors.blue
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                )
            ),
            onPressed: (){
              setState(() {
                if (NumberOfAult < 4) {
                  NumberOfAult++;
                }else if( NumberOfAult == 4){
                  NumberOfAult=4;
                }
              });
            }, child: Icon(Icons.add,
          color:NumberOfAult == 4 ? Colors.grey : Colors.blue,)),

      ],
    );
  }
}
