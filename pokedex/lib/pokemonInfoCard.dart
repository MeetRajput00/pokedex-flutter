
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Pokemon_Info_Card extends StatelessWidget {
  const Pokemon_Info_Card({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
          height: 350,
          width: 200,
          child:Card(
          elevation: 50,
          shadowColor: Colors.black,
          color: Colors.greenAccent[100],
          child: SizedBox(
            width: 300,
            height: 500,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.green[500],
                    radius: 108,
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRj1T1XR3T0HHgO8nDp-lDqq3WZhqmBoMLxxg&usqp=CAU"), //NetworkImage
                      radius: 100,
                    ), //CircleAvatar
                  ), //CircleAvatar//SizedBox
                  SizedBox(height: 5),
                  Text('Pokemon Name'),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      SizedBox(width: 150),
                      Text('Info1: '),
                      SizedBox(width: 100),
                      Text('Data1')
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(width: 150),
                      Text('Info2: '),
                      SizedBox(width: 100),
                      Text('Data2')
                    ],
                  )
                  ],
              ), //Column
            ), //Padding
          ), //SizedBox
        ), //Card
        );
  }
}