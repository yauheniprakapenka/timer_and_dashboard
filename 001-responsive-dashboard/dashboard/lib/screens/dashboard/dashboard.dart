import 'package:dashboard/constatnts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Row(
            children: [
              Text(
                'Dashboard',
                style: Theme.of(context).textTheme.headline6,
              ),
              Spacer(),
              Expanded(
                child: SearchField(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class SearchField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        fillColor: secondaryColor,
        filled: true,
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        suffixIcon: GestureDetector(
          child: Container(
            padding: EdgeInsets.all(
              defaultPadding * 0.75,
            ),
            margin: EdgeInsets.symmetric(
              horizontal: defaultPadding / 2,
            ),
            decoration: BoxDecoration(
              color: primaryColor,
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
