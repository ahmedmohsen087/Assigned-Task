import 'package:assignment_task/home_screen/DataSelcted.dart';
import 'package:assignment_task/home_screen/DropdownList.dart';
import 'package:assignment_task/home_screen/roam-detailes.dart';
import 'package:flutter/material.dart';

import 'form.dart';

class HomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit:BoxFit.fill,
            image: AssetImage('assets/images/attachment3.jpg',
            )
          )
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                padding: EdgeInsets.all(18),
                child: Text('Hotels Search',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                    )),
              ),
              SizedBox(height: 5,),
              Stack(children: [
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Row(mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('find hotels',
                              style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500)),
                          SizedBox(width: 10,),
                          Icon(Icons.search,color: Colors.white),
                        ],
                      ),
                      SizedBox(height: 10,)
                    ],
                  ),
                  color: Colors.deepOrange,
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height / 2,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.only(
                          bottomLeft:Radius.circular(15) ,
                        bottomRight:Radius.circular(15)
                    )
                  ),
                  height: MediaQuery.of(context).size.height / 2-50,
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        FormScreen(),
                        NationalityDropdownList(),
                        RoomDeatils(),


                      ],
                    ),
                  ),
                ),


              ],)





            ],
          ),
        ),
      ),
    );
  }
}