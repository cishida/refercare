import 'dart:collection';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:refercare/core/_constants/_colors.dart';
import 'package:refercare/ui/screens/authenticated/home/components/dental_connections/components/donut_chart.dart';

class NetworkScreen extends StatefulWidget {
  const NetworkScreen({Key? key}) : super(key: key);

  @override
  _NetworkScreenState createState() => _NetworkScreenState();
}

class _NetworkScreenState extends State<NetworkScreen> {
  final List<String> _navItems = [
    'All Connections',
    'General Dentists',
    'Orthodontists',
    'Endodontists',
    'Prosthodontists',
    'Oral Surgeons',
    'Periodontists',
    'Anesthesiologists',
    'Radiologists',
    'Pathologists',
    'Dental Executives',
    'Dental Assistants',
  ];

  final Random random = Random();
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

    final sortedKeys = dataMap.keys.toList(growable: false)
      ..sort((k1, k2) => dataMap[k2]!.compareTo(dataMap[k1]!));
    dataMap = LinkedHashMap<String, double>.fromIterable(
      sortedKeys,
      key: (dynamic k) => k as String,
      // ignore: cast_nullable_to_non_nullable
      value: (dynamic k) => dataMap[k] as double,
    );

    super.initState();
  }

  List<Widget> _buildNavItems() {
    final List<Widget> widgets = [];

    for (var i = 0; i < _navItems.length; i++) {
      widgets.add(
        IntrinsicHeight(
          child: Row(
            children: [
              const VerticalDivider(
                width: 1.0,
              ),
              Padding(
                padding: EdgeInsets.only(
                  // top: 4.0,
                  bottom: i == _navItems.length - 1 ? 4.0 : 14.0,
                  left: 14.0,
                ),
                child: Text(
                  _navItems[i],
                  style: const TextStyle(
                    fontSize: 14.0,
                    color: ConstColors.textGreen,
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    }

    return widgets;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 188.0,
          margin: const EdgeInsets.only(
            left: 72.0,
            top: 28.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Profile',
                style: TextStyle(
                  color: ConstColors.textGreen,
                  fontWeight: FontWeight.w700,
                  fontSize: 17.0,
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 15.0),
                    child: SingleChildScrollView(
                      child: AnimationLimiter(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: AnimationConfiguration.toStaggeredList(
                            duration: const Duration(milliseconds: 250),
                            childAnimationBuilder: (widget) => SlideAnimation(
                              horizontalOffset: 50.0,
                              child: FadeInAnimation(
                                child: widget,
                              ),
                            ),
                            children: _buildNavItems(),
                          ),
                        ),
                      ),
                    ),

                    // Column(
                    //   crossAxisAlignment: CrossAxisAlignment.start,
                    //   children: _buildNavItems(),
                    // ),
                  ),
                ],
              ),
            ],
          ),
        ),
        const Expanded(
          child: Text(''),
        ),
        Container(
          width: 362,
          height: 800.0,
          child: Column(
            children: [
              SizedBox(
                height: 458,
                child: Row(
                  children: [
                    const VerticalDivider(
                      width: 1.0,
                      color: ConstColors.divider,
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Container(
                            color: ConstColors.browseGray,
                            height: 38.0,
                            width: 361.0,
                            padding: const EdgeInsets.all(
                              10.0,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  color: ConstColors.lightDivider,
                                  child: const Text('NETWORK OVERVIEW'),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 44.0),
                            child: DonutChart(
                              dataMap: dataMap,
                            ),
                          ),
                          const Divider(
                            height: 1.0,
                            color: ConstColors.divider,
                          ),
                          Center(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                vertical: 20.0,
                                horizontal: 41.0,
                              ),
                              child: Text(
                                'Your connection count is in the 89th percentile. This means you have more connections than 89% of all ReferCare users.',
                                softWrap: true,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 14.0,
                                  color: Color(0xFF3C5072).withOpacity(.6),
                                ),
                              ),
                            ),
                          ),
                          Divider(
                            height: 1.0,
                            color: ConstColors.divider,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 40.0,
              ),
              SizedBox(
                width: 250.0,
                height: 109,
                child: Stack(
                  children: [
                    Positioned(
                      left: 0.0,
                      child: Image.asset(
                        'assets/images/green-parallelogram.png',
                        width: 180.0,
                      ),
                    ),
                    Positioned(
                      left: 70.0,
                      child: Image.asset(
                        'assets/images/blue-parallelogram.png',
                        width: 180.0,
                      ),
                    ),
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
