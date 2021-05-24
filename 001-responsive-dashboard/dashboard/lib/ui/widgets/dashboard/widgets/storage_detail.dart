import 'package:dashboard/ui/shared/styles.dart';
import 'package:dashboard/ui/widgets/dashboard/widgets/storage_card.dart';
import 'package:flutter/material.dart';

import 'chart.dart';

class StorageDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Storage details',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
        SizedBox(height: Styles.horizontalPadding16),
        Chart(),
        SizedBox(height: Styles.horizontalPadding16),
        StorageCard(
          title: 'Document files',
          numberOfFiles: '764',
          numberOfSpace: '1.3GB',
          icon: Icon(
            Icons.file_copy_sharp,
            color: Colors.blue[400],
            size: 16,
          ),
        ),
        StorageCard(
          title: 'Media files',
          numberOfFiles: '764',
          numberOfSpace: '1.3GB',
          icon: Icon(
            Icons.file_copy_sharp,
            color: Colors.purple[400],
            size: 16,
          ),
        ),
        StorageCard(
          title: 'Other files',
          numberOfFiles: '764',
          numberOfSpace: '1.3GB',
          icon: Icon(
            Icons.file_copy_sharp,
            color: Colors.orange[400],
            size: 16,
          ),
        ),
      ],
    );
  }
}
