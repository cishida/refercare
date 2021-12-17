import 'dart:collection';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:refercare/core/_constants/_colors.dart';
import 'package:refercare/ui/screens/authenticated/home/components/dental_connections/components/legend_item.dart';

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
    final int total = dataMap.values.reduce((a, b) => a + b).toInt();

    return AnimationLimiter(
      child: ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: dataMap.length,
        itemBuilder: (BuildContext context, int index) {
          return AnimationConfiguration.staggeredList(
            position: index,
            duration: const Duration(milliseconds: 300),
            child: SlideAnimation(
              verticalOffset: 50.0,
              child: FadeInAnimation(
                child: LegendItem(
                  title: dataMap.keys.toList()[index],
                  count: dataMap[dataMap.keys.toList()[index]]!,
                  percentage: dataMap[dataMap.keys.toList()[index]]! / total,
                  color: ConstColors.chartColors[min(
                    index,
                    ConstColors.chartColors.length - 1,
                  )],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
