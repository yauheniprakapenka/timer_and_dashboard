import 'package:dashboard/constatnts.dart';
import 'package:dashboard/screens/dashboard/widgets/header.dart';
import 'package:dashboard/screens/dashboard/widgets/storage_detail.dart';
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
            crossAxisAlignment: CrossAxisAlignment.start,
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
                  decoration: BoxDecoration(
                    color: secondaryColor,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  child: StorageDetail(),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
