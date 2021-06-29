import 'package:getx_practice0629/Layout/DefalutAppbarLayout.dart';
import 'package:flutter/material.dart';
import 'package:getx_practice0629/Screen/ScreenFour.dart';
import 'package:get/get.dart';

class ScreenFour extends StatefulWidget{

  _ScreenFourState createState() => _ScreenFourState();
}

class _ScreenFourState extends State<ScreenFour>{

  Widget build(BuildContext context){
    return DefaultAppbarLayout(title: 'ScreenFour',child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            Get.arguments,
          )
        ],
      )
    ));
  }
}