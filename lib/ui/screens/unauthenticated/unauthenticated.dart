import 'package:flutter/material.dart';
import 'package:refercare/main.dart';
import 'package:refercare/ui/screens/auth/login_screen/login_screen.dart';
import 'package:refercare/ui/screens/authenticated/home/home_screen.dart';
import 'package:refercare/ui/screens/landing_screen/landing_screen.dart';
import 'package:vrouter/vrouter.dart';

class Unauthenticated extends StatelessWidget {
  const Unauthenticated({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const LandingScreen();
  }
}
