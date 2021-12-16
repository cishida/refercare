import 'package:flutter/material.dart';
import 'package:refercare/core/_constants/_colors.dart';

class GetHelpWidget extends StatelessWidget {
  const GetHelpWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 152.0,
      height: 32.0,
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
    );
  }
}
