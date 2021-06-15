import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';


class LineChartWidget extends StatelessWidget {
  final List<Color> gradientColors = [
    const Color(0xffffa668),
    const Color(0xffffb02f),
  ];
  @override
  Widget build(BuildContext context) {
    return LineChart(
      LineChartData(
        // minX: 0,
        // maxX: 11,
        // minY: 0,
        // maxY: 6,
        gridData: FlGridData(
          show: true,
          getDrawingHorizontalLine: (value){
            return FlLine(
              color: const Color(0xff37434d),
              strokeWidth: 0,
            );
          },
          getDrawingVerticalLine: (value) {
            return FlLine(
              color: const Color(0xff37434d),
              strokeWidth: 1,
            );
          },
        ),
        borderData: FlBorderData(
          show: false,
          border: Border.all(color: const Color(0xff37434d), width: 1),
        ),

        lineBarsData: [
          LineChartBarData(
            spots: [
              FlSpot(0, 0.8),
              FlSpot(0.9, 1.5),
              FlSpot(1.6, 1.0),
              FlSpot(2, 1.8),
              FlSpot(2.6,1.5 ),
              FlSpot(3.1, 2.9),
              FlSpot(3.9, 4.0),
              FlSpot(4.8, 4.6),
            ],
            isCurved: true,
            colors: gradientColors,
            barWidth: 5,
            dotData: FlDotData(show: false),
            belowBarData: BarAreaData(
              show: true,
              colors: gradientColors.map((color) => color.withOpacity(0.2)).toList(),
            )
          ),
        ],
      ),
    );

  }
}
