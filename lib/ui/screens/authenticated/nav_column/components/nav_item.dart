import 'package:flutter/material.dart';
import 'package:vrouter/vrouter.dart';

class NavItem extends StatelessWidget {
  const NavItem({
    Key? key,
    required this.title,
    required this.routeName,
  }) : super(key: key);

  final String title;
  final String routeName;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        debugPrint(routeName);
        context.vRouter.to(routeName);
      },
      child: Text(title),
    );
  }
}
