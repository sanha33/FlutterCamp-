import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_practice0629/Layout/DefalutAppbarLayout.dart';
import 'package:getx_practice0629/Screen/ScreenTwo.dart';
import 'package:getx_practice0629/Screen/ScreenThree.dart';
import 'package:getx_practice0629/Screen/ScreenFour.dart';
import 'package:getx_practice0629/Screen/ScreenFive.dart';

class GetxNavigationScreen extends StatefulWidget {
  @override
  _GetxNavigationScreen createState() => _GetxNavigationScreen();
}

class _GetxNavigationScreen extends State<GetxNavigationScreen> {
  int returnVal = 0;
  Transition transition = Transition.cupertino;

  @override
  Widget build(BuildContext context) {
    return DefaultAppbarLayout(
        title: 'Getx Navigation',
        child: Center(
            child: SingleChildScrollView(
                child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
                onPressed: () {
                  Get.to(ScreenTwo());
                },
                child: Text('전 페이지로 돌아가지 못하게 하기 ')),
            RaisedButton(
              onPressed: () {
                //Navigator.of.(context).pushAndRemoveUntil(
                //  MaterialPageRoute(
                //    builder:(_) => ScreenTwo(),
                // ),
                // (route) => false,
                // );
                Get.offAll(ScreenTwo());
              },
              child: Text(
                '모든 페이지 스택 삭제하기',
              ),
            ),
            Divider(),
            Text(
              '리턴값 : $returnVal',
            ),
            RaisedButton(
              onPressed: () async {
                final resp = await Get.to(ScreenThree());

                setState(() {
                  returnVal = resp;
                });
              },
              child: Text(
                '리턴값 받아오기',
              ),
            ),
            Divider(),
            RaisedButton(
              onPressed: () {
                Get.to(ScreenFour(), arguments: 'Getx !!');
              },
              child: Text(
                '아규먼트 보내기',
              ),
            ),
            Divider(),
            RaisedButton(
              onPressed: () {
                Get.to(
                  ScreenTwo(),
                  transition: Transition.fadeIn,
                );
              },
              child: Text('트랜지션,'),
            ),
            RaisedButton(
              onPressed: () {
                Get.toNamed('/five/test?id=444&name=cf');
              },
              child: Text('네임드 라우트'),
            ),
            RaisedButton(
              onPressed: () {
                Get.snackbar('제목', '내용');
              },
              child: Text('Snackbar'),
            ),
            RaisedButton(
              onPressed: () {
                Get.defaultDialog(middleText: 'Dialog');
              },
              child: Text(
                'Dialog',
              ),
            ),
            RaisedButton(onPressed: () {
              Get.bottomSheet(Container(
                  color: Colors.white,
                  child: Wrap(
                    children: <Widget>[
                      ListTile(
                          leading: Icon(Icons.favorite),
                          title: Text('Like'),
                          onTap: () => {}),
                      ListTile(
                          leading: Icon(Icons.star),
                          title: Text('star'),
                          onTap: () => {})
                    ],
                  )));
            },
            child: Text('Bottom Sheet'))
          ],
        ))));
  }
}
