import 'package:flutter/material.dart';
import 'package:getx_practice0629/Layout/DefalutAppbarLayout.dart';
import 'package:get/get.dart';
import 'package:getx_practice0629/Screen/GetxNavigationScreen.dart';

class ScreenThree extends StatefulWidget{

  _ScreenThreeState createState() => _ScreenThreeState();
}

class _ScreenThreeState extends State<ScreenThree>{
  int radioVal = 0;

  Widget build(BuildContext context){
    return DefaultAppbarLayout(

        title: 'Screen Three',
        child: Center(
        child: Column(
          children: [
            Row(
              children: [
                Radio(
                  groupValue: radioVal,
                  value: 0,
                  onChanged: (value){
                    setState(() {
                      radioVal = value;
                    });
                  },
                ),
                  Text('0'),

              ],
            ),
            Row(
              children: [
                Radio(
                  groupValue: radioVal,
                  value: 0,
                  onChanged: (value){
                    setState(() {
                      radioVal = value;
                    });
                  },
                ),
                Text('1'),

              ],
            ),
            Row(
              children: [
                Radio(
                  groupValue: radioVal,
                  value: 0,
                  onChanged: (value){
                    setState(() {
                      radioVal = value;
                    });
                  },
                ),
                Text('2'),

              ],
            ),
            RaisedButton(onPressed: (){
              Get.back(result: radioVal);
            },
            child:Text(
            '뒤로가기,'
            )
            )
          ],
        )
      )

    );
  }
}