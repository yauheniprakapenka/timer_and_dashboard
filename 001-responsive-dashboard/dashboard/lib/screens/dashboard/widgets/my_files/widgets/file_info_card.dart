import 'package:dashboard/constatnts.dart';
import 'package:dashboard/models/MyFiles.dart';
import 'package:dashboard/screens/dashboard/widgets/my_files/widgets/progress_line.dart';
import 'package:flutter/material.dart';

class FileInfoCard extends StatelessWidget {
  final CloudStorageInfo cloudStorageInfo;

  FileInfoCard({
    required this.cloudStorageInfo,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(defaultPadding / 2),
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                  color: cloudStorageInfo.color.withOpacity(0.1),
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                child: cloudStorageInfo.icon,
              ),
              Icon(
                Icons.more_vert_rounded,
                size: 14,
              )
            ],
          ),
          Text(
            cloudStorageInfo.title,
          ),
          ProgressLine(
            color: cloudStorageInfo.color,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '412 files',
                style: TextStyle(
                  color: Colors.white54,
                  fontSize: 11,
                ),
              ),
              Text(
                '4GB',
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
