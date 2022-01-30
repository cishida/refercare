import 'dart:async';
import 'dart:math';

import 'package:animated_flip_counter/animated_flip_counter.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:refercare/core/_constants/_colors.dart';
import 'package:refercare/core/_constants/_values.dart';

class ReferralChart extends StatefulWidget {
  const ReferralChart({
    Key? key,
  }) : super(key: key);

  @override
  State<ReferralChart> createState() => _ReferralChartState();
}

class _ReferralChartState extends State<ReferralChart> {
  final int _min = 0;
  final int _max = 15;
  final List<double> _current = [];
  final List<double> _average = [];

  @override
  void initState() {
    final random = Random();
    int result;

    for (var i = 0; i < 8; i++) {
      if (i == 0) {
        _current.add(6);
        _average.add(7);
        continue;
      }

      result = _min + random.nextInt(_max - _min);
      _current.add(result.toDouble());

      result = _min + random.nextInt(_max - _min - 6);
      _average.add(result.toDouble());
    }
    super.initState();
  }

  List<FlSpot> _buildCurrentSpots() {
    final List<FlSpot> spots = [];
    double total = 0;

    for (var i = 0; i < _current.length; i++) {
      total += _current[i];
      spots.add(
        FlSpot(i.toDouble(), total),
      );
    }

    return spots;
  }

  List<FlSpot> _buildAverageSpots() {
    final List<FlSpot> spots = [];
    double total = 0;

    for (var i = 0; i < _average.length; i++) {
      total += _average[i];
      spots.add(
        FlSpot(i.toDouble(), total),
      );
    }

    return spots;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 40.0,
        bottom: 10.0,
      ),
      child: LineChart(
        LineChartData(
          minX: 0,
          maxX: 8,
          // maxY: 200000,
          minY: 0,
          lineTouchData: LineTouchData(
            enabled: true,
          ),
          borderData: FlBorderData(
            // show: false,
            border: const Border(
              // top: BorderSide(color: ConstColors.divider),
              // right: BorderSide(color: ConstColors.divider),
              bottom: BorderSide(color: ConstColors.divider),
            ),
          ),
          lineBarsData: [
            LineChartBarData(
              spots: _buildCurrentSpots(),
              isCurved: false,
              barWidth: 2,
              colors: [
                ConstColors.chartColors[0],
              ],
              dotData: FlDotData(
                show: false,
              ),
            ),
            LineChartBarData(
              spots: _buildAverageSpots(),
              isCurved: false,
              barWidth: 2,
              colors: [
                ConstColors.divider,
              ],
              dotData: FlDotData(
                show: false,
              ),
            ),
          ],
          titlesData: FlTitlesData(
            bottomTitles: SideTitles(
              showTitles: true,
              interval: 1,
              getTextStyles: (context, value) => const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
              getTitles: (value) {
                switch (value.toInt()) {
                  case 1:
                    return 'Jan 14';
                  case 7:
                    return 'Jan 21';
                  // case 31:
                  //   return 'Jan 31';
                  default:
                    return '';
                }
              },
            ),
            leftTitles: SideTitles(
              showTitles: false,
              getTitles: (value) {
                return '\$$value';
              },
              interval: 1000,
              // reservedSize: 30,
              getTextStyles: (context, value) => const TextStyle(fontSize: 10),
            ),
            topTitles: SideTitles(showTitles: false),
            rightTitles: SideTitles(showTitles: false),
          ),
          gridData: FlGridData(
            show: false,
            drawVerticalLine: false,
            horizontalInterval: 1000,
            // checkToShowHorizontalLine: (double value) {
            //   return value == 1 || value == 6 || value == 4 || value == 5;
            // },
          ),
        ),
      ),
    );
  }
}

class ReferralGraph extends StatefulWidget {
  const ReferralGraph({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => ReferralGraphState();
}

class ReferralGraphState extends State<ReferralGraph> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 250.0,
          child: Row(
            children: [
              Expanded(
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    border: Border(
                      top: BorderSide(color: ConstColors.divider),
                      right: BorderSide(color: ConstColors.divider),
                      bottom: BorderSide(color: ConstColors.divider),
                    ),
                  ),
                  child: Stack(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(
                          top: 8.0,
                          left: 8.0,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Referral Volume',
                                  style: TextStyle(
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                SizedBox(
                                  width: 10.0,
                                ),
                                Container(
                                  color: Colors.green[300]!.withOpacity(.3),
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 4.0,
                                    vertical: 2.0,
                                  ),
                                  child: Text(
                                    '+9.2%',
                                    style: TextStyle(
                                      fontSize: 12.0,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.green[700],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              '58',
                              style: TextStyle(
                                fontSize: 28.0,
                                fontWeight: FontWeight.w600,
                                color: ConstColors.textGreen,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Column(
                        // crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          Expanded(
                            child: ReferralChart(),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
