import 'package:flutter/material.dart';
import 'package:refercare/core/_constants/_colors.dart';

class PassiveOnboarding extends StatelessWidget {
  const PassiveOnboarding({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final BoxDecoration shadowDecoration = BoxDecoration(
      color: Colors.white,
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(10),
        topRight: Radius.circular(10),
      ),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.5),
          spreadRadius: 5,
          blurRadius: 7,
          offset: const Offset(
            0,
            2,
          ),
        ),
      ],
    );

    return Column(
      children: [
        const PassiveOnboardingHeader(),
        Container(
          height: 350.0,
          color: ConstColors.lightGreen,
          child: Padding(
            padding: const EdgeInsets.only(left: 33.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(
                        top: 32.0,
                      ),
                      child: Text(
                        'Get started with ReferCare',
                        style: TextStyle(
                          color: ConstColors.textGreen,
                          fontSize: 24.0,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 21.0,
                        right: 22.0,
                      ),
                      child: Image.asset(
                        'assets/images/close-button.png',
                        width: 18,
                        height: 18,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 9.0,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 37.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const OnboardingStepHeader(
                            title: 'PROFILE',
                            subtitle: 'Complete your profile',
                            titleColor: Color(0xFF1443E8),
                            titleBackgroundColor: Color(0xFF99E7FC),
                          ),
                          const SizedBox(
                            height: 23.0,
                          ),
                          Container(
                            height: 190,
                            width: 249.0,
                            decoration: shadowDecoration,
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const OnboardingStepHeader(
                            title: 'NETWORK',
                            subtitle: 'Connect with your colleagues',
                            titleColor: Color(0xFF6E31EF),
                            titleBackgroundColor: Color(0xFFE7DBFC),
                          ),
                          const SizedBox(
                            height: 23.0,
                          ),
                          Container(
                            height: 190,
                            width: 249.0,
                            decoration: shadowDecoration,
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const OnboardingStepHeader(
                            title: 'PERFORMANCE',
                            subtitle: 'Measure outcomes & compensation',
                            titleColor: Color(0xFF2653C7),
                            titleBackgroundColor: Color(0xFFB3D9FC),
                          ),
                          const SizedBox(
                            height: 23.0,
                          ),
                          Container(
                            height: 190,
                            width: 249.0,
                            decoration: shadowDecoration,
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const OnboardingStepHeader(
                            title: 'MESSAGES',
                            subtitle: 'Send secure messages',
                            titleColor: Color(0xFF428124),
                            titleBackgroundColor: Color(0xFFCCF0E8),
                          ),
                          const SizedBox(
                            height: 23.0,
                          ),
                          Container(
                            height: 190,
                            width: 249.0,
                            decoration: shadowDecoration,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class PassiveOnboardingHeader extends StatelessWidget {
  const PassiveOnboardingHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 50.0,
        top: 17.0,
        bottom: 30.0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 1.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const Text(
                      'Your account is now active',
                      style: TextStyle(
                        color: ConstColors.textGreen,
                        fontSize: 24.0,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(
                      width: 10.0,
                    ),
                    Image.asset(
                      'assets/images/online-checkmark.png',
                      width: 30.0,
                    ),
                  ],
                ),
                const Text(
                  'Start making connections to get the most out of ReferCare.',
                  style: TextStyle(
                    color: ConstColors.textGreen,
                    fontSize: 18.0,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 250.0,
            height: 129,
            child: Stack(
              children: [
                Positioned(
                  left: 0.0,
                  child: Image.asset(
                    'assets/images/green-parallelogram.png',
                    width: 190.0,
                  ),
                ),
                Positioned(
                  left: 50.0,
                  top: 20.0,
                  child: Image.asset(
                    'assets/images/blue-parallelogram.png',
                    width: 190.0,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class OnboardingStepHeader extends StatelessWidget {
  const OnboardingStepHeader({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.titleColor,
    required this.titleBackgroundColor,
  }) : super(key: key);

  final String title;
  final String subtitle;
  final Color titleColor;
  final Color titleBackgroundColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          color: titleBackgroundColor,
          padding: const EdgeInsets.symmetric(
            horizontal: 3.0,
            vertical: 2.0,
          ),
          child: Text(
            title,
            style: TextStyle(
              color: titleColor,
              fontSize: 12.0,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        const SizedBox(
          height: 5.0,
        ),
        Text(
          subtitle,
          style: const TextStyle(
            color: ConstColors.textGreen,
            fontSize: 15.0,
            fontWeight: FontWeight.w700,
          ),
        ),
        const SizedBox(
          height: 5.0,
        ),
        const Text(
          'Start',
          style: TextStyle(
            color: ConstColors.textGreen,
            fontSize: 14.0,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}
