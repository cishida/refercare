import 'package:flutter/material.dart';
import 'package:refercare/core/_constants/_colors.dart';
import 'package:refercare/ui/screens/authenticated/home/components/home_action_chip_row.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                HomeActionChipRow(),
                Divider(
                  height: 1.0,
                  color: ConstColors.divider,
                ),
              ],
            ),
          ),
          const VerticalDivider(
            width: 1.0,
            color: ConstColors.divider,
          ),
          const SizedBox(
            width: 388.0,
          ),
        ],
      ),
    );
  }
}
