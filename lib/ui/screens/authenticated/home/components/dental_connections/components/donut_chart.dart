import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';
import 'package:refercare/core/_constants/_colors.dart';

class DonutChart extends StatefulWidget {
  const DonutChart({
    Key? key,
    required this.dataMap,
  }) : super(key: key);

  final Map<String, double> dataMap;

  @override
  _DonutChartState createState() => _DonutChartState();
}

class _DonutChartState extends State<DonutChart> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        PieChart(
          dataMap: widget.dataMap,
          animationDuration: const Duration(milliseconds: 800),
          // chartLegendSpacing: 32,
          chartRadius: 220.0,
          colorList:
              ConstColors.chartColors.map((e) => e.withOpacity(.9)).toList(),
          initialAngleInDegree: 270,
          chartType: ChartType.ring,
          ringStrokeWidth: 12,
          // centerText: "HYBRID",
          legendOptions: const LegendOptions(
            // showLegendsInRow: false,
            // legendPosition: LegendPosition.right,
            showLegends: false,
            // legendShape: BoxShape.circle,
            legendTextStyle: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          chartValuesOptions: const ChartValuesOptions(
            // showChartValueBackground: true,
            showChartValues: false,
            // showChartValuesInPercentage: false,
            // showChartValuesOutside: false,
            decimalPlaces: 0,
          ),
          // gradientList: ---To add gradient colors---
          // emptyColorGradient: ---Empty Color gradient---
        ),
        Positioned.fill(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                widget.dataMap.values
                    .reduce((a, b) => a + b)
                    .toInt()
                    .toString(),
                style: const TextStyle(
                  fontSize: 58.0,
                  fontWeight: FontWeight.w700,
                  color: ConstColors.textBlueGray,
                ),
              ),
              const Text(
                'Connections',
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w700,
                  color: ConstColors.textBlueGray,
                ),
              ),
              // Text(
              //   '${Random().nextInt(20) + 70}th percentile',
              //   style: TextStyle(
              //     fontSize: 13.0,
              //     color: ConstColors.textBlueGray.withOpacity(.6),
              //   ),
              // ),
            ],
          ),
        ),
      ],
    );
  }
}
