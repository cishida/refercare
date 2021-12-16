import 'package:flutter/material.dart';

class ChipButton extends StatelessWidget {
  const ChipButton({
    Key? key,
    required this.text,
    required this.onPressed,
    this.backgroundColor,
    this.textColor = Colors.black,
    this.padding = const EdgeInsets.symmetric(
      vertical: 10.0,
      horizontal: 14.0,
    ),
  }) : super(key: key);

  final String text;
  final Function onPressed;
  final Color? backgroundColor;
  final Color textColor;
  final EdgeInsets padding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 6.0),
      child: ActionChip(
        onPressed: () => onPressed(),
        elevation: 2.0,
        backgroundColor: backgroundColor ?? Colors.grey.shade300,
        padding: padding,
        labelStyle: TextStyle(
          color: textColor,
        ),
        label: Text(
          text,
        ),
      ),
    );
  }
}
