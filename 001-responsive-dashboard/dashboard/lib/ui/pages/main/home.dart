import 'package:dashboard/responsive.dart';
import 'package:dashboard/ui/widgets/dashboard/dashboard.dart';
import 'package:dashboard/ui/widgets/side_menu/side_menu.dart';
import 'package:dashboard/ui/shared/styles.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (Responsive.isDesktop(context))
              Expanded(
                child: SideMenu(),
              ),
            Expanded(
              flex: 5,
              child: Padding(
                padding: EdgeInsets.all(Styles.horizontalPadding16),
                child: Dashboard(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
