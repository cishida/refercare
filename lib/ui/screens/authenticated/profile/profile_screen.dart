import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:refercare/core/_constants/_colors.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final List<String> _navItems = [
    'Background',
    'Productivity',
    'Education',
    'Specialties',
    'Previous Roles',
  ];

  List<Widget> _buildNavItems() {
    final List<Widget> widgets = [];

    for (var i = 0; i < _navItems.length; i++) {
      widgets.add(
        IntrinsicHeight(
          child: Row(
            children: [
              const VerticalDivider(
                width: 1.0,
              ),
              Padding(
                padding: EdgeInsets.only(
                  // top: 4.0,
                  bottom: i == _navItems.length - 1 ? 4.0 : 14.0,
                  left: 14.0,
                ),
                child: Text(
                  _navItems[i],
                  style: const TextStyle(
                    fontSize: 14.0,
                    color: ConstColors.textGreen,
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    }

    return widgets;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'Your account is now active',
          style: TextStyle(
            color: ConstColors.textGreen,
            fontSize: 24.0,
            fontWeight: FontWeight.w700,
          ),
        ),
        const Text(
          'Start making connections to get the most out of ReferCare.',
          style: TextStyle(
            color: ConstColors.textGreen,
            fontSize: 18.0,
            fontWeight: FontWeight.w400,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 188.0,
              margin: const EdgeInsets.only(
                left: 72.0,
                top: 28.0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Profile',
                    style: TextStyle(
                      color: ConstColors.textGreen,
                      fontWeight: FontWeight.w700,
                      fontSize: 17.0,
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 15.0),
                        child: SingleChildScrollView(
                          child: AnimationLimiter(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: AnimationConfiguration.toStaggeredList(
                                duration: const Duration(milliseconds: 250),
                                childAnimationBuilder: (widget) =>
                                    SlideAnimation(
                                  horizontalOffset: 50.0,
                                  child: FadeInAnimation(
                                    child: widget,
                                  ),
                                ),
                                children: _buildNavItems(),
                              ),
                            ),
                          ),
                        ),

                        // Column(
                        //   crossAxisAlignment: CrossAxisAlignment.start,
                        //   children: _buildNavItems(),
                        // ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 30.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MouseRegion(
                      cursor: SystemMouseCursors.click,
                      child: GestureDetector(
                        onTap: () {
                          showDialog<void>(
                            context: context,
                            builder: (context) => const AlertDialog(
                              content: Text('Edit profile clicked'),
                            ),
                          );
                        },
                        child: Stack(
                          children: [
                            Image.asset(
                              'assets/images/profile/saber-profile.png',
                              width: 100.0,
                              // color: ConstColors.divider,
                              filterQuality: FilterQuality.high,
                            ),
                            Positioned(
                              bottom: 0.0,
                              right: 0.0,
                              child: Image.asset(
                                'assets/images/profile/edit-profile.png',
                                width: 28.0,
                                // color: ConstColors.divider,
                                filterQuality: FilterQuality.high,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 30.0,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            bottom: 8.0,
                          ),
                          child: Text(
                            'BIO',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 11.0,
                              color: Colors.black.withOpacity(.5),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: 362.0,
              height: MediaQuery.of(context).size.height,
              color: ConstColors.lightGreen,
              child: const Text('Browse Profiles'),
            ),
          ],
        ),
      ],
    );
  }
}
