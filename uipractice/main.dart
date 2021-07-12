import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: Design()));

class Design extends StatefulWidget {


  @override
  _DesignState createState() => _DesignState();
}

class _DesignState extends State<Design> {
  bool _isSelected = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

        home: Scaffold(
          appBar: AppBar(
            title: Text('Dropdown Menu Themed Demo'),
            actions: [
              PopupMenuButton(
                icon: Icon(Icons.more_vert),
                itemBuilder: (BuildContext context) => <PopupMenuEntry>[
                  const PopupMenuItem(
                    child: ListTile(
                      leading: Icon(Icons.add),
                      title: Text('Item 1'),
                    ),
                  ),
                  const PopupMenuItem(
                    child: ListTile(
                      leading: Icon(Icons.anchor),
                      title: Text('Item 2'),
                    ),
                  ),
                  const PopupMenuItem(
                    child: ListTile(
                      leading: Icon(Icons.article),
                      title: Text('Item 3'),
                    ),
                  ),
                  const PopupMenuDivider(),
                  const PopupMenuItem(child: Text('Item A')),
                  const PopupMenuItem(child: Text('Item B')),
                ],

              ),
            ],
          ),

            body: ListView(
              children: [
                ListTile(
                  title: Text('List item 1'), // 첫째줄
                  subtitle: Text('Secondary text\nTertiary text'), // 둘째줄
                  isThreeLine: true, // 셋째줄

                  leading: Icon(Icons.label),
                  dense: true, // 간격 좁혀주는
                  //  selected: count,
/*
                  trailing: Checkbox(
                    value: _isSelected,
                    onChanged: (bool newValue)  {
                      setState(()=> _isSelected = newValue);
                    },// 오른쪽 끝 아이콘

                  ),*/
                  //  enabled: false, //selected: true,

                  // onTap: () => _tapCallback, // _pressCallback
                ),
              ],
            )
        )
    );
  }
}

