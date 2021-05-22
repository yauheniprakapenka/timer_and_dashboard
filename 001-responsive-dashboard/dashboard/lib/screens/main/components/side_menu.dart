import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SideMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          children: [
            DrawerHeader(
              child: Column(
                children: [
                  Image.asset('assets/images/logo.png'),
                  Text(
                    'Лукошко Inc.',
                    style: TextStyle(
                      color: Colors.white70,
                    ),
                  )
                ],
              ),
            ),
            DrawerListTile(
              title: 'Dashboard',
              svgSrc: 'assets/icons/menu_dashbord.svg',
              onPressed: () {},
            ),
            DrawerListTile(
              title: 'Transaction',
              svgSrc: 'assets/icons/menu_tran.svg',
              onPressed: () {},
            ),
            DrawerListTile(
              title: 'Task',
              svgSrc: 'assets/icons/menu_task.svg',
              onPressed: () {},
            ),
            DrawerListTile(
              title: 'Document',
              svgSrc: 'assets/icons/menu_doc.svg',
              onPressed: () {},
            ),
            DrawerListTile(
              title: 'Store',
              svgSrc: 'assets/icons/menu_store.svg',
              onPressed: () {},
            ),
            DrawerListTile(
              title: 'Notification',
              svgSrc: 'assets/icons/menu_notification.svg',
              onPressed: () {},
            ),
            DrawerListTile(
              title: 'Profile',
              svgSrc: 'assets/icons/menu_profile.svg',
              onPressed: () {},
            ),
            DrawerListTile(
              title: 'Setting',
              svgSrc: 'assets/icons/menu_setting.svg',
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}

class DrawerListTile extends StatelessWidget {
  final String title, svgSrc;
  final VoidCallback onPressed;

  DrawerListTile({
    required this.title,
    required this.onPressed,
    required this.svgSrc,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      horizontalTitleGap: 0,
      leading: SvgPicture.asset(
        svgSrc,
        color: Colors.white54,
        height: 16,
      ),
      title: Text(
        title,
        style: TextStyle(
          color: Colors.white54,
        ),
      ),
      onTap: () {
        onPressed();
      },
    );
  }
}
