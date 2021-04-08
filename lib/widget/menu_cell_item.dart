
import 'package:flutter/material.dart';

class MenuCellItem extends StatelessWidget {
  
  String title;
  String image;

  MenuCellItem(
    this.title, this.image
  );

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(4),
            child: SizedBox(
              width: 40,
              height: 40,
              child: Image.asset(image),
            ),
          ),
          Text(title, style: TextStyle(fontSize: 12, color: Colors.grey),)
        ],
      ),
    );
  }

}