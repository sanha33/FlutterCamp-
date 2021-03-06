// Copyright 2018-present the Flutter authors. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import 'package:Shrine/theme/colors.dart';
import 'package:flutter/material.dart';
import 'theme/text_style.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  final _unfocusedColor = Colors.grey[600];
  final _usernameFocusNode = FocusNode();
  final _passwordFocusNode = FocusNode();
  @override
  @override
  void initState() {
    super.initState();
    _usernameFocusNode.addListener(() {
      setState(() {
        //Redraw so that the username label reflects the focus state
      });
    });
    _passwordFocusNode.addListener(() {
      setState(() {
        //Redraw so that the password label reflects the focus state
      });
    });
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          children: <Widget>[
            SizedBox(height: 80.0),
            Column(
              children: <Widget>[
                Image.asset('assets/diamond.png',
                  color: kShrineBlack,),
                SizedBox(height: 16.0),
                Text('SHRINE',
                //:TitleStyle1()
                  //
                  //
                  style: Theme.of(context).textTheme.headline5,

                ),
              ],
            ),
            SizedBox(height: 120.0),
            // TODO: Wrap Username with AccentColorOverride (103)
            // TODO: Remove filled: true values (103)
            TextField(
              controller: _usernameController,
              decoration: InputDecoration(
              //  filled: true,
                labelText: 'Username',
                labelStyle: TextStyle(color: _usernameFocusNode.hasFocus?Theme.of(context).accentColor: _unfocusedColor),
              ),
            ),
            SizedBox(height: 12.0),
            // TODO: Wrap Password with AccentColorOverride (103)
            TextField(
              controller: _passwordController,
              decoration: InputDecoration(
               // filled: true,
                labelText: 'Password',
                labelStyle: TextStyle(color: _passwordFocusNode.hasFocus?Theme.of(context).accentColor: _unfocusedColor),
              ),
              obscureText: true,
            ),
            ButtonBar(
              children: <Widget>[
                // TODO: Add a beveled rectangular border to CANCEL (103)
                TextButton(
                  child: Text('CANCEL'),
                  style: TextButton.styleFrom(
                    shape: BeveledRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(7.0))
                    )
                  ),
                  onPressed: () {
                    _usernameController.clear();
                    _passwordController.clear();
                  },
                ),
                // TODO: Add an elevation to NEXT (103)
                // TODO: Add a beveled rectangular border to NEXT (103)
                ElevatedButton(
                  child: Text('NEXT'),
                  style: ElevatedButton.styleFrom(
                    elevation: 10.0,
                      shape: BeveledRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(7.0)))
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// TODO: Add AccentColorOverride (103)
