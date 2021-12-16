import 'package:flutter/material.dart';
import 'package:refercare/core/_constants/_colors.dart';
import 'package:refercare/core/_constants/_values.dart';
import 'package:refercare/ui/screens/authenticated/nav_column/components/get_help_widget.dart';
import 'package:refercare/ui/screens/authenticated/nav_column/components/nav_item.dart';
import 'package:refercare/ui/screens/authenticated/nav_column/components/nav_logo.dart';

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
      margin: const EdgeInsets.symmetric(
        horizontal: 20.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const NavLogo(),
          const Divider(
            height: 1.0,
            color: ConstColors.divider,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 12.0),
            child: Column(
              children: _buildNavItems(),
            ),
          ),
          const Divider(
            height: 1.0,
            color: ConstColors.divider,
          ),
          const GetHelpWidget(),
        ],
      ),
    );
  }
}
