import 'package:flutter/material.dart';

class ElevatedButtonChip extends StatelessWidget {
  const ElevatedButtonChip({
    Key? key,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  final String text;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => onPressed(),
      style: ButtonStyle(
        foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
        backgroundColor: MaterialStateProperty.all<Color>(
          Colors.black.withOpacity(.2),
        ),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
            side: BorderSide(
              color: Colors.black.withOpacity(.08),
            ),
          ),
        ),
      ),
      child: Text(text),
    );
  }
}
