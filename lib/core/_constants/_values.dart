import 'package:flutter/material.dart';
import 'package:refercare/ui/screens/authenticated/app_store/app_store_screen.dart';
import 'package:refercare/ui/screens/authenticated/home/home_screen.dart';
import 'package:refercare/ui/screens/authenticated/payroll/payroll_screen.dart';
import 'package:refercare/ui/screens/authenticated/profile/profile_screen.dart';
import 'package:refercare/ui/screens/authenticated/reports/reports_screen.dart';
import 'package:refercare/ui/screens/network/network_screen.dart';

class Values {
  // UI
  static const double screenWidth = 1550.0;
  static const double screenMargin = 50.0;
  static const double totalsWidth = 300;
  static const double homeHeaderHeight = 55.0;

  static const Map<String, Map<String, dynamic>> placeholderAppInfos = {
    'planet-dds': {
      'name': 'Planet DDS',
      'website': 'https://www.planetdds.com/',
      'padding': EdgeInsets.all(8.0),
      'fit': BoxFit.cover,
      'starCount': 5,
      'description':
          '"The best cloud-based dental software for practices of all sizes."',
    },
    'dentrix': {
      'name': 'Dentrix',
      'website': 'https://www.dentrix.com/',
      'padding': EdgeInsets.zero,
      'fit': BoxFit.cover,
      'starCount': 3,
      'description':
          '"Dentrix connects your practice technology into one management system, one workflow – so teams work smarter."',
    },
    'curve-dental': {
      'name': 'Curve Dental',
      'website': 'https://www.curvedental.com/',
      'padding': EdgeInsets.zero,
      'fit': BoxFit.cover,
      'starCount': 4,
      'description': '"The all-in-one practice management solution."',
    },
    'tab32': {
      'name': 'Tab32',
      'website': 'https://www.tab32.com/',
      'padding': EdgeInsets.all(4.0),
      'fit': BoxFit.cover,
      'starCount': 4,
      'description': '"Patient first enterprise cloud dental software."',
    },
    'yapi': {
      'name': 'Yapi',
      'website': 'https://yapiapp.com/',
      'padding': EdgeInsets.all(4.0),
      'fit': BoxFit.contain,
      'starCount': 4,
      'description': '"Dental software that elevates your practice."',
    },
    'midmark': {
      'name': 'Midmark',
      'website': 'https://www.midmark.com/dental',
      'padding': EdgeInsets.all(4.0),
      'fit': BoxFit.contain,
      'starCount': 5,
      'description':
          '"Products designed to help you provide quality, safe and comfortable treatment — and enable more positive and meaningful interactions between you, your patients and your staff."',
    },
  };
  // static const Map<String, Widget> navWidgets = {
  //   'Home': HomeScreen(),
  //   'Payroll': PayrollScreen(
  //     child: Text('test child'),
  //   ),
  //   'Reports': ReportsScreen(),
  //   'App Store': AppStoreScreen(),
  //   // 'Profile': ProfileScreen(),
  //   // 'Network': NetworkScreen(),
  //   // 'Performance': PerformanceScreen(),
  //   // 'Messages': MessagesScreen(),
  //   // 'Files': FilesScreen(),
  //   // 'Opportunities': OpportunitiesScreen(),
  //   // 'Settings': SettingsScreen(),
  // };

  // static const Map<String, Widget> otherRoutes = {
  //   'payroll/pay-stubs': PayStubsScreen(),
  //   'payroll/w2s': W2sScreen(),
  //   // 'payroll': PayrollScreen(),
  // };

  static const List<Map<String, dynamic>> routes = [
    {
      'isNullRoute': true,
      'routeName': 'home',
      'title': 'Home',
      'widget': HomeScreen,
      'secondaryRouteName': '',
    },
    {
      'isNullRoute': true,
      'routeName': 'network',
      'title': 'Network',
      'widget': NetworkScreen,
      'secondaryRouteName': '',
    },
    {
      'isNullRoute': true,
      'routeName': 'profile',
      'title': 'Profile',
      'widget': ProfileScreen,
      'secondaryRouteName': '',
    },
    {
      'isNullRoute': false,
      'routeName': 'payroll',
      'title': 'Payroll',
      'widget': PayrollScreen,
      'secondaryRouteName': '/pay-stubs',
    },
    {
      'isNullRoute': false,
      'routeName': 'reports',
      'title': 'Reports',
      'widget': ReportsScreen,
      'secondaryRouteName': '',
    },
    {
      'isNullRoute': false,
      'routeName': 'app-store',
      'title': 'App Store',
      'widget': AppStoreScreen,
      'secondaryRouteName': '',
    },
  ];
}
