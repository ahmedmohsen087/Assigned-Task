import 'package:flutter/material.dart';

class RoomDeatils extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      width:double.infinity ,
      height:70 ,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(25)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text('1 Room,2 Aduld,0 Children ', style: TextStyle(
              color: Colors.blue,
              fontSize: 16,
              fontWeight: FontWeight.w500
          ),),
          SizedBox(width: 20,),
          Icon(Icons.keyboard_arrow_down_sharp)
        ],
      ),
    );
  }
}
