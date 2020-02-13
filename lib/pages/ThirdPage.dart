import 'package:flutter/material.dart';
import 'package:hello_flutter/constants/TabsConstants.dart';

class ThirdPage extends StatefulWidget {
  @override
  State createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: tabs.length, vsync: this);
    _tabController.addListener(() => print("当前点击的是第${_tabController.index}个tab"));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TabBar(
          controller: _tabController,
          tabs: tabs,
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: tabBarViews,
      ),
    );
  }
}
