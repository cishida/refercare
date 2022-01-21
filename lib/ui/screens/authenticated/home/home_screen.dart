import 'package:flutter/material.dart';
import 'package:refercare/core/_constants/_colors.dart';
import 'package:refercare/ui/screens/authenticated/home/components/dental_connections/dental_connections.dart';
import 'package:refercare/ui/screens/authenticated/home/components/home_action_chip_row.dart';
import 'package:refercare/ui/screens/authenticated/home/components/home_feed/home_feed.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const HomeActionChipRow(),
            const Divider(
              height: 1.0,
              color: ConstColors.divider,
            ),
            Expanded(
              child: HomeFeed(),
            ),
          ],
        ),
        const VerticalDivider(
          width: 1.0,
          color: ConstColors.divider,
        ),
        const DentalConnections(),
      ],
    );
  }
}
