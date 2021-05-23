import 'package:dashboard/constatnts.dart';
import 'package:flutter/material.dart';

class CloudStorageInfo {
  final String title, totalStorate;
  final int numOfFiles, percentage;
  final Color color;
  final Icon icon;

  CloudStorageInfo({
    required this.icon,
    required this.title,
    required this.totalStorate,
    required this.numOfFiles,
    required this.percentage,
    required this.color,
  });
}

List<CloudStorageInfo> demoMyFiles = <CloudStorageInfo>[
  CloudStorageInfo(
    title: 'Documents',
    numOfFiles: 142,
    icon: Icon(
      Icons.file_copy,
      size: 14,
    ),
    totalStorate: '1.4GB',
    color: Colors.amber,
    percentage: 41,
  ),
  CloudStorageInfo(
    title: 'Media',
    numOfFiles: 142,
    icon: Icon(
      Icons.video_collection_outlined,
      size: 14,
    ),
    totalStorate: '1.4GB',
    color: Colors.pink,
    percentage: 41,
  ),
  CloudStorageInfo(
    title: 'Images',
    numOfFiles: 142,
    icon: Icon(
      Icons.image,
      size: 14,
    ),
    totalStorate: '1.4GB',
    color: primaryColor,
    percentage: 41,
  ),
  CloudStorageInfo(
    title: 'Other',
    numOfFiles: 142,
    icon: Icon(
      Icons.addchart_outlined,
      size: 14,
    ),
    totalStorate: '1.4GB',
    color: Colors.orange,
    percentage: 41,
  ),
];
