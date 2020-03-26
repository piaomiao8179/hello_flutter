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
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader( // drawer的头部控件
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: UnconstrainedBox( // 解除父级的大小限制
                child: CircleAvatar(
                  radius: 40,
                  backgroundColor: Colors.transparent,
                  backgroundImage: NetworkImage(
                    'https://i.loli.net/2020/01/21/4t5hLOoF3YeKSHT.png',
                  ),
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("设置"),
              onTap: _popDrawer,
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("个人"),
              onTap: _popDrawer,
            ),
            ListTile(
              leading: Icon(Icons.feedback),
              title: Text("反馈"),
              onTap: _popDrawer,
            ),
          ],
        ),
      ),
      //drawerEdgeDragWidth: 0.0, // 禁止通过滑动打开drawer
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
  
  get _popDrawer => () => Navigator.pop(context);
}
