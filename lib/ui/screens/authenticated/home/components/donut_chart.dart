import 'dart:collection';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';
import 'package:refercare/core/_constants/_colors.dart';

class DonutChart extends StatefulWidget {
  const DonutChart({
    Key? key,
  }) : super(key: key);

  @override
  _DonutChartState createState() => _DonutChartState();
}

class _DonutChartState extends State<DonutChart> {
  late Map<String, double> dataMap;

  @override
  void initState() {
    final Random random = Random();
    dataMap = {
      'General Dentists': random.nextInt(12) + 12,
      'Endodontists': random.nextInt(10) + 8,
      'Orthodontists': random.nextInt(8) + 6,
      'Prosthodontists': random.nextInt(8) + 6,
      'Oral Surgeons': random.nextInt(7) + 5,
      'Periodontists': random.nextInt(4) + 3,
      'Dental Radiologists': random.nextInt(4) + 3,
      'Dental Pathologists': random.nextInt(3) + 2,
      'Dental Assistants': random.nextInt(2) + 1,
      'Dental Executives': random.nextInt(1) + 1,
    };

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 27.0,
        ),
        Stack(
          children: [
            PieChart(
              dataMap: dataMap,
              animationDuration: const Duration(milliseconds: 800),
              // chartLegendSpacing: 32,
              chartRadius: 220.0,
              colorList: ConstColors.chartColors
                  .map((e) => e.withOpacity(.9))
                  .toList(),
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
                    dataMap.values.reduce((a, b) => a + b).toInt().toString(),
                    style: const TextStyle(
                      fontSize: 58.0,
                      fontWeight: FontWeight.w700,
                      color: ConstColors.textBlueGray,
                    ),
                  ),
                  const Text(
                    'Dental Connections',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w700,
                      color: ConstColors.textBlueGray,
                    ),
                  ),
                  Text(
                    '${Random().nextInt(20) + 70}th percentile',
                    style: TextStyle(
                      fontSize: 13.0,
                      color: ConstColors.textBlueGray.withOpacity(.6),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 33.0,
        ),
        const Divider(
          height: 1.0,
          color: ConstColors.divider,
        ),
        Legend(
          dataMap: dataMap,
        ),
      ],
    );
  }
}

class Legend extends StatelessWidget {
  const Legend({
    Key? key,
    required this.dataMap,
  }) : super(key: key);

  final Map<String, double> dataMap;

  List<Widget> legendItems() {
    final List<Widget> widgets = [];

    final int total = dataMap.values.reduce((a, b) => a + b).toInt();
    int count = 0;

    final sortedKeys = dataMap.keys.toList(growable: false)
      ..sort((k1, k2) => dataMap[k2]!.compareTo(dataMap[k1]!));
    final LinkedHashMap<String, double> sortedMap =
        LinkedHashMap<String, double>.fromIterable(
      sortedKeys,
      key: (dynamic k) => k as String,
      // ignore: cast_nullable_to_non_nullable
      value: (dynamic k) => dataMap[k] as double,
    );

    sortedMap.forEach((String key, double value) {
      widgets.add(
        LegendItem(
          title: key,
          count: value,
          percentage: value / total,
          color: ConstColors.chartColors[min(
            count,
            ConstColors.chartColors.length - 1,
          )],
        ),
      );
      count++;
    });

    return widgets;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: legendItems(),
    );
  }
}

class LegendItem extends StatelessWidget {
  const LegendItem({
    Key? key,
    required this.title,
    required this.count,
    required this.percentage,
    required this.color,
  }) : super(key: key);

  final String title;
  final double count;
  final double percentage;
  final Color color;

  @override
  Widget build(BuildContext context) {
    final TextStyle style = TextStyle(
      fontSize: 15.0,
      fontWeight: FontWeight.w600,
      color: color,
    );

    return SizedBox(
      height: 50.0,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Divider(
            height: 1.0,
            color: Colors.transparent,
          ),
          IntrinsicHeight(
            child: Padding(
              padding: const EdgeInsets.only(
                left: 18.0,
                right: 26.0,
              ),
              child: Row(
                children: [
                  Text(
                    title,
                    style: style,
                  ),
                  const Spacer(),
                  Text(
                    count.toString(),
                    style: style,
                  ),
                  const VerticalDivider(),
                  Text(
                    '${(percentage * 100).round()}%',
                    style: style,
                  ),
                ],
              ),
            ),
          ),
          const Divider(
            height: 1.0,
            color: ConstColors.divider,
          ),
        ],
      ),
    );
  }
}
