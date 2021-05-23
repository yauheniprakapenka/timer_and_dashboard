import 'package:dashboard/constatnts.dart';
import 'package:dashboard/models/MyFiles.dart';
import 'package:dashboard/screens/dashboard/widgets/my_files/widgets/file_info_card.dart';
import 'package:flutter/material.dart';

class MyFiles extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('My Files'),
            ElevatedButton(
              child: Text('Add new'),
              onPressed: () {},
            ),
          ],
        ),
        SizedBox(height: defaultPadding),
        GridView.builder(
          itemCount: demoMyFiles.length,
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
            crossAxisSpacing: defaultPadding / 2,
          ),
          itemBuilder: (context, index) {
            return FileInfoCard(
              cloudStorageInfo: demoMyFiles[index],
            );
          },
        ),
      ],
    );
  }
}
