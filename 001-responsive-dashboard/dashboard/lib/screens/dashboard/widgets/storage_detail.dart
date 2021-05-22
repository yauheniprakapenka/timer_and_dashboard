import 'package:dashboard/constatnts.dart';
import 'package:dashboard/screens/dashboard/widgets/chart.dart';
import 'package:dashboard/screens/dashboard/widgets/storage_card.dart';
import 'package:flutter/material.dart';

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
        SizedBox(height: defaultPadding),
        Chart(),
        SizedBox(height: defaultPadding),
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
