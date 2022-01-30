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
          Container(
            width: Values.screenWidth,
            padding: const EdgeInsets.only(
              left: Values.screenMargin,
              right: Values.screenMargin,
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
                Row(
                  children: [
                    OutlinedButton(
                      onPressed: () {
                        showDialog<void>(
                          context: context,
                          builder: (context) => const AlertDialog(
                            content: Text('Create clicked'),
                          ),
                        );
                      },
                      style: OutlinedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                        ),
                        side: const BorderSide(
                          color: ConstColors.highlightGreen,
                        ),
                      ),
                      child: const Text(
                        'Create',
                        style: TextStyle(
                          color: ConstColors.highlightGreen,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 47.0,
                    ),
                    MouseRegion(
                      cursor: SystemMouseCursors.click,
                      child: GestureDetector(
                        behavior: HitTestBehavior.opaque,
                        onTap: () {
                          showDialog<void>(
                            context: context,
                            builder: (context) => const AlertDialog(
                              content: Text('Help clicked'),
                            ),
                          );
                        },
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 4.0),
                              child: Image.asset(
                                'assets/images/help-icon.png',
                                width: 16.0,
                                height: 16.0,
                                color: ConstColors.iconGray,
                              ),
                            ),
                            Text(
                              'Help',
                              style: TextStyle(
                                fontSize: 13.0,
                                fontWeight: FontWeight.w600,
                                color: Colors.black.withOpacity(.5),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 12.0,
                    ),
                    MouseRegion(
                      cursor: SystemMouseCursors.click,
                      child: GestureDetector(
                        behavior: HitTestBehavior.opaque,
                        onTap: () {
                          showDialog<void>(
                            context: context,
                            builder: (context) => const AlertDialog(
                              content: Text('Notifications clicked'),
                            ),
                          );
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Image.asset(
                            'assets/images/notifications-icon.png',
                            width: 15.0,
                            color: ConstColors.iconGray,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 15.0,
                    ),
                    MouseRegion(
                      cursor: SystemMouseCursors.click,
                      child: GestureDetector(
                        behavior: HitTestBehavior.opaque,
                        onTap: () {
                          showDialog<void>(
                            context: context,
                            builder: (context) => const AlertDialog(
                              content: Text('Settings clicked'),
                            ),
                          );
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Image.asset(
                            'assets/images/gear-icon.png',
                            width: 16.0,
                            color: ConstColors.iconGray,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 15.0,
                    ),
                    MouseRegion(
                      cursor: SystemMouseCursors.click,
                      child: GestureDetector(
                        behavior: HitTestBehavior.opaque,
                        onTap: () {
                          showDialog<void>(
                            context: context,
                            builder: (context) => const AlertDialog(
                              content: Text('Account clicked'),
                            ),
                          );
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Image.asset(
                            'assets/images/profile-icon.png',
                            width: 16.0,
                            color: ConstColors.iconGray,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                // Column(
                //   crossAxisAlignment: CrossAxisAlignment.start,
                //   children: [
                //     const Text(
                //       'Your Dental Network',
                //       style: TextStyle(
                //         color: ConstColors.textBlueGray,
                //         fontSize: 15.0,
                //         fontWeight: FontWeight.w700,
                //       ),
                //     ),
                //     Text(
                //       'For your safety, your network is HIPAA-compliant.',
                //       style: TextStyle(
                //         color: Colors.black.withOpacity(.4),
                //         fontSize: 12.0,
                //       ),
                //     ),
                //   ],
                // ),
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
