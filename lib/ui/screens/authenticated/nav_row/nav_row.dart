import 'package:flutter/material.dart';
import 'package:refercare/core/_constants/_colors.dart';
import 'package:refercare/core/_constants/_values.dart';
import 'package:refercare/ui/screens/authenticated/nav_row/components/nav_item.dart';

class NavRow extends StatelessWidget {
  const NavRow({
    Key? key,
  }) : super(key: key);

  List<Widget> _buildNavItems() {
    final List<Widget> widgets = [];

    for (final element in Values.routes) {
      widgets.add(
        NavItem(
          title: element['title'].toString(),
          routeName: '/authenticated/${element['routeName'].toString()}',
          secondaryRouteName: element['secondaryRouteName'].toString(),
        ),
      );
    }

    return widgets;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      margin: const EdgeInsets.only(
        left: 68.0,
      ),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 8.0,
                  bottom: 10.0,
                ),
                child: Row(
                  children: _buildNavItems(),
                ),
              ),
            ],
          ),
          const Divider(
            height: 1.0,
            color: ConstColors.divider,
          ),
        ],
      ),
    );
  }
}
