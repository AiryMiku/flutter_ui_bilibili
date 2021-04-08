import 'package:flutter/material.dart';
import 'package:flutter_ui_bilibili/widget/follow_num_item.dart';
import 'package:flutter_ui_bilibili/widget/menu_cell_item.dart';
import 'package:flutter_ui_bilibili/widget/menu_list_item.dart';

class PageMe extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _PageMeState();
}

class _PageMeState extends State<PageMe> {
  static final Color accentColor = Color(0xFFFB7299);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color.fromARGB(100, 255, 255, 255),
        child: ListView(
          children: <Widget>[
            // Top button
            Container(
                padding: EdgeInsets.all(10),
                // color: Colors.blueGrey,
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Row(
                    children: <Widget>[
                      Spacer(),
                      Container(
                        width: 40,
                        height: 40,
                        margin: EdgeInsets.only(left: 10, right: 10),
                        child: Image.asset("images/icon_Certification_big_member_22_3x.png"),
                      ),
                      Container(
                        width: 40,
                        height: 40,
                        margin: EdgeInsets.only(left: 10, right: 10),
                        child: Image.asset("images/icon_Certification_big_member_22_3x.png"),
                      ),
                      Container(
                        width: 40,
                        height: 40,
                        margin: EdgeInsets.only(left: 10, right: 10),
                        child: Image.asset("images/icon_Certification_big_member_22_3x.png"),
                      ),
                    ],
                  ),
                )),

            Container(
              padding: EdgeInsets.only(left: 10, right: 10),
              child: Row(
                children: <Widget>[
                  // Avatar area
                  Container(
                    margin: EdgeInsets.all(4),
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                        image: DecorationImage(
                            image: AssetImage("images/avatar.webp"))),
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: Container(
                          height: 20,
                          width: 20,
                          child: Image.asset(
                              "images/icon_Certification_big_member_22_3x.png")),
                    ),
                  ),

                  // name area
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Text(
                              "Airy_Miku",
                              style:
                                  TextStyle(color: accentColor, fontSize: 20),
                            ),
                            Image.asset("images/level.webp")
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 4, bottom: 4),
                          padding: EdgeInsets.only(
                              top: 2, bottom: 2, left: 4, right: 4),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(2)),
                            color: accentColor,
                          ),
                          child: Text(
                            "年度大会员",
                            style: TextStyle(color: Colors.white, fontSize: 10),
                          ),
                        ),
                        Text("B币: 5.0    硬币: 1487",
                            style: TextStyle(color: Colors.grey, fontSize: 12)),
                      ],
                    ),
                  ),

                  Spacer(),

                  // zone
                  Text("空间 >",
                      style: TextStyle(color: Colors.grey, fontSize: 12))
                ],
              ),
            ),
            // User basic info

            // follow data area
            Container(
                padding: EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    FollowNumItem(57, "动态"),
                    SizedBox(
                      width: 1,
                      height: 24,
                      child: DecoratedBox(
                        decoration:
                            BoxDecoration(color: Colors.grey.withAlpha(50)),
                      ),
                    ),
                    FollowNumItem(295, "关注"),
                    SizedBox(
                      width: 1,
                      height: 24,
                      child: DecoratedBox(
                        decoration:
                            BoxDecoration(color: Colors.grey.withAlpha(50)),
                      ),
                    ),
                    FollowNumItem(13, "粉丝"),
                  ],
                )),

            // vip card
            Container(
                child: SizedBox(
              height: 75,
              child: Stack(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.center,
                            end: Alignment.bottomCenter,
                            colors: <Color>[
                          accentColor.withAlpha(0),
                          accentColor.withAlpha(40),
                          accentColor.withAlpha(80)
                        ])),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 14, right: 14, top: 10),
                    padding: EdgeInsets.only(
                        left: 14, right: 14, top: 10, bottom: 10),
                    alignment: Alignment.bottomLeft,
                    decoration: BoxDecoration(
                        color: accentColor,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(4),
                            topRight: Radius.circular(4))),
                    child: Stack(
                      children: <Widget>[
                        Opacity(
                          opacity: 0.3,
                          child: Container(
                            child: Image.asset("images/icon_Certification_big_member_22_3x.png"),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("我的大会员",
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                                fontWeight: FontWeight.bold)),
                            Text("番剧国创抢先看",
                              style:
                                TextStyle(fontSize: 12, color: Colors.white60)),
                          ],
                        ),
                      ],
                    )
                  )
                ],
              ),
            )),

            // local function area
            Container(
              padding: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  MenuCellItem("离线缓存", "images/icon_Certification_big_member_22_3x.png"),
                  MenuCellItem("历史记录", "images/icon_Certification_big_member_22_3x.png"),
                  MenuCellItem("我的收藏", "images/icon_Certification_big_member_22_3x.png"),
                  MenuCellItem("稍后再看", "images/icon_Certification_big_member_22_3x.png"),
                ]
              )
            ),

            // more function
            Container(
              padding: EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("更多功能", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),

                  MenuListItem("联系客服", "images/icon_Certification_big_member_22_3x.png"),
                  MenuListItem("设置", "images/icon_Certification_big_member_22_3x.png"),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
