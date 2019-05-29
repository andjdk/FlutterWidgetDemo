import 'package:flutter/material.dart';
import 'package:flutter_views/bottom_navigation_view.dart';
import 'package:flutter_views/bottom_navigation_view2.dart';
import 'package:flutter_views/clip_path_page.dart';
import 'package:flutter_views/custom_router_page.dart';
import 'package:flutter_views/frosted_glass_page.dart';
import 'package:flutter_views/keep_alive_page.dart';
import 'package:flutter_views/right_back_page.dart';
import 'package:flutter_views/search_bar_page.dart';

import 'draggable_widget_page.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[
          RaisedButton(onPressed:(){
            Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
              return BottomNavigationView();
            }));
          },child: Text("底部导航"),),
          RaisedButton(onPressed:(){
            Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
              return BottomNavigationView2();
            }));
          },child: Text("底部导航2"),),
          RaisedButton(onPressed:(){
            Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
              return CustomRouterPage();
            }));
          },child: Text("自定义路由跳转动画"),),
          RaisedButton(onPressed:(){
            Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
              return FrostedGlassPage();
            }));
          },child: Text("毛玻璃效果"),),
          RaisedButton(onPressed:(){
            Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
              return KeepAlivePage();
            }));
          },child: Text("保持页面状态"),),
          RaisedButton(onPressed:(){
            Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
              return SearchBarPage();
            }));
          },child: Text("搜索页面控件"),),
          RaisedButton(onPressed:(){
            Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
              return ClipPathPage();
            }));
          },child: Text("贝塞尔曲线绘制图片"),),
          RaisedButton(onPressed:(){
            Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
              return RightBackPage();
            }));
          },child: Text("右滑返回上一页"),),
          RaisedButton(onPressed:(){
            Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
              return DraggableWidgetPage();
            }));
          },child: Text("滑动拖拽"),),
        ],
      ),
    );
  }
}
