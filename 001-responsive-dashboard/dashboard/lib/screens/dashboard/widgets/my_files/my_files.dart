import 'package:dashboard/constatnts.dart';
import 'package:dashboard/models/MyFiles.dart';
import 'package:dashboard/responsive.dart';
import 'package:dashboard/screens/dashboard/widgets/my_files/widgets/file_info_card.dart';
import 'package:flutter/material.dart';

class MyFiles extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;

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
        Responsive(
          mobile: FileInfoCardGridView(
            crossAxisCount: _size.width < 650 ? 2 : 4,
            childAspectRatio: _size.width < 650 ? 1.3 : 1,
          ),
          tablet: FileInfoCardGridView(),
          desktop: FileInfoCardGridView(
            childAspectRatio: _size.width < 1400 ? 1.1 : 1.4,
          ),
        )
      ],
    );
  }
}

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
      itemCount: demoMyFiles.length,
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        childAspectRatio: childAspectRatio,
        crossAxisSpacing: defaultPadding,
        mainAxisSpacing: defaultPadding,
      ),
      itemBuilder: (context, index) {
        return FileInfoCard(
          cloudStorageInfo: demoMyFiles[index],
        );
      },
    );
  }
}
