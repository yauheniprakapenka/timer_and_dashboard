import 'package:dashboard/models/item.dart';
import 'package:dashboard/ui/shared/app_colors.dart';
import 'package:dashboard/ui/shared/styles.dart';
import 'package:flutter/material.dart';

import 'progress_line.dart';

class FileInfoCardGridView extends StatelessWidget {
  final int crossAxisCount;
  final double childAspectRatio;

  FileInfoCardGridView({
    this.childAspectRatio = 1.4,
    this.crossAxisCount = 4,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: demoItems.length,
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        childAspectRatio: childAspectRatio,
        crossAxisSpacing: Styles.horizontalPadding16,
        mainAxisSpacing: Styles.horizontalPadding16,
      ),
      itemBuilder: (context, index) {
        return _FileInfoCard(
          item: demoItems[index],
        );
      },
    );
  }
}

class _FileInfoCard extends StatelessWidget {
  final Item item;

  _FileInfoCard({
    required this.item,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(Styles.horizontalPadding16 / 2),
      decoration: BoxDecoration(
        color: AppColors.foreground,
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
                  color: item.color.withOpacity(0.1),
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                child: Container(
                  padding: EdgeInsets.all(4),
                  child: item.icon,
                ),
              ),
              Icon(
                Icons.more_vert_rounded,
                size: 14,
              )
            ],
          ),
          Text(
            item.title,
          ),
          ProgressLine(
            color: item.color,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '${item.count} штук',
                style: TextStyle(
                  color: Colors.white54,
                  fontSize: 11,
                ),
              ),
              Text(
                '${item.max}',
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
