import 'dart:async';
import 'dart:math';

import 'package:animated_flip_counter/animated_flip_counter.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:refercare/core/_constants/_colors.dart';
import 'package:refercare/core/_constants/_values.dart';

class CollectionsChart extends StatefulWidget {
  const CollectionsChart({
    Key? key,
  }) : super(key: key);

  @override
  State<CollectionsChart> createState() => _CollectionsChartState();
}

class _CollectionsChartState extends State<CollectionsChart> {
  final int minDailyRev = 0;
  final int maxDailyRev = 7000;
  final List<double> _currentRevenues = [];
  final List<double> _averageRevenues = [];

  @override
  void initState() {
    final random = Random();
    int result;

    for (var i = 0; i < 32; i++) {
      if (i == 0) {
        _currentRevenues.add(0);
        _averageRevenues.add(0);
        continue;
      }

      result = minDailyRev + random.nextInt(maxDailyRev - minDailyRev + 1500);
      _currentRevenues.add(result.toDouble());

      result = minDailyRev + random.nextInt(maxDailyRev - minDailyRev + 500);
      _averageRevenues.add(result.toDouble());
    }
    super.initState();
  }

  List<FlSpot> _buildCurrentSpots() {
    final List<FlSpot> spots = [];
    double total = 0;

    for (var i = 0; i < _currentRevenues.length - 8; i++) {
      total += _currentRevenues[i];
      spots.add(
        FlSpot(i.toDouble(), total),
      );
    }

    return spots;
  }

  List<FlSpot> _buildAverageSpots() {
    final List<FlSpot> spots = [];
    double total = 0;

    for (var i = 0; i < _averageRevenues.length; i++) {
      total += _averageRevenues[i];
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
          maxX: 32,
          // maxY: 200000,
          // minY: 0,
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
                    return '1';
                  case 23:
                    return 'Now';
                  case 31:
                    return '31';
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

class CollectionsGraph extends StatefulWidget {
  const CollectionsGraph({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => CollectionsGraphState();
}

class CollectionsGraphState extends State<CollectionsGraph> {
  double _collectionsTotal = 107432.58;
  double _expectedToday = 4587.32;
  bool _flipped = true;
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    // defines a timer
    final random = Random();

    _timer = Timer.periodic(const Duration(seconds: 3), (Timer t) {
      setState(() {
        _collectionsTotal += 253.67;
        _collectionsTotal += random.nextInt(50);
        if (_flipped) {
          _expectedToday += 17.97;
          _expectedToday += random.nextInt(40);
        } else {
          _expectedToday -= 19.19;
          _expectedToday -= random.nextInt(40);
        }
        _flipped = !_flipped;
      });
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'January',
          style: TextStyle(
            fontSize: 32.0,
            fontWeight: FontWeight.w700,
          ),
        ),
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
                      // Padding(
                      //   padding: const EdgeInsets.only(
                      //     top: 8.0,
                      //     left: 8.0,
                      //   ),
                      //   child: const Text(
                      //     'Gross Collection Volume',
                      //     style: TextStyle(
                      //       fontSize: 22.0,
                      //       fontWeight: FontWeight.w600,
                      //     ),
                      //   ),
                      // ),
                      Column(
                        // crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          Expanded(
                            child: CollectionsChart(),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: Values.totalsWidth,
                child: Column(
                  children: [
                    Expanded(
                      child: Container(
                        width: double.infinity,
                        padding: const EdgeInsets.only(
                          top: 18.0,
                          left: 20.0,
                          right: 20.0,
                        ),
                        decoration: const BoxDecoration(
                          border: Border(
                            top: BorderSide(
                              color: ConstColors.divider,
                            ),
                            bottom: BorderSide(
                              color: ConstColors.divider,
                            ),
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text(
                                  'Collections',
                                  style: TextStyle(
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Text(
                                  'View details',
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.blue,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 4.0,
                            ),
                            AnimatedFlipCounter(
                              fractionDigits: 2,
                              thousandSeparator: ',',
                              value: _collectionsTotal,
                              textStyle: const TextStyle(
                                fontSize: 28.0,
                                fontWeight: FontWeight.w600,
                                color: ConstColors.textGreen,
                              ),
                            ),
                            // Text(
                            //   '\$${_collectionsTotal.toString()}',
                            //   style: TextStyle(
                            //     fontSize: 28.0,
                            //     fontWeight: FontWeight.w600,
                            //     color: ConstColors.textGreen,
                            //   ),
                            // ),
                            const SizedBox(
                              height: 8.0,
                            ),
                            Container(
                              color: Colors.green[300]!.withOpacity(.3),
                              padding: const EdgeInsets.symmetric(
                                horizontal: 4.0,
                                vertical: 2.0,
                              ),
                              child: Text(
                                '+3.2%',
                                style: TextStyle(
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.green[700],
                                ),
                              ),
                            ),
                            // Text('Estimated future billing'),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        width: double.infinity,
                        padding: const EdgeInsets.only(
                          top: 18.0,
                          left: 20.0,
                        ),
                        decoration: const BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              color: ConstColors.divider,
                            ),
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text(
                                  'Expected Today',
                                  style: TextStyle(
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                // Text(
                                //   'View details',
                                //   style: TextStyle(
                                //     fontSize: 16.0,
                                //     fontWeight: FontWeight.w400,
                                //     color: Colors.blue,
                                //   ),
                                // ),
                              ],
                            ),
                            const SizedBox(
                              height: 4.0,
                            ),
                            AnimatedFlipCounter(
                              fractionDigits: 2,
                              thousandSeparator: ',',
                              value: _expectedToday,
                              textStyle: const TextStyle(
                                fontSize: 28.0,
                                fontWeight: FontWeight.w600,
                                color: ConstColors.textGreen,
                              ),
                            ),
                            // const Text(
                            //   '\$4,587.32',
                            //   style: TextStyle(
                            //     fontSize: 28.0,
                            //     fontWeight: FontWeight.w600,
                            //     color: ConstColors.textGreen,
                            //   ),
                            // ),
                            const SizedBox(
                              height: 8.0,
                            ),
                            Container(
                              color: Colors.red[300]!.withOpacity(.3),
                              padding: const EdgeInsets.symmetric(
                                horizontal: 4.0,
                                vertical: 2.0,
                              ),
                              child: Text(
                                '-0.2%',
                                style: TextStyle(
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.red[700],
                                ),
                              ),
                            ),
                            // Text('Estimated future billing'),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
