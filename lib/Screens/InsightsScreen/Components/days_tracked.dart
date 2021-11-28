import 'package:flutter/material.dart';

import 'package:fl_chart/fl_chart.dart';

class DaysTracked extends StatelessWidget {
  final double y1;
  final double y2;
  final double y3;
  final double y4;
  final double y5;
  final double y6;
  final double y7;

  const DaysTracked({
    Key? key,
    required this.y1,
    required this.y2,
    required this.y3,
    required this.y4,
    required this.y5,
    required this.y6,
    required this.y7,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return LineChart(
      LineChartData(borderData: FlBorderData(show: false), lineBarsData: [
        LineChartBarData(spots: [
          FlSpot(1, y1),
          FlSpot(2, y2),
          FlSpot(3, y3),
          FlSpot(4, y4),
          FlSpot(5, y5),
          FlSpot(6, y6),
          FlSpot(7, y7),
        ])
      ]),
    );
  }
}
