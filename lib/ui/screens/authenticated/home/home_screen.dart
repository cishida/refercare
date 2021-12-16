import 'package:flutter/material.dart';
import 'package:refercare/core/_constants/_colors.dart';
import 'package:refercare/ui/styled_widgets/chip_button.dart';

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
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 20.0,
                    top: 9.0,
                    bottom: 14.0,
                  ),
                  child: Row(
                    children: [
                      ChipButton(
                        text: 'Add Contact',
                        onPressed: () {
                          debugPrint('Add Contact pressed');
                        },
                      ),
                      ChipButton(
                        text: 'Direct Message',
                        onPressed: () {
                          debugPrint('Direct Message pressed');
                        },
                      ),
                      ChipButton(
                        text: 'Refer Patient',
                        onPressed: () {
                          debugPrint('Refer Patient pressed');
                        },
                      ),
                      ChipButton(
                        text: 'Send File',
                        onPressed: () {
                          debugPrint('Send File pressed');
                        },
                      ),
                    ],
                  ),
                ),
                const Divider(
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
