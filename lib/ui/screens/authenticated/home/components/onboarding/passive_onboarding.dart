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
          spreadRadius: .5,
          blurRadius: 1,
          offset: const Offset(
            0,
            -2,
          ),
        ),
      ],
    );

    return Column(
      children: [
        const PassiveOnboardingHeader(),
        Container(
          height: 349.0,
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
                            height: 15.0,
                          ),
                          Container(
                            height: 197,
                            width: 270.0,
                            decoration: shadowDecoration,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                    top: 12.0,
                                    left: 12.0,
                                    bottom: 8.0,
                                  ),
                                  child: Row(
                                    children: const [
                                      Text(
                                        '🎓',
                                        style: TextStyle(
                                          fontSize: 16.0,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10.0,
                                      ),
                                      Text(
                                        'MEDICAL TRAINING',
                                        style: TextStyle(
                                          fontSize: 14.0,
                                          fontWeight: FontWeight.w700,
                                          color: Color(0xFF1443E8),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const Divider(
                                  height: 1.0,
                                  color: ConstColors.lightDivider,
                                ),
                                const Padding(
                                  padding:
                                      EdgeInsets.only(left: 40.0, top: 5.0),
                                  child: Text(
                                    'USC Herman Ostrow School of Dentistry',
                                    style: TextStyle(
                                      fontSize: 15.0,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(
                                    left: 40.0,
                                    bottom: 10.0,
                                  ),
                                  child: Text(
                                    "DDS '10",
                                    style: TextStyle(
                                      fontSize: 15.0,
                                      fontWeight: FontWeight.w400,
                                      color: ConstColors.navGray,
                                    ),
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(left: 40.0),
                                  child: Text(
                                    'Stanford University',
                                    style: TextStyle(
                                      fontSize: 15.0,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(left: 40.0),
                                  child: Text(
                                    "BA '06",
                                    style: TextStyle(
                                      fontSize: 15.0,
                                      fontWeight: FontWeight.w400,
                                      color: ConstColors.navGray,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: Row(
                                    children: const [
                                      Text(
                                        '📇',
                                        style: TextStyle(
                                          fontSize: 16.0,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10.0,
                                      ),
                                      Text(
                                        'WORK HISTORY',
                                        style: TextStyle(
                                          fontSize: 14.0,
                                          fontWeight: FontWeight.w700,
                                          color: Color(0xFF1443E8),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const OnboardingStepHeader(
                            title: 'PAYROLL',
                            subtitle: 'Manage benefits & compensation',
                            titleColor: Color(0xFF6E31EF),
                            titleBackgroundColor: Color(0xFFE7DBFC),
                          ),
                          const SizedBox(
                            height: 15.0,
                          ),
                          Container(
                            height: 197,
                            width: 256.0,
                            // decoration: shadowDecoration,
                            child: Wrap(
                              children: const [
                                PayrollItem(
                                  name: 'Nicholas Wong',
                                  salary: '2492.53',
                                  bonus: '350.00',
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    top: 10.0,
                                    bottom: 10.0,
                                  ),
                                  child: PayrollItem(
                                    name: 'Rebecca Everley',
                                    salary: '1938.04',
                                    bonus: '250.0',
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const OnboardingStepHeader(
                            title: 'HR',
                            subtitle: 'Organize your staff',
                            titleColor: Color(0xFF2653C7),
                            titleBackgroundColor: Color(0xFFB3D9FC),
                          ),
                          const SizedBox(
                            height: 15.0,
                          ),
                          Container(
                            height: 197,
                            width: 256.0,
                            // decoration: shadowDecoration,
                            child: Wrap(
                              children: const [
                                HRStaffItem(
                                  name: 'Nicholas Wong',
                                  title: 'Dental Hygienist',
                                  image:
                                      'assets/images/onboarding/nicholas.png',
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    top: 10.0,
                                    bottom: 10.0,
                                  ),
                                  child: HRStaffItem(
                                    name: 'Rebecca Everley',
                                    title: 'Office Manager',
                                    image:
                                        'assets/images/onboarding/rebecca.png',
                                  ),
                                ),
                                HRStaffItem(
                                  name: 'Mark Brafka',
                                  title: 'Dental Assistant',
                                  image: 'assets/images/onboarding/mark.png',
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Container(
                        height: 70.0,
                        width: 420.0,
                        margin: const EdgeInsets.only(bottom: 90.0),
                        padding: const EdgeInsets.all(12.0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(6.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: .5,
                              blurRadius: 4,
                              offset: const Offset(
                                0,
                                2,
                              ),
                            ),
                          ],
                        ),
                        child: Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: const [
                                    Icon(
                                      Icons.help_outline_rounded,
                                      size: 16.0,
                                    ),
                                    SizedBox(
                                      width: 5.0,
                                    ),
                                    Text(
                                      'Not sure where to start?',
                                      style: TextStyle(
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 6.0),
                                const Text(
                                  'Get personalized recommendations to set up ReferCare',
                                  style: TextStyle(
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                            const Spacer(),
                            const Icon(
                              Icons.arrow_forward_ios_rounded,
                              size: 15.0,
                              color: ConstColors.navGray,
                            ),
                          ],
                        ),
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

class HRStaffItem extends StatelessWidget {
  const HRStaffItem(
      {Key? key, required this.name, required this.title, required this.image})
      : super(key: key);

  final String name;
  final String title;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        // border:
        //     Border.all(color: ConstColors.divider),
        borderRadius: BorderRadius.circular(4.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: .5,
            blurRadius: 4,
            offset: const Offset(
              0,
              2,
            ),
          ),
        ],
      ),
      child: IntrinsicHeight(
        child: Row(
          children: [
            const SizedBox(
              width: 12.0,
              height: 64.0,
            ),
            Image.asset(
              image,
              width: 42.0,
              filterQuality: FilterQuality.high,
            ),
            const SizedBox(
              width: 12.0,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    top: 12.0,
                    bottom: 2.0,
                  ),
                  child: Text(
                    name,
                    style: TextStyle(
                      color: Colors.black.withOpacity(.7),
                      fontSize: 14.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Text(
                  title,
                  style: TextStyle(
                    color: Colors.black.withOpacity(.7),
                    fontSize: 12.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
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
                      'Account successfully upgraded',
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
                  'Integrate with services in App Shop to get the most out of ReferCare.',
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
        Row(
          children: const [
            Text(
              'Start',
              style: TextStyle(
                color: Colors.blue,
                fontSize: 14.0,
                fontWeight: FontWeight.w600,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 2.0),
              child: Icon(
                Icons.arrow_forward,
                color: Colors.blue,
                size: 15.0,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class PayrollItem extends StatelessWidget {
  const PayrollItem({
    Key? key,
    required this.name,
    required this.salary,
    required this.bonus,
  }) : super(key: key);

  final String name;
  final String salary;
  final String bonus;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        // border:
        //     Border.all(color: ConstColors.divider),
        borderRadius: BorderRadius.circular(4.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: .5,
            blurRadius: 4,
            offset: const Offset(
              0,
              2,
            ),
          ),
        ],
      ),
      child: IntrinsicHeight(
        child: Row(
          children: [
            const SizedBox(
              width: 12.0,
              height: 100.0,
            ),
            // Image.asset(
            //   image,
            //   width: 42.0,
            //   filterQuality: FilterQuality.high,
            // ),
            // const SizedBox(
            //   width: 12.0,
            // ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    top: 12.0,
                    bottom: 2.0,
                  ),
                  child: Text(
                    name,
                    style: TextStyle(
                      color: Colors.black.withOpacity(.7),
                      fontSize: 14.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                const SizedBox(
                  width: 244.0,
                  child: Divider(
                    height: 1.0,
                    color: ConstColors.lightDivider,
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 100.0,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Salary',
                            style: TextStyle(
                              color: Colors.black.withOpacity(.7),
                              fontSize: 13.0,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Text(
                            salary,
                            style: TextStyle(
                              color: Colors.black.withOpacity(.7),
                              fontSize: 15.0,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                    // const SizedBox(
                    //   width: 30.0,
                    // ),
                    SizedBox(
                      width: 100.0,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Bonus',
                            style: TextStyle(
                              color: Colors.black.withOpacity(.7),
                              fontSize: 13.0,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Text(
                            bonus,
                            style: TextStyle(
                              color: Colors.black.withOpacity(.7),
                              fontSize: 15.0,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Wrap(
                          direction: Axis.vertical,
                          children: [
                            Text(
                              'Reimbu',
                              overflow: TextOverflow.fade,
                              style: TextStyle(
                                color: Colors.black.withOpacity(.7),
                                fontSize: 13.0,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                        Text(
                          '0',
                          style: TextStyle(
                            color: Colors.black.withOpacity(.7),
                            fontSize: 15.0,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
