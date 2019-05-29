import 'package:flutter/material.dart';
import 'package:flutter_views/custom_router.dart';

class CustomRouterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
          title: Text(
            "FirstPage",
            style: TextStyle(fontSize: 36.0),
          ),
          elevation: 0.0),
      body: Center(
        child: MaterialButton(
          onPressed: () {
            Navigator.of(context).push(CustomRoute(CustomRouterPage2()));
          },
          child: Icon(Icons.navigate_next,
          color: Colors.white,
          size: 24.0),
        ),
      ),
    );
  }
}

class CustomRouterPage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pinkAccent,
      appBar: AppBar(
          title: Text(
            "SecendPage",
            style: TextStyle(fontSize: 36.0),
          ),
          elevation: 4.0),
      body: Center(
        child: MaterialButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Icon(Icons.navigate_before,
              color: Colors.white,
              size: 24.0),
        ),
      ),
    );
  }
}

