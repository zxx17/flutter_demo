import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';

/// 底部导航栏组件
class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  final appScreen = [
    const Center(child: Text("Home")),
    const Center(child: Text("Search")),
    const Center(child: Text("Tickets")),
    const Center(child: Text("Profile"))
  ];

  /// change our index for BottomNavBar
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    // 更新页面
    setState(() {
      this._selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      // 顶部
      appBar: AppBar(title: const Center(child: Text("My tickets"))),
      // 屏幕
      body: appScreen[_selectedIndex],
      // 底部导航栏
      bottomNavigationBar: BottomNavigationBar(
        // 监听改变事件
        onTap: _onItemTapped,
        // 选中颜色
        selectedItemColor: Colors.blueGrey,
        // 非选中颜色
        unselectedItemColor: const Color(0xFF526400),
        // 是否显示标签
        showSelectedLabels: false,
        // 导航栏项-至少两项  引入了fluent_ui
        items: const [
          BottomNavigationBarItem(
              icon: Icon(FluentSystemIcons.ic_fluent_home_add_regular),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_home_add_filled),
              label: "Home"),

          BottomNavigationBarItem(
              icon: Icon(FluentSystemIcons.ic_fluent_search_regular),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_search_filled),
              label: "Search"),

          BottomNavigationBarItem(
              icon: Icon(FluentSystemIcons.ic_fluent_ticket_regular),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_ticket_filled),
              label: "Tickets"),

          BottomNavigationBarItem(
              icon: Icon(FluentSystemIcons.ic_fluent_person_regular),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_person_filled),
              label: "Profile"),
        ],
      ),
    );
  }
}
