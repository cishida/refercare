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
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20.0,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Your Dental Network',
                      style: TextStyle(
                        color: ConstColors.textBlueGray,
                        fontSize: 15.0,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      'For your safety, your network is HIPAA-compliant.',
                      style: TextStyle(
                        color: Colors.black.withOpacity(.4),
                        fontSize: 12.0,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Image.asset(
                      'assets/images/empty-user-photo.png',
                      width: 32.0,
                      color: ConstColors.divider,
                      filterQuality: FilterQuality.high,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 12.0,
                        right: 15.0,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text('Dr. Mohamed Saber'),
                          Text('Brentwood Endodontics'),
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
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
