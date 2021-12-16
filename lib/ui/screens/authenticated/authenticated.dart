import 'package:flutter/material.dart';
import 'package:refercare/ui/screens/authenticated/nav/nav_widget.dart';

class Authenticated extends StatelessWidget {
  const Authenticated({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          const NavWidget(),
          Expanded(
            child: Container(
              color: Colors.red,
              child: child,
            ),
          ),
        ],
      ),
    );
  }
}
