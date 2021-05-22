import 'package:dashboard/constatnts.dart';
import 'package:dashboard/screens/dashboard/widgets/chart.dart';
import 'package:dashboard/screens/dashboard/widgets/header.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 40,
            child: Header(),
          ),
          SizedBox(height: defaultPadding),
          Row(
            children: [
              Expanded(
                flex: 5,
                child: Container(
                  height: 500,
                  color: secondaryColor,
                ),
              ),
              SizedBox(width: defaultPadding),
              Expanded(
                flex: 2,
                child: Container(
                  padding: EdgeInsets.all(defaultPadding),
                  height: 500,
                  decoration: BoxDecoration(
                    color: secondaryColor,
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  child: Column(
                    children: [
                      Text(
                        'Storage details',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: defaultPadding),
                      Chart(),
                    ],
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
