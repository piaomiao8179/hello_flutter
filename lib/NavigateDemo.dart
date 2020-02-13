import 'package:flutter/material.dart';
import 'package:hello_flutter/pages/BottomNavigationPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // 常用固定写法，生成Material风格的App
    return MaterialApp(
      title: "路由使用",
      home: BottomNavigationPage(),
    );
  }
}