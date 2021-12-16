import 'package:flutter/material.dart';

class ChipButton extends StatelessWidget {
  const ChipButton({
    Key? key,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  final String text;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 5.0),
      child: ActionChip(
        onPressed: () => onPressed(),
        elevation: 2.0,
        padding: const EdgeInsets.symmetric(
          vertical: 10.0,
          horizontal: 14.0,
        ),
        label: Text(
          text,
        ),
      ),
    );
  }
}
