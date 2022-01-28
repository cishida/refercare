import 'package:flutter/material.dart';
import 'package:refercare/core/_constants/_colors.dart';
import 'package:refercare/ui/screens/authenticated/nav_row/components/nav_item.dart';
import 'package:refercare/ui/screens/authenticated/payroll/components/pay_stubs/pay_stubs_screen.dart';
import 'package:refercare/ui/screens/authenticated/payroll/components/payroll_nav_item.dart';
import 'package:refercare/ui/screens/authenticated/payroll/components/w2s/w2s_screen.dart';

class PayrollNavRow extends StatelessWidget {
  PayrollNavRow({
    Key? key,
  }) : super(key: key);

  final Map<String, Widget> _navWidgets = {
    'Pay Stubs': const PayStubsScreen(),
    'W2s': const W2sScreen(),
    'Withholdings': const W2sScreen(),
    'Settings': const W2sScreen(),
    'Payment Information': const W2sScreen(),
    // 'Network': NetworkScreen(),
    // 'Performance': PerformanceScreen(),
    // 'Messages': MessagesScreen(),
    // 'Files': FilesScreen(),
    // 'Opportunities': OpportunitiesScreen(),
    // 'Settings': SettingsScreen(),
  };

  List<Widget> _buildNavItems() {
    final List<Widget> widgets = [];

    _navWidgets.forEach((key, value) {
      widgets.add(
        PayrollNavItem(
          title: key,
          routeName:
              '/authenticated/payroll/${key.replaceAll(' ', '-').toLowerCase()}',
        ),
      );
    });

    return widgets;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ConstColors.lightGray,
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: _buildNavItems(),
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
