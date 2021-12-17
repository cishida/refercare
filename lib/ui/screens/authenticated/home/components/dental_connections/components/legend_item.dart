import 'package:flutter/material.dart';
import 'package:refercare/core/_constants/_colors.dart';

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
