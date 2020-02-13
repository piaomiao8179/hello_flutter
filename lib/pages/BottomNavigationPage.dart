import 'package:flutter/material.dart';
import 'package:hello_flutter/constants/BottomNavigationConstants.dart';

class BottomNavigationPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _BottomNavigationPageState();
  }
}

class _BottomNavigationPageState extends State<BottomNavigationPage> {
  // 当前选中item的下标
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("底部导航栏页面"),
      ),
      body: pages[this._currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: bottomNavBarItems,
        onTap: _changePage,
        currentIndex: this._currentIndex,
        type: BottomNavigationBarType.fixed,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.add,
          size: 36,
        ),
        onPressed: _pressAdd,
        backgroundColor: Colors.yellow,
        foregroundColor: Colors.black,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  void _changePage(int index) {
    setState(() {
      if (index != this._currentIndex) this._currentIndex = index;
    });
  }

  void _pressAdd() {
    setState(() {
      if (2 != this._currentIndex) this._currentIndex = 2;
    });
  }
}
