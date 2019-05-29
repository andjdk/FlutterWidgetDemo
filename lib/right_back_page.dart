import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RightBackPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(child: Center(
      child: Container(
        width: 100.0,
        height: 100.0,
        color: Colors.pink,
        child: CupertinoButton(
            child: Icon(CupertinoIcons.add
            ), onPressed: () {
          Navigator.of(context).push(CupertinoPageRoute(builder: (BuildContext context){
            return RightBackPage();
          }));
        }),
      ),
    ));
  }

}