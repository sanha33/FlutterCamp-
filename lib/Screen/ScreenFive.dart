import 'package:flutter/material.dart';
import 'package:getx_practice0629/Layout/DefalutAppbarLayout.dart';
import 'package:get/get.dart';
import 'package:getx_practice0629/Screen/GetxNavigationScreen.dart';


class ScreenFive extends StatefulWidget{

  _ScreenFiveState createState() => _ScreenFiveState();
}

class _ScreenFiveState extends State<ScreenFive>{

  Widget build(BuildContext context){
    return DefaultAppbarLayout( title: 'Screen Five', child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            Get.parameters['param'],
          ),
          Text(
            Get.parameters['id'],

          ),
          Text(
            Get.parameters['name'],
          )
        ],
      ),
    ),)
  }
}