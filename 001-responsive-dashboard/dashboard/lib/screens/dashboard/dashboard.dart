import 'package:dashboard/constatnts.dart';
import 'package:dashboard/screens/dashboard/widgets/header.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: defaultPadding,
            ),
            height: 40,
            child: Header(),
          ),
        ],
      ),
    );
  }
}
