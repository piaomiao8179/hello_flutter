import 'package:flutter/material.dart';

// 需要显示的tab子项集合
final tabs = <Tab>[
  Tab(
    text: "热门",
  ),
  Tab(
    text: "新闻",
  ),
  Tab(
    text: "政治",
  ),
  Tab(
    text: "同城",
  ),
  Tab(
    text: "流行",
  ),
];

// 对应上述tab切换后具体需要显示的页面内容
final tabBarViews = <Widget>[
  Center(
    child: Text("热门Tab对应的界面"),
  ),
  Center(
    child: Text("新闻Tab对应的界面"),
  ),
  Center(
    child: Text("政治Tab对应的界面"),
  ),
  Center(
    child: Text("同城Tab对应的界面"),
  ),
  Center(
    child: Text("流行Tab对应的界面"),
  ),
];
