import 'package:flutter/material.dart';
import 'package:refercare/core/models/integration.dart';
import 'package:refercare/ui/screens/authenticated/accounting/accounting_screen.dart';
import 'package:refercare/ui/screens/authenticated/integrations/integrations_screen.dart';
import 'package:refercare/ui/screens/authenticated/home/home_screen.dart';
import 'package:refercare/ui/screens/authenticated/hr/hr_screen.dart';
import 'package:refercare/ui/screens/authenticated/payroll/payroll_screen.dart';
import 'package:refercare/ui/screens/authenticated/profile/profile_screen.dart';
import 'package:refercare/ui/screens/authenticated/reports/reports_screen.dart';
import 'package:refercare/ui/screens/network/network_screen.dart';

class Values {
  // UI
  static const double screenWidth = 1550.0;
  static const double screenMargin = 50.0;
  static const double navHeight = 45.0;
  static const double totalsWidth = 300;
  static const double homeHeaderHeight = 55.0;

  static const List<String> integrationNavItems = [
    'All',
    'Billing',
    'EMRs',
    'Human Resources',
    'Marketing',
    'DPMS',
    'Patient Tools',
    'Vendors',
    'CE',
  ];

  static const List<String> yapiNavItems = [
    'Overview',
    'Online Patient Forms',
    'Appointment Reminders',
    'Reputation Management',
    'Online Patient Bookings',
    'Office Messaging',
    'Phone Integration',
  ];

  static const Map<String, Map<String, dynamic>> placeholderAppInfos = {
    'tab32': {
      'name': 'Tab32',
      'website': 'https://www.tab32.com/',
      'padding': EdgeInsets.all(4.0),
      'fit': BoxFit.cover,
      'starCount': 4,
      'category': 'DPMS',
      'description':
          'Patient first enterprise cloud dental software. Empowering providers with integrated patient communication, e-forms, automized payments, imaging etc.',
    },
    'medchat': {
      'name': 'Medchat',
      'website': 'https://medchatapp.com/',
      'padding': EdgeInsets.zero,
      'fit': BoxFit.cover,
      'starCount': 4,
      'category': 'Patient Tool',
      'description':
          'MedChat is the new standard for healthcare communication and intelligent automation at scale. Transform how consumers interact with your organization by providing modern communication tools at scale.',
    },
    'dentrix': {
      'name': 'Dentrix',
      'website': 'https://www.dentrix.com/',
      'padding': EdgeInsets.zero,
      'fit': BoxFit.cover,
      'starCount': 3,
      'category': 'EMR',
      'description':
          'Dentrix connects your practice technology into one management system, one workflow – so teams work smarter.',
    },
    'weave': {
      'name': 'Weave',
      'website': 'https://www.getweave.com/',
      'padding': EdgeInsets.zero,
      'fit': BoxFit.contain,
      'starCount': 4,
      'category': 'Patient Tool',
      'description':
          'Weave is one place for every customer interaction. Interact with your customers wherever they are with phone, text, email or chat.',
    },
    'curve-dental': {
      'name': 'Curve Dental',
      'website': 'https://www.curvedental.com/',
      'padding': EdgeInsets.zero,
      'fit': BoxFit.cover,
      'starCount': 4,
      'category': 'EMR',
      'description': 'The all-in-one practice management solution.',
    },
    'workday': {
      'name': 'Workday',
      'website': 'https://www.workday.com/',
      'padding': EdgeInsets.zero,
      'fit': BoxFit.contain,
      'starCount': 4,
      'category': 'Human Resources',
      'description':
          'The finance, HR, and planning system for a changing world.',
    },
    'revenue-well': {
      'name': 'Revenue Well',
      'website': 'https://www.revenuewell.com/',
      'padding': EdgeInsets.zero,
      'fit': BoxFit.cover,
      'starCount': 4,
      'category': 'Patient Tool, Marketing',
      'description':
          'RevenueWell is the all-in-one dental practice marketing & patient communication platform',
    },
    'midmark': {
      'name': 'Midmark',
      'website': 'https://www.midmark.com/dental',
      'padding': EdgeInsets.all(4.0),
      'fit': BoxFit.contain,
      'starCount': 5,
      'category': 'Vendor',
      'description':
          'Products designed to help you provide quality, safe and comfortable treatment — and enable more positive and meaningful interactions between you, your patients and your staff.',
    },
    'zocdoc': {
      'name': 'Zocdoc',
      'website': 'https://www.zocdoc.com/dentists',
      'padding': EdgeInsets.zero,
      'fit': BoxFit.contain,
      'starCount': 5,
      'category': 'Patient Tool',
      'description':
          'Thousands of providers. One app. The Zocdoc app is the quickest, easiest way to book and keep track of your appointments.',
    },
    'planet-dds': {
      'name': 'Planet DDS',
      'website': 'https://www.planetdds.com/',
      'padding': EdgeInsets.all(8.0),
      'fit': BoxFit.cover,
      'starCount': 5,
      'category': 'DPMS',
      'description':
          'The best cloud-based dental software for all sizes. Planet DDS is a comprehensive practice management solution for modern dental practices.',
    },
    'yapi': {
      'name': 'Yapi',
      'website': 'https://yapiapp.com/',
      'padding': EdgeInsets.all(4.0),
      'fit': BoxFit.contain,
      'starCount': 4,
      'category': 'Patient Tool',
      'description':
          'Dental software that elevates your practice with online patient registration, forms, and communication tools.',
    },
    'adit': {
      'name': 'Adit',
      'website': 'https://adit.com/',
      'padding': EdgeInsets.zero,
      'fit': BoxFit.contain,
      'starCount': 3,
      'category': 'Patient Tool',
      'description':
          'Designed & engineered specifically for Dental Practices. Adit is the only software solution that integrates VoIP, Texts, Emails, Patient Forms, Online Scheduling, Analytics, Reviews, Payments and more, all in one place!',
    },
  };
  // static const Map<String, Widget> navWidgets = {
  //   'Home': HomeScreen(),
  //   'Payroll': PayrollScreen(
  //     child: Text('test child'),
  //   ),
  //   'Reports': ReportsScreen(),
  //   'App Store': IntegrationsScreen(),
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
    // {
    //   'isNullRoute': true,
    //   'routeName': 'network',
    //   'title': 'Network',
    //   'widget': NetworkScreen,
    //   'secondaryRouteName': '',
    // },
    // {
    //   'isNullRoute': true,
    //   'routeName': 'profile',
    //   'title': 'Profile',
    //   'widget': ProfileScreen,
    //   'secondaryRouteName': '',
    // },
    {
      'isNullRoute': false,
      'routeName': 'billing',
      'title': 'Billing',
      'widget': HRScreen,
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
      'routeName': 'hr',
      'title': 'HR',
      'widget': HRScreen,
      'secondaryRouteName': '',
    },
    {
      'isNullRoute': false,
      'routeName': 'accounting',
      'title': 'Accounting',
      'widget': AccountingScreen,
      'secondaryRouteName': '',
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
      'routeName': 'integrations',
      'title': 'App Shop',
      'widget': IntegrationsScreen,
      'secondaryRouteName': '',
    },
  ];
}
