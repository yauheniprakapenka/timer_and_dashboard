part of '../../side_menu.dart';

Widget _buildLogo() {
  return Container(
    decoration: BoxDecoration(
      color: AppColors.background,
      borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(
          Styles.borderRadius10,
        ),
        bottomRight: Radius.circular(
          Styles.borderRadius10,
        ),
      ),
    ),
    child: Column(
      children: [
        Container(
          padding: EdgeInsets.all(
            Styles.horizontalPadding16,
          ),
          child: Image.asset(
            'assets/images/logo.png',
          ),
        ),
        Text(
          Strings.forestShop,
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
          ),
        ),
        UIHelpers.vertivalPadding16,
      ],
    ),
  );
}
