import 'package:flutter/material.dart';
import 'package:refercare/core/_constants/_values.dart';
import 'package:refercare/ui/screens/authenticated/nav/nav_item.dart';
import 'package:refercare/ui/screens/authenticated/nav/nav_logo.dart';

class NavColumn extends StatelessWidget {
  const NavColumn({
    Key? key,
  }) : super(key: key);

  List<Widget> _buildNavItems() {
    final List<Widget> widgets = [];

    Values.navWidgets.forEach((key, value) {
      widgets.add(
        NavItem(
          title: key,
          routeName: '/authenticated/${key.toLowerCase()}',
        ),
      );
    });

    return widgets;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200.0,
      color: Colors.white,
      child: Column(
        children: [
          const NavLogo(),
          Column(
            children: _buildNavItems(),
          ),
        ],
      ),
    );
  }
}
