import 'package:dashboard/models/RecentFile.dart';
import 'package:dashboard/responsive.dart';
import 'package:dashboard/ui/shared/app_colors.dart';
import 'package:dashboard/ui/shared/styles.dart';
import 'package:dashboard/ui/widgets/side_menu/widgets/my_files/my_files.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'widgets/header.dart';
import 'widgets/storage_detail.dart';

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
          SizedBox(height: Styles.horizontalPadding16),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 5,
                child: Container(
                  child: Column(
                    children: [
                      MyFiles(),
                      SizedBox(height: Styles.horizontalPadding16),
                      Container(
                        padding: EdgeInsets.all(Styles.horizontalPadding16),
                        decoration: BoxDecoration(
                          color: AppColors.foreground,
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Recent files'),
                            SizedBox(
                              width: double.infinity,
                              child: DataTable(
                                horizontalMargin: 0,
                                columns: [
                                  DataColumn(label: Text('File name')),
                                  DataColumn(label: Text('Date')),
                                  DataColumn(label: Text('Size')),
                                ],
                                rows: List.generate(
                                  demoRecentFiles.length,
                                  (int index) {
                                    return _buildRecentFile(index);
                                  },
                                ),
                              ),
                            ),
                            if (Responsive.isMobile(context))
                              SizedBox(width: Styles.horizontalPadding16),
                            if (Responsive.isMobile(context)) StorageDetail()
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              if (!Responsive.isMobile(context))
                SizedBox(width: Styles.horizontalPadding16),
              if (!Responsive.isMobile(context))
                Expanded(
                  flex: 2,
                  child: Container(
                    padding: EdgeInsets.all(Styles.horizontalPadding16),
                    decoration: BoxDecoration(
                      color: AppColors.foreground,
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

  DataRow _buildRecentFile(int index) {
    return DataRow(
      cells: [
        DataCell(
          Row(
            children: [
              SvgPicture.asset(demoRecentFiles[index].icon),
              SizedBox(width: Styles.horizontalPadding16 / 2),
              Text(demoRecentFiles[index].title)
            ],
          ),
        ),
        DataCell(Text(demoRecentFiles[index].date)),
        DataCell(Text(demoRecentFiles[index].size)),
      ],
    );
  }
}
