import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  final Widget mobile, tablet, desktop;

  Responsive({
    @required this.mobile,
    this.tablet,
    @required this.desktop,
  });

  static bool isMobile(BuildContext context) {
    return MediaQuery.of(context).size.width < 850;
  }

  static bool isTablet(BuildContext context) {
    return MediaQuery.of(context).size.width >= 850 &&
        MediaQuery.of(context).size.width < 1100;
  }

  static bool isDesktop(BuildContext context) {
    return MediaQuery.of(context).size.width >= 1100;
  }

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    if (_size.width >= 1100) return tablet;
    if (_size.width >= 850 && tablet != null) return tablet;
    return mobile;
  }
}
