import 'package:flutter/material.dart';

class HomeKeepAlivePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _HomeKeepAlivePageState();
  }

}

class _HomeKeepAlivePageState extends State<HomeKeepAlivePage> with AutomaticKeepAliveClientMixin {
  int _counter = 0;

  @override
  bool get wantKeepAlive => true;

  void _incramentCounter(){
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("点击一次加一个数字"),
            Text("$_counter",style: TextStyle(fontSize: 16.0),)
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: _incramentCounter,
          tooltip: "incrament",
          child: Icon(Icons.add),
      ),
    );
  }
}