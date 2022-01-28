import 'package:flutter/material.dart';
import 'package:refercare/ui/screens/authenticated/app_store/app_store_screen.dart';
import 'package:refercare/ui/screens/authenticated/home/home_screen.dart';
import 'package:refercare/ui/screens/authenticated/payroll/payroll_screen.dart';
import 'package:refercare/ui/screens/authenticated/reports/reports_screen.dart';

class Values {
  // UI
  static const double homeHeaderHeight = 55.0;
  static const Map<String, Widget> navWidgets = {
    'Home': HomeScreen(),
    'Payroll': PayrollScreen(),
    'Reports': ReportsScreen(),
    'App Store': AppStoreScreen(),
    // 'Profile': ProfileScreen(),
    // 'Network': NetworkScreen(),
    // 'Performance': PerformanceScreen(),
    // 'Messages': MessagesScreen(),
    // 'Files': FilesScreen(),
    // 'Opportunities': OpportunitiesScreen(),
    // 'Settings': SettingsScreen(),
  };

  static const Map<String, Widget> otherRoutes = {
    // 'apps': AppsScreen(),
    // 'payroll': PayrollScreen(),
  };
}
