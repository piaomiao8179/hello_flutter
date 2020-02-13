import 'package:flutter/material.dart';
import 'package:hello_flutter/pages/FivePage.dart';
import 'package:hello_flutter/pages/FourPage.dart';
import 'package:hello_flutter/pages/HomePage.dart';
import 'package:hello_flutter/pages/SecondPage.dart';
import 'package:hello_flutter/pages/ThirdPage.dart';

// 切换底部导航栏需要跳转的页面
final pages = <Widget>[
  HomePage(),
  SecondPage(),
  ThirdPage(),
  FourPage(),
  FivePage()
];

// 底部导航栏要显示的所有子项
final List<BottomNavigationBarItem> bottomNavBarItems = [
  BottomNavigationBarItem(
    icon: Icon(Icons.home),
    title: Text("闲鱼")
  ),
  BottomNavigationBarItem(
      icon: Icon(Icons.blur_circular),
      title: Text("鱼塘")
  ),
  BottomNavigationBarItem(
      icon: Icon(Icons.add),
      title: Text("卖闲置")
  ),
  BottomNavigationBarItem(
      icon: Icon(Icons.message),
      title: Text("消息")
  ),
  BottomNavigationBarItem(
      icon: Icon(Icons.person),
      title: Text("我的")
  ),
];
