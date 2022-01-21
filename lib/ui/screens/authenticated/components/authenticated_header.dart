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
      color: ConstColors.lightGreen,
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
                Row(
                  children: [
                    Image.asset(
                      'assets/images/profile/saber-profile.png',
                      width: 32.0,
                      // color: ConstColors.divider,
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
                SizedBox(
                  width: 380.0,
                  height: 32.0,
                  child: TextField(
                    textAlign: TextAlign.left,
                    // controller: searchCtrl,
                    style: const TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                      height: 1.0,
                    ),
                    cursorColor: ConstColors.highlightGreen,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      hintText: 'Search...',
                      hintStyle: const TextStyle(
                        fontSize: 14,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                        // ignore: use_named_constants
                        borderSide: const BorderSide(
                          width: 0,
                          style: BorderStyle.none,
                        ),
                      ),
                      filled: true,
                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 6.0,
                      ),
                      fillColor: Colors.white,
                    ),
                  ),
                ),
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
