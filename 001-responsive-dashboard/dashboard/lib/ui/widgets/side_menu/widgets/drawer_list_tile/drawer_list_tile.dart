part of '../../side_menu.dart';

class DrawerListTile extends StatelessWidget {
  final String title, icondData;
  final VoidCallback onPressed;

  DrawerListTile({
    required this.title,
    required this.onPressed,
    required this.icondData,
  });

  @override
  Widget build(BuildContext context) {
    final _iconSize = 24.0;

    return ListTile(
      horizontalTitleGap: 0,
      leading: Container(
        width: _iconSize,
        height: _iconSize,
        decoration: BoxDecoration(),
        child: Image.asset(
          icondData,
          color: AppColors.whiteWithOpacity,
        ),
      ),
      title: Text(
        title,
        style: TextStyle(
          color: AppColors.whiteWithOpacity,
        ),
      ),
      onTap: () {
        onPressed();
      },
    );
  }
}
