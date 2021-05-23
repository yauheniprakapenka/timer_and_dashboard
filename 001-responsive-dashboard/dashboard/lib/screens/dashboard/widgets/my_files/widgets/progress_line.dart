import 'package:flutter/material.dart';

class ProgressLine extends StatelessWidget {
  final Color color;

  ProgressLine({
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 5,
          decoration: BoxDecoration(
            color: color.withOpacity(0.1),
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
        ),
        LayoutBuilder(
          builder: (context, constraints) {
            return Container(
              height: 5,
              width: constraints.maxWidth * 0.4,
              decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}
