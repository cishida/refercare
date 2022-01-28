import 'package:refercare/ui/screens/authenticated/app_store/app_store_screen.dart';
import 'package:refercare/ui/screens/authenticated/home/home_screen.dart';
import 'package:refercare/ui/screens/authenticated/payroll/payroll_screen.dart';
import 'package:refercare/ui/screens/authenticated/reports/reports_screen.dart';

class Values {
  // UI
  static const double screenWidth = 900.0;
  static const double homeHeaderHeight = 55.0;
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
