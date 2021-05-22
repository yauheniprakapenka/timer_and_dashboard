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
              startDegreeOffset: 90,
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
              Text('of Gb'),
            ],
          ),
        )
      ],
    );
  }
}

List<PieChartSectionData> pieChartSectionDatas = [
  PieChartSectionData(
    value: 50,
    color: Colors.blue[600],
  ),
  PieChartSectionData(
    value: 20,
    color: Colors.orange[600],
  ),
  PieChartSectionData(
    value: 30,
    color: Colors.deepPurple[600],
  ),
];
