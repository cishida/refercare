import 'package:flutter/material.dart';
import 'package:refercare/core/_constants/_colors.dart';

class GetHelpWidget extends StatelessWidget {
  const GetHelpWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 27.0,
        left: 9.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Have questions?',
            style: TextStyle(
              color: ConstColors.textGray,
              fontSize: 14.0,
              fontWeight: FontWeight.w600,
            ),
          ),
          Container(
            width: 152.0,
            height: 32.0,
            margin: const EdgeInsets.only(top: 11.0),
            child: OutlinedButton(
              style: OutlinedButton.styleFrom(
                side: const BorderSide(
                  width: 2.0,
                  color: ConstColors.primary,
                ),
                minimumSize: const Size.fromHeight(32.0),
              ),
              onPressed: () {
                debugPrint('Get help pressed');
              },
              child: const Text(
                'Get Help',
                style: TextStyle(
                  color: ConstColors.primary,
                  fontSize: 15.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
