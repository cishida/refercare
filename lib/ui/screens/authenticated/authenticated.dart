import 'package:flutter/material.dart';
import 'package:refercare/theme.dart';
import 'package:refercare/ui/screens/authenticated/components/authenticated_header.dart';
import 'package:refercare/ui/screens/authenticated/nav_column/nav_column.dart';

class Authenticated extends StatelessWidget {
  const Authenticated({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: theme(),
      home: Scaffold(
        body: Row(
          children: [
            const NavColumn(),
            Expanded(
              child: Column(
                children: [
                  const AuthenticatedHeader(),
                  Expanded(
                    child: Container(
                      color: Colors.white,
                      child: child,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
