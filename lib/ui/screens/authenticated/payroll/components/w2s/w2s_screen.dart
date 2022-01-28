import 'package:flutter/material.dart';
import 'package:refercare/core/_constants/_values.dart';

class W2sScreen extends StatelessWidget {
  const W2sScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final BoxDecoration decoration = BoxDecoration(
      color: Colors.red[100]!.withOpacity(.8),
      borderRadius: BorderRadius.circular(2.0),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.5),
          spreadRadius: 1,
          blurRadius: 2,
          offset: const Offset(
            0,
            2,
          ),
        ),
      ],
    );

    return Column(
      children: [
        Container(
          width: Values.screenWidth,
          height: 50.0,
          margin: const EdgeInsets.only(top: 30.0),
          decoration: decoration,
          child: Row(
            children: [
              VerticalDivider(
                color: Colors.red[900],
                width: 4.0,
                thickness: 4.0,
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 12.0,
                  right: 12.0,
                ),
                child: Icon(
                  Icons.dangerous_rounded,
                  size: 22.0,
                  color: Colors.red[900],
                ),
              ),
              SizedBox(
                width: 475.0,
                child: Text(
                  'No W2s to display.',
                  style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
