import 'package:flutter/material.dart';
import 'package:refercare/core/_constants/_colors.dart';
import 'package:vrouter/vrouter.dart';

class PayrollNavItem extends StatelessWidget {
  const PayrollNavItem({
    Key? key,
    required this.title,
    required this.routeName,
    this.secondaryRouteName = '',
  }) : super(key: key);

  final String title;
  final String routeName;
  final String secondaryRouteName;

  @override
  Widget build(BuildContext context) {
    final bool highlighted = context.vRouter.path.contains(routeName) ||
        context.vRouter.path == '/' && routeName == '/authenticated/home';

    return SizedBox(
      height: 50.0,
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        child: GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTap: () {
            context.vRouter.to(routeName + secondaryRouteName);
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (highlighted) const Spacer(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Text(
                  title,
                  style: TextStyle(
                    fontSize: highlighted ? 13.0 : 13.0,
                    fontWeight: highlighted ? FontWeight.w700 : FontWeight.w400,
                    color: ConstColors.textGreen,
                  ),
                ),
              ),
              if (highlighted)
                const Expanded(
                  child: Divider(
                    color: ConstColors.highlightGreen,
                    height: 4.0,
                    thickness: 4.0,
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
