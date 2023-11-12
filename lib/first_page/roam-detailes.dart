import 'package:flutter/material.dart';

import '../secand _page/rooms-guest.dart';
import '../secand _page/switch-page.dart';

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
          InkWell(
            onTap: (){
              showModalBottomSheet(
                  context: context,
                  isScrollControlled: true,
                  builder: (context) {
                    return BottomSheetApp();
                  },
              );
            },
              child: Icon(Icons.keyboard_arrow_down_sharp))
        ],
      ),
    );
  }
}
