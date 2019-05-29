import 'package:flutter/material.dart';
import 'package:flutter_views/each_view.dart';

class BottomNavigationView2 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _BottomNavigationView2();
  }
}
class _BottomNavigationView2 extends State<BottomNavigationView2> {
  List<Widget> _eachView;
  int _index =0;

  @override
  void initState() {
    super.initState();
    _eachView = List();
    _eachView..add(EachView("home"))..add(EachView("discover"));
  }

  @override
  Widget build(BuildContext context) {
     return Scaffold(
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            IconButton(
              onPressed: () {
                setState(() {
                  _index = 0;
                });
              },
              icon: Icon(Icons.home),
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  _index = 1;
                });
              },
              icon: Icon(Icons.disc_full),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
            return EachView("NewPage");
          }));
        },
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
       body: _eachView[_index],
    );
  }
}
