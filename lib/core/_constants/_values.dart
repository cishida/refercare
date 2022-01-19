import 'package:flutter/material.dart';
import 'package:refercare/ui/screens/authenticated/files/files_screen.dart';
import 'package:refercare/ui/screens/authenticated/home/home_screen.dart';
import 'package:refercare/ui/screens/authenticated/messages/messages_screen.dart';
import 'package:refercare/ui/screens/authenticated/opportunities/opportunities_screen.dart';
import 'package:refercare/ui/screens/authenticated/profile/profile_screen.dart';
// import 'package:refercare/ui/screens/authenticated/search/search_screen.dart';
import 'package:refercare/ui/screens/authenticated/settings/settings_screen.dart';

class Values {
  // UI
  static const double homeHeaderHeight = 55.0;
  static const Map<String, Widget> navWidgets = {
    'Profile': ProfileScreen(),
    'Network': HomeScreen(),
    'Messages': MessagesScreen(),
    'Files': FilesScreen(),
    'Opportunities': OpportunitiesScreen(),
    'Settings': SettingsScreen(),
  };
}
