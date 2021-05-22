import 'package:dashboard/screens/dashboard/dashboard.dart';
import 'package:dashboard/screens/main/components/side_menu.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          children: [
            Expanded(
              child: SideMenu(),
            ),
            Expanded(
              flex: 5,
              child: Dashboard(),
            ),
          ],
        ),
      ),
    );
  }
}
