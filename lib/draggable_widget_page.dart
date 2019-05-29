import 'package:flutter/material.dart';
import 'draggable_widget.dart';


class DraggableWidgetPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _DraggableWidgetPageState();
  }

}

class _DraggableWidgetPageState extends State<DraggableWidgetPage> {

  Color _draggableColor = Colors.grey;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          DraggableWidget(
            offset: Offset(80, 80),
            widgetColor: Colors.tealAccent,
          ),
          DraggableWidget(
            offset: Offset(180, 80),
            widgetColor: Colors.red,
          ),
          Center(
            child: DragTarget(
                onAccept: (Color color){
                  _draggableColor = color;
                },
                builder: (context,candidateData,rejectedData){
                  return Container(
                    width: 200,
                    height: 200,
                    color: _draggableColor,
                  );
                }
            ),
          )
        ],
      ),
    );
  }
}