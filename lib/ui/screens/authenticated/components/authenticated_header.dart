import 'package:flutter/material.dart';
import 'package:refercare/core/_constants/_colors.dart';
import 'package:refercare/core/_constants/_values.dart';

class AuthenticatedHeader extends StatelessWidget {
  const AuthenticatedHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Values.homeHeaderHeight,
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Divider(
            height: 1.0,
            color: Colors.white,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Your Dental Network'),
              Row(
                children: [
                  Container(
                    height: 30,
                    width: 30,
                    color: Colors.blueGrey,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text('Dentist Name'),
                      Text('Org Name'),
                    ],
                  )
                ],
              ),
            ],
          ),
          const Divider(
            height: 1.0,
            color: ConstColors.divider,
          ),
        ],
      ),
    );
  }
}
