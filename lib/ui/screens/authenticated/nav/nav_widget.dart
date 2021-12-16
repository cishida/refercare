import 'package:flutter/material.dart';
import 'package:refercare/core/_constants/_colors.dart';
import 'package:refercare/core/_constants/_values.dart';
import 'package:refercare/ui/screens/authenticated/nav/nav_item.dart';

class NavWidget extends StatelessWidget {
  const NavWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200.0,
      color: Colors.blue,
      child: Column(
        children: [
          SizedBox(
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
          ),
          const NavItem(
            title: 'Home',
            routeName: '/authenticated',
          ),
          const NavItem(
            title: 'Search',
            routeName: '/authenticated/search',
          ),
          const NavItem(
            title: 'Profile',
            routeName: '/authenticated/profile',
          ),
        ],
      ),
    );
  }
}
