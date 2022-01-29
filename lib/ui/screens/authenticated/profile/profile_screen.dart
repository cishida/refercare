import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:refercare/core/_constants/_colors.dart';
import 'package:refercare/ui/screens/authenticated/home/components/onboarding/passive_onboarding.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  String _selectedNavItem = 'Background';

  final List<String> _navItems = [
    'Background',
    'Productivity',
    'Education',
    'Specialties',
    'Previous Roles',
  ];

  final List<Map<String, String>> _profileItems = [
    {
      'title': 'FULL NAME',
      'value': 'Dr. Mohamed Saber',
    },
    {
      'title': 'JOB TITLE',
      'value': 'Endodontist',
    },
    {
      'title': 'WORKPLACE',
      'value': 'Brentwood Endodontics',
    },
    {
      'title': 'LOCATION',
      'value': 'Los Angeles, CA',
    },
  ];
  final List<Map<String, String>> _recommendedProfiles = [
    {
      'name': 'Nicholas Wong, DDS',
      'workplace': 'General Dentist at Santa Monica Dental Partners',
    },
    {
      'name': 'Dr. Mark Brafka',
      'workplace': 'General Dentist at Santa Monica Dental Partners',
    },
    {
      'name': 'Sarah Powell',
      'workplace': 'General Dentist at Santa Monica Dental Partners',
    },
    {
      'name': 'Mischa Foster',
      'workplace': 'General Dentist at Santa Monica Dental Partners',
    },
  ];

  List<Widget> _buildRecommendedProfiles() {
    final List<Widget> widgets = [];

    for (final element in _recommendedProfiles) {
      widgets.add(
        MouseRegion(
          cursor: SystemMouseCursors.click,
          child: GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTap: () {
              showDialog<void>(
                context: context,
                builder: (context) => const AlertDialog(
                  content: Text('Recommended profile clicked'),
                ),
              );
            },
            child: IntrinsicHeight(
              child: Row(
                children: [
                  const VerticalDivider(
                    width: 1.0,
                    color: ConstColors.divider,
                  ),
                  const SizedBox(
                    width: 20.0,
                    height: 64.0,
                  ),
                  Image.asset(
                    'assets/images/empty-user-photo.png',
                    width: 42.0,
                    color: ConstColors.divider,
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
                          element['name']!,
                          style: TextStyle(
                            color: Colors.black.withOpacity(.7),
                            fontSize: 14.0,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      Text(
                        element['workplace']!,
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
          ),
        ),
      );
    }

    return widgets;
  }

  List<Widget> _buildProfileItems() {
    final List<Widget> widgets = [];

    for (final element in _profileItems) {
      widgets.add(
        Padding(
          padding: const EdgeInsets.only(
            bottom: 8.0,
            left: 2.0,
          ),
          child: Text(
            element['title']!,
            style: TextStyle(
              color: Colors.black.withOpacity(.7),
              fontSize: 11.0,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      );

      widgets.add(
        TextFormField(
          textAlign: TextAlign.left,
          initialValue: element['value'],
          // controller: searchCtrl,
          style: const TextStyle(
            fontSize: 14,
            color: Colors.black,
            height: 1.0,
          ),
          cursorColor: ConstColors.highlightGreen,
          keyboardType: TextInputType.text,
          decoration: InputDecoration(
            hintText: element['title'],
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
            fillColor: ConstColors.lightGray,
          ),
        ),
      );

      widgets.add(
        const SizedBox(
          height: 10.0,
        ),
      );
    }

    return widgets;
  }

  List<Widget> _buildNavItems() {
    final List<Widget> widgets = [];

    for (var i = 0; i < _navItems.length; i++) {
      widgets.add(
        MouseRegion(
          cursor: SystemMouseCursors.click,
          child: GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTap: () {
              if (mounted) {
                setState(() {
                  _selectedNavItem = _navItems[i];
                });
              }
            },
            child: IntrinsicHeight(
              child: Row(
                children: [
                  const VerticalDivider(
                    width: 1.0,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      bottom: i == _navItems.length - 1 ? 4.0 : 14.0,
                    ),
                    child: Row(
                      children: [
                        if (_selectedNavItem == _navItems[i])
                          const VerticalDivider(
                            width: 2.0,
                            thickness: 2.0,
                            color: ConstColors.highlightGreen,
                          ),
                        Padding(
                          padding: EdgeInsets.only(
                            // top: 4.0,
                            left:
                                _selectedNavItem == _navItems[i] ? 12.0 : 14.0,
                          ),
                          child: Text(
                            _navItems[i],
                            style: TextStyle(
                              fontSize: 14.0,
                              color: _selectedNavItem == _navItems[i]
                                  ? ConstColors.highlightGreen
                                  : ConstColors.textGreen,
                              fontWeight: _selectedNavItem == _navItems[i]
                                  ? FontWeight.w700
                                  : FontWeight.w400,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    }

    return widgets;
  }

  @override
  Widget build(BuildContext context) {
    final BoxDecoration shadowDecoration = BoxDecoration(
      color: Colors.white,
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(10),
        topRight: Radius.circular(10),
        // bottomLeft: Radius.circular(10),
        // bottomRight: Radius.circular(10),
      ),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.5),
          spreadRadius: 5,
          blurRadius: 7,
          offset: const Offset(
            0,
            2,
          ), // changes position of shadow
        ),
      ],
    );

    return Column(
      // crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const PassiveOnboarding(),
        const Padding(
          padding: EdgeInsets.only(
            top: 44.0,
            left: 72.0,
          ),
          child: Divider(
            height: 1.0,
            color: ConstColors.lightDivider,
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
                  const SizedBox(
                    height: 18.0,
                  ),
                  OutlinedButton(
                    onPressed: () {
                      showDialog<void>(
                        context: context,
                        builder: (context) => const AlertDialog(
                          content: Text('Preview profile clicked'),
                        ),
                      );
                    },
                    style: OutlinedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4.0),
                      ),
                      side: const BorderSide(
                        color: ConstColors.lightDivider,
                      ),
                    ),
                    child: const Text(
                      'Preview Profile',
                      style: TextStyle(
                        color: ConstColors.textGray,
                        fontSize: 14.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 30.0,
                  right: 72.0,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 24.0),
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
                          Expanded(
                            child: Column(
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
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: ConstColors.lightGray,
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                      21.0,
                                      11.0,
                                      32.0,
                                      12.0,
                                    ),
                                    child: Text(
                                      'I’m a practicing Endodontist in Los Angeles. I accept referrals from practices around Southern California. Currently I’m hiring a new dental assistant for our practice, please reach out if you’re interested.',
                                      style: TextStyle(
                                        color: Colors.black.withOpacity(.87),
                                        fontSize: 15.0,
                                      ),
                                      softWrap: true,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: _buildProfileItems(),
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 80,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                  bottom: 8.0,
                                  left: 2.0,
                                ),
                                child: Text(
                                  'START YEAR',
                                  style: TextStyle(
                                    color: Colors.black.withOpacity(.7),
                                    fontSize: 11.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              TextFormField(
                                textAlign: TextAlign.left,
                                initialValue: '2018',
                                // controller: searchCtrl,
                                style: const TextStyle(
                                  fontSize: 14,
                                  color: Colors.black,
                                  height: 1.0,
                                ),
                                cursorColor: ConstColors.highlightGreen,
                                keyboardType: TextInputType.text,
                                decoration: InputDecoration(
                                  hintText: '',
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
                                  fillColor: ConstColors.lightGray,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 30.0,
                        ),
                        SizedBox(
                          width: 80,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                  bottom: 8.0,
                                  left: 2.0,
                                ),
                                child: Text(
                                  'END YEAR',
                                  style: TextStyle(
                                    color: Colors.black.withOpacity(.7),
                                    fontSize: 11.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              TextFormField(
                                textAlign: TextAlign.left,
                                initialValue: '',
                                // controller: searchCtrl,
                                style: const TextStyle(
                                  fontSize: 14,
                                  color: Colors.black,
                                  height: 1.0,
                                ),
                                cursorColor: ConstColors.highlightGreen,
                                keyboardType: TextInputType.text,
                                decoration: InputDecoration(
                                  hintText: '',
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
                                  fillColor: ConstColors.lightGray,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 30.0,
                    ),
                    const Divider(
                      height: 1.0,
                      color: ConstColors.lightDivider,
                    ),
                    const SizedBox(
                      height: 30.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        bottom: 8.0,
                        left: 2.0,
                      ),
                      child: Text(
                        'SCHOOL',
                        style: TextStyle(
                          color: Colors.black.withOpacity(.7),
                          fontSize: 11.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    TextFormField(
                      textAlign: TextAlign.left,
                      initialValue: 'USC Herman Ostrow School of Dentistry',
                      // controller: searchCtrl,
                      style: const TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                        height: 1.0,
                      ),
                      cursorColor: ConstColors.highlightGreen,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        hintText: '',
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
                        fillColor: ConstColors.lightGray,
                      ),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 152,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                  bottom: 8.0,
                                  left: 2.0,
                                ),
                                child: Text(
                                  'DEGREE',
                                  style: TextStyle(
                                    color: Colors.black.withOpacity(.7),
                                    fontSize: 11.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              TextFormField(
                                textAlign: TextAlign.left,
                                initialValue: 'DDS',
                                // controller: searchCtrl,
                                style: const TextStyle(
                                  fontSize: 14,
                                  color: Colors.black,
                                  height: 1.0,
                                ),
                                cursorColor: ConstColors.highlightGreen,
                                keyboardType: TextInputType.text,
                                decoration: InputDecoration(
                                  hintText: '',
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
                                  fillColor: ConstColors.lightGray,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 30.0,
                        ),
                        SizedBox(
                          width: 80,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                  bottom: 8.0,
                                  left: 2.0,
                                ),
                                child: Text(
                                  'START YEAR',
                                  style: TextStyle(
                                    color: Colors.black.withOpacity(.7),
                                    fontSize: 11.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              TextFormField(
                                textAlign: TextAlign.left,
                                initialValue: '2010',
                                // controller: searchCtrl,
                                style: const TextStyle(
                                  fontSize: 14,
                                  color: Colors.black,
                                  height: 1.0,
                                ),
                                cursorColor: ConstColors.highlightGreen,
                                keyboardType: TextInputType.text,
                                decoration: InputDecoration(
                                  hintText: '',
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
                                  fillColor: ConstColors.lightGray,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 30.0,
                        ),
                        SizedBox(
                          width: 100,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                  bottom: 8.0,
                                  left: 2.0,
                                ),
                                child: Text(
                                  'GRADUATION YEAR',
                                  style: TextStyle(
                                    color: Colors.black.withOpacity(.7),
                                    fontSize: 11.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              TextFormField(
                                textAlign: TextAlign.left,
                                initialValue: '2014',
                                // controller: searchCtrl,
                                style: const TextStyle(
                                  fontSize: 14,
                                  color: Colors.black,
                                  height: 1.0,
                                ),
                                cursorColor: ConstColors.highlightGreen,
                                keyboardType: TextInputType.text,
                                decoration: InputDecoration(
                                  hintText: '',
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
                                  fillColor: ConstColors.lightGray,
                                ),
                              ),
                            ],
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
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    color: ConstColors.browseGray,
                    height: 38.0,
                    width: 361.0,
                    padding: const EdgeInsets.all(
                      10.0,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          color: ConstColors.lightDivider,
                          child: const Text('BROWSE PROFILES'),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: _buildRecommendedProfiles(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
