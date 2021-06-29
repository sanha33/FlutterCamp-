import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_practice0629/Screen/Home.dart';
import 'package:getx_practice0629/Screen/ScreenTwo.dart';
import 'package:getx_practice0629/Screen/ScreenThree.dart';
import 'package:getx_practice0629/Screen/ScreenFour.dart';
import 'package:getx_practice0629/Screen/ScreenFive.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return GetMaterialApp( // 라우트를 생성하고 추가(Get, 번역을 추가하며 라우트 탐색에 필요한 모든 것을 추가 가능
      // 상태관리 및 종속성 관리에만 Get을 사용하는 경우는 굳이 사용할 필요가 없음
      // : 라우트, 스택바, 국제화, bottomSheets, 다이얼로그 및 컨텍스트 부재와 라우트에 연관된 api들을 필
      home: HomeScreen(),
      getPages:[
        GetPage(
          name:'/two',
          page: () => ScreenTwo(),
        ),
        GetPage(
          name:'/three',
          page: () => ScreenThree(),
        ),
        GetPage(
          name:'/four',
          page: () => ScreenTwo(),
        ),
        GetPage(
          name:'/five',
          page: () => ScreenTwo(),
        ),

      ]
    );
  }
}