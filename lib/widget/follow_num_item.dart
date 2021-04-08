
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class FollowNumItem extends StatelessWidget {
  
  int num;
  String title;

  FollowNumItem(this.num, this.title);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(4),
            child: Text(num.toString(), style: TextStyle(fontSize: 18, color: Colors.black),),
          ),
          Align(
            alignment: Alignment.center,
            child: Text(title, style: TextStyle(color: Colors.grey)),
          )
        ],
      ),
    );
  }

}