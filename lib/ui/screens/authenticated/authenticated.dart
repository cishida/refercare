import 'package:flutter/material.dart';
import 'package:refercare/core/_constants/_colors.dart';
import 'package:refercare/core/_constants/_values.dart';
import 'package:refercare/ui/screens/authenticated/components/authenticated_header.dart';
import 'package:refercare/ui/screens/authenticated/nav_row/nav_row.dart';

class Authenticated extends StatelessWidget {
  const Authenticated({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ConstColors.lightGray,
      body: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: <Widget>[
                const AuthenticatedHeader(),
                const NavRow(),
                Expanded(
                  child: SizedBox(
                    width: Values.screenWidth,
                    child: child,
                  ),
                ),
                // const Text('Footer'),
              ],
            ),
          ),
        ],
      ),

      // Expanded(
      //   child: SingleChildScrollView(
      //     child: Column(
      //       children: [
      //         const AuthenticatedHeader(),
      //         const NavRow(),
      //         Container(
      //           color: Colors.white,
      //           child: child,
      //         ),
      //       ],
      //     ),
      //   ),
      // ),
    );
  }
}
