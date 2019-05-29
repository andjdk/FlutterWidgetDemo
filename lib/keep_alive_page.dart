import 'package:flutter/material.dart';
import 'package:flutter_views/home_keep_alive_page.dart';

class KeepAlivePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _KeepAlivePageState();
  }

}

class _KeepAlivePageState extends State<KeepAlivePage> with SingleTickerProviderStateMixin{
  TabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    if(_controller !=null){
      _controller.dispose();
    }

    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("保持页面状态"),
        bottom: TabBar(
          controller: _controller,
          tabs: <Widget>[
            Tab(icon: Icon(Icons.home),),
            Tab(icon: Icon(Icons.home),),
            Tab(icon: Icon(Icons.home),),
          ],
        ),
      ),
      body: TabBarView(
        controller: _controller,
        children: <Widget>[
          HomeKeepAlivePage(),
          HomeKeepAlivePage(),
          HomeKeepAlivePage(),
        ],
      ),
    );
  }
}