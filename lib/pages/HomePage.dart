import 'package:flutter/material.dart';
import 'package:hello_flutter/constants/TabsConstants.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabs.length,
      child: Scaffold(
        appBar: AppBar(
          title: TabBar(
            tabs: tabs,
          ),
        ),
        body: TabBarView(
          children: tabBarViews,
        ),
      ),
    );
  }
}
