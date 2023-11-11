import 'package:flutter/material.dart';

import 'Nationalty.dart';


class NationalityDropdownList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      width:double.infinity ,
      height:70 ,
      decoration: BoxDecoration(
        color: Colors.white,
          borderRadius: BorderRadius.circular(15)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text('Select Nationality ', style: TextStyle(
            color: Colors.blue,
            fontSize: 16,
            fontWeight: FontWeight.w500
          ),),
          SizedBox(width: 20,),
          InkWell(
            onTap: () {
              NationalityDropdown();
            },
              child: Icon(Icons.keyboard_arrow_down_sharp))
        ],
      ),
    );
  }
}
