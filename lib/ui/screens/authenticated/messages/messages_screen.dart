import 'package:flutter/material.dart';
import 'package:refercare/core/_constants/_colors.dart';
import 'package:refercare/ui/screens/authenticated/messages/components/chat/chat_view.dart';
import 'package:refercare/ui/screens/authenticated/messages/components/conversations_view.dart';
import 'package:refercare/ui/screens/authenticated/messages/components/messages_action_chip_row.dart';

class MessagesScreen extends StatelessWidget {
  const MessagesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                MessagesActionChipRow(),
                Divider(
                  height: 1.0,
                  color: ConstColors.divider,
                ),
                Expanded(
                  child: ConversationsView(),
                ),
              ],
            ),
          ),
          const VerticalDivider(
            width: 1.0,
            color: ConstColors.divider,
          ),
          const Expanded(
            child: ChatView(),
          ),
        ],
      ),
    );
  }
}
