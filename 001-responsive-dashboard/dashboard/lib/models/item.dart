import 'package:dashboard/ui/shared/app_colors.dart';
import 'package:flutter/material.dart';

class Item {
  final String title;
  final int count, max;
  final Color color;
  final Widget icon;

  Item({
    required this.icon,
    required this.title,
    required this.max,
    required this.count,
    required this.color,
  });
}

List<Item> demoItems = <Item>[
  Item(
    title: 'Авокадо',
    icon: Image.asset('assets/icons/avocado.png'),
    color: AppColors.avocado,
    count: 46,
    max: 100,
  ),
  Item(
    title: 'Яблоко',
    icon: Image.asset('assets/icons/green_apple.png'),
    color: AppColors.apple,
    count: 13,
    max: 80,
  ),
  Item(
    title: 'Баклажан',
    icon: Image.asset('assets/icons/eggplant.png'),
    color: AppColors.eggplant,
    count: 28,
    max: 110,
  ),
  Item(
    title: 'Персик',
    icon: Image.asset('assets/icons/peach.png'),
    color: AppColors.peach,
    count: 65,
    max: 70,
  ),
];
