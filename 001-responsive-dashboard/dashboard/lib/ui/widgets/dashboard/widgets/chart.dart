import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class Chart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: 200,
          child: PieChart(
            PieChartData(
              sections: pieChartSectionDatas,
              startDegreeOffset: 270,
            ),
          ),
        ),
        Positioned.fill(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '17.5',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
              Text('of 128 Gb'),
            ],
          ),
        )
      ],
    );
  }
}

List<PieChartSectionData> pieChartSectionDatas = [
  PieChartSectionData(
    color: Colors.grey[600],
    showTitle: false,
    value: 25,
  ),
  PieChartSectionData(
    color: Colors.blue[600],
    showTitle: false,
    value: 50,
  ),
  PieChartSectionData(
    color: Colors.orange[600],
    showTitle: false,
  ),
  PieChartSectionData(
    color: Colors.deepPurple[600],
    showTitle: false,
  ),
];
