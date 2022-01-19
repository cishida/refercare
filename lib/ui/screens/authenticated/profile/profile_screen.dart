import 'package:flutter/material.dart';
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
    return Row(
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
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: _buildNavItems(),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(20),
          child: Text(
            'Profile',
            style: TextStyle(
              fontSize: 24.0,
            ),
          ),
        ),
      ],
    );
  }
}
