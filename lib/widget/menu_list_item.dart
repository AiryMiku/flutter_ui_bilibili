import 'package:flutter/material.dart';

class MenuListItem extends StatelessWidget {

  String image;
  String title;

  MenuListItem(this.title, this.image);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        padding: EdgeInsets.all(10),
        child: Row(
          children: <Widget>[
            SizedBox(
              width: 40,
              height: 40,
              child: Image.asset(image)
            ),
            
            Container(
              margin: EdgeInsets.only(left: 10),
              child: Text(title, style: TextStyle(fontSize: 16, color: Colors.grey)),
            ),

            Spacer(),

            Text(">", style: TextStyle(fontSize: 16, color: Colors.grey))
          ],
        ),
      )
    );
  }

}