import 'package:flutter/material.dart';
import 'package:refercare/core/_constants/_colors.dart';
import 'package:vrouter/vrouter.dart';

class NavItem extends StatelessWidget {
  const NavItem({
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

    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () {
          context.vRouter.to(routeName + secondaryRouteName);
        },
        child: Container(
          // height: 24.0,
          padding: const EdgeInsets.symmetric(
            horizontal: 10.0,
            vertical: 4.0,
          ),
          decoration: BoxDecoration(
            color:
                highlighted ? ConstColors.highlightGreen : Colors.transparent,
            borderRadius: BorderRadius.circular(16.0),
          ),
          child: Row(
            children: [
              // Padding(
              //   padding: const EdgeInsets.symmetric(horizontal: 14.0),
              //   child: Image.asset(
              //     'assets/images/nav/${title.toLowerCase()}-icon.png',
              //     width: 14.0,
              //     color:
              //         highlighted ? ConstColors.primary : ConstColors.navGray,
              //     filterQuality: FilterQuality.high,
              //   ),
              // ),
              Text(
                title,
                style: TextStyle(
                  fontSize: 13.0,
                  fontWeight: FontWeight.w600,
                  color: highlighted ? Colors.white : Colors.black,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
