import 'package:dashboard/core/constants/strings.dart';
import 'package:dashboard/ui/shared/app_colors.dart';
import 'package:dashboard/ui/shared/styles.dart';
import 'package:dashboard/ui/shared/ui_helpers.dart';
import 'package:flutter/material.dart';

part 'widgets/logo/logo.dart';
part 'widgets/drawer_list_tile/drawer_list_tile.dart';

class SideMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          children: [
            _buildLogo(),
            DrawerListTile(
              title: 'Травы',
              icondData: 'assets/icons/grass.png',
              onPressed: () {},
            ),
            DrawerListTile(
              title: 'Ягоды',
              icondData: 'assets/icons/strawberry.png',
              onPressed: () {},
            ),
            DrawerListTile(
              title: 'Деревья',
              icondData: 'assets/icons/tree.png',
              onPressed: () {},
            ),
            DrawerListTile(
              title: 'Водоемы',
              icondData: 'assets/icons/water.png',
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
