library expandable_card;

import 'package:flutter/material.dart';

/// An expandable card.
class ExpandableCard extends StatefulWidget{
  @override
  _ExpandableClassState createState() => _ExpandableClassState();
}

class _ExpandableClassState extends State<ExpandableCard>
{
  double boxHeight = 200.0;
  bool isSmall = true;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return
      AnimatedContainer(
        duration: Duration(seconds:1),
        height: boxHeight,
        width: 200.0,
        //constraints: BoxConstraints.expand(),
        child: Card(
            elevation: 20.0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Center(
                  child: RaisedButton(
                    onPressed:() {
                      changeSize();
                    },
                    child: Text("Press Me!"),
                  ),

                )
              ],
            )
        ),
      );
  }

  void changeSize () {
    setState(() {
      if (isSmall) {
        boxHeight = 400.0;
        isSmall = !isSmall;
      }
      else {
        boxHeight = 200.0;
        isSmall = !isSmall;
      }
    });
  }
}
