import 'package:flutter/material.dart';
import 'package:getx_practice0629/Layout/DefalutAppbarLayout.dart';
import 'package:get/get.dart';

class ScreenTwo extends StatefulWidget {
  @override
  _ScreenTwoState createState()=> _ScreenTwoState();

}

class _ScreenTwoState extends State<ScreenTwo>{


  @override
  Widget build(BuildContext context){
    return DefaultAppbarLayout(
      title: 'Screen Two',
      child : Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Screen Two'),
            RaisedButton(onPressed: (){
                // if(Navigator.of(context).canPop()){
              // Navigator.of(context).pop();
              //}

              Get.back();
  },
  child: Text('뒤로가기',),


            )
          ],
        )
      )
    );

  }
}
