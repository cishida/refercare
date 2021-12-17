import 'package:flutter/material.dart';
import 'package:refercare/core/_constants/_colors.dart';
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
    final bool highlighted = context.vRouter.path == routeName ||
        context.vRouter.path == '/' && routeName == '/authenticated/home';

    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () {
          context.vRouter.to(routeName);
        },
        child: Container(
          color: highlighted
              ? ConstColors.primary.withOpacity(.1)
              : Colors.transparent,
          // width: 172.0,
          height: 38.0,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 14.0),
                child: Image.asset(
                  'assets/images/nav/${title.toLowerCase()}-icon.png',
                  width: 14.0,
                  color:
                      highlighted ? ConstColors.primary : ConstColors.navGray,
                  filterQuality: FilterQuality.high,
                ),
              ),
              Text(
                title,
                style: TextStyle(
                  fontSize: 14.0,
                  fontWeight: highlighted ? FontWeight.w700 : FontWeight.w600,
                  color: highlighted ? Colors.black : ConstColors.navGray,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
