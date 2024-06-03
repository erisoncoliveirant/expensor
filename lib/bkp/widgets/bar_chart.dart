import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../data/chart_data.dart';

class BarChartContent extends StatelessWidget {
  const BarChartContent({super.key});

  @override
  Widget build(BuildContext context) {
    return BarChart(
      BarChartData(
        titlesData: FlTitlesData(
          leftTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
          bottomTitles: AxisTitles(
            sideTitles: SideTitles(
              showTitles: true,
              getTitlesWidget: (data, value) {
                return Text(['', 'Mon', 'Tues', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'][data.toInt()],
                  style: const TextStyle(fontSize: 12,),
                );
              },
            ),
          ),
        ),
        borderData: FlBorderData(
            border: Border.all(color: Colors.transparent, width: 0)),
        alignment: BarChartAlignment.spaceEvenly,
        maxY: 16,
        barGroups: barChartGroupData,
      ),
    );
  }
}
