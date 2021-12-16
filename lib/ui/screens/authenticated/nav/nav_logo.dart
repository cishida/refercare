import 'package:flutter/material.dart';
import 'package:refercare/core/_constants/_colors.dart';
import 'package:refercare/core/_constants/_values.dart';

class NavLogo extends StatelessWidget {
  const NavLogo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Values.homeHeaderHeight,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Padding(
            padding: EdgeInsets.only(
              top: 14.0,
            ),
            child: Text(
              'ReferCare',
              style: TextStyle(
                color: ConstColors.offBlack,
                fontSize: 24.0,
                fontWeight: FontWeight.w700,
                letterSpacing: -.25,
              ),
            ),
          ),
          Container(
            color: ConstColors.divider,
            height: 1.0,
            width: 160.0,
          ),
        ],
      ),
    );
  }
}
