import 'package:flutter/material.dart';
import 'package:refercare/ui/styled_widgets/chip_button.dart';

class MessagesActionChipRow extends StatelessWidget {
  const MessagesActionChipRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 20.0,
        top: 9.0,
        bottom: 14.0,
      ),
      child: Row(
        children: [
          ChipButton(
            text: 'New Conversation',
            onPressed: () {
              debugPrint('New Conversation pressed');
            },
          ),
          ChipButton(
            text: 'Other Action',
            onPressed: () {
              debugPrint('Other Action pressed');
            },
          ),
        ],
      ),
    );
  }
}
