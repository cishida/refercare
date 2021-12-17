import 'dart:collection';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:refercare/core/_constants/_colors.dart';
import 'package:refercare/ui/screens/authenticated/home/components/dental_connections/components/donut_chart.dart';
import 'package:refercare/ui/screens/authenticated/home/components/dental_connections/components/legend.dart';

class DentalConnections extends StatefulWidget {
  const DentalConnections({Key? key}) : super(key: key);

  @override
  State<DentalConnections> createState() => _DentalConnectionsState();
}

class _DentalConnectionsState extends State<DentalConnections> {
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

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 388.0,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 27.0,
              bottom: 33.0,
            ),
            child: DonutChart(
              dataMap: dataMap,
            ),
          ),
          const Divider(
            height: 1.0,
            color: ConstColors.divider,
          ),
          Legend(
            dataMap: dataMap,
          ),
        ],
      ),
    );
  }
}
