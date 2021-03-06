import 'package:dashboard/core/constants/strings.dart';
import 'package:dashboard/responsive.dart';
import 'package:dashboard/ui/shared/app_colors.dart';
import 'package:dashboard/ui/shared/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (!Responsive.isDesktop(context))
          IconButton(
            icon: Icon(
              Icons.menu,
            ),
            onPressed: () {},
          ),
        Text(
          Strings.onion,
          style: Theme.of(context).textTheme.headline6,
        ),
        Spacer(flex: 2),
        Expanded(
          child: SearchField(),
        ),
        Profile(),
      ],
    );
  }
}

class SearchField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(
          horizontal: Styles.horizontalPadding16,
        ),
        hintText: Strings.find,
        fillColor: AppColors.foreground,
        filled: true,
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        suffixIcon: GestureDetector(
          child: Container(
            margin: EdgeInsets.all(5),
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: AppColors.foreground,
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
            child: SvgPicture.asset('assets/icons/Search.svg'),
          ),
          onTap: () {
            print('search bautton pressed');
          },
        ),
      ),
    );
  }
}

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: Styles.horizontalPadding16,
        vertical: Styles.horizontalPadding16 / 2,
      ),
      margin: EdgeInsets.only(left: Styles.horizontalPadding16),
      decoration: BoxDecoration(
        color: AppColors.foreground,
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
        border: Border.all(
          color: Colors.white10,
        ),
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: Styles.horizontalPadding16 / 2,
            ),
            child: Image.asset('assets/images/avatar.jpg'),
          ),
          Text('Bear and rabbit'),
          Icon(Icons.arrow_drop_down_outlined),
        ],
      ),
    );
  }
}
