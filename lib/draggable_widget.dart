import 'package:flutter/material.dart';

class DraggableWidget extends StatefulWidget {
  final Offset offset;
  final Color widgetColor;

  const DraggableWidget({Key key, this.offset, this.widgetColor})
      : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _DraggableWidgetState();
  }
}

class _DraggableWidgetState extends State<DraggableWidget> {
  Offset offset = Offset(0.0, 0.0);

  @override
  void initState() {
    super.initState();
    offset = widget.offset;
  }

  @override
  Widget build(BuildContext context) {
    return Positioned(
        left: offset.dx,
        top: offset.dy,
        child: Draggable(
          data: widget.widgetColor,
          child: Container(
            width: 100.0,
            height: 100.0,
            color: widget.widgetColor,
          ),
          //当子元素拖动时的样子
          feedback: Container(
            width: 110,
            height: 110,
            color: widget.widgetColor.withOpacity(0.5),
          ),
          onDraggableCanceled: (Velocity velocity, Offset offset) {
            setState(() {
              this.offset = offset;
            });
          },
        ));
  }
}
