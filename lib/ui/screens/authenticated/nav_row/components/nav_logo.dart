import 'package:flutter/material.dart';
import 'package:refercare/core/_constants/_colors.dart';
import 'package:refercare/core/_constants/_values.dart';

class NavLogo extends StatelessWidget {
  const NavLogo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: Values.homeHeaderHeight,
      child: Padding(
        padding: EdgeInsets.only(
          top: 14.0,
          left: 13.0,
        ),
        child: Text(
          'ReferCare',
          style: TextStyle(
            color: ConstColors.offBlack,
            fontSize: 24.0,
            fontWeight: FontWeight.w700,
            letterSpacing: -.25,
            fontFamily: 'SourceSerifPro',
          ),
        ),
      ),
    );
  }
}
