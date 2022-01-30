import 'package:flutter/material.dart';
import 'package:refercare/core/_constants/_colors.dart';
import 'package:refercare/core/_constants/_values.dart';

class YapiScreen extends StatefulWidget {
  const YapiScreen({Key? key}) : super(key: key);

  @override
  State<YapiScreen> createState() => _YapiScreenState();
}

class _YapiScreenState extends State<YapiScreen> {
  String _selectedNavItem = 'Overview';

  List<Widget> _buildNavItems() {
    final List<Widget> widgets = [];

    for (var i = 0; i < Values.yapiNavItems.length; i++) {
      widgets.add(
        MouseRegion(
          cursor: SystemMouseCursors.click,
          child: GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTap: () {
              if (mounted) {
                setState(() {
                  _selectedNavItem = Values.yapiNavItems[i];
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
                      bottom: i == Values.yapiNavItems.length - 1 ? 4.0 : 14.0,
                    ),
                    child: Row(
                      children: [
                        if (_selectedNavItem == Values.yapiNavItems[i])
                          const VerticalDivider(
                            width: 2.0,
                            thickness: 2.0,
                            color: ConstColors.highlightGreen,
                          ),
                        Padding(
                          padding: EdgeInsets.only(
                            // top: 4.0,
                            left: _selectedNavItem == Values.yapiNavItems[i]
                                ? 12.0
                                : 14.0,
                          ),
                          child: Text(
                            Values.yapiNavItems[i],
                            style: TextStyle(
                              fontSize: 14.0,
                              color: _selectedNavItem == Values.yapiNavItems[i]
                                  ? ConstColors.highlightGreen
                                  : ConstColors.textGreen,
                              fontWeight:
                                  _selectedNavItem == Values.yapiNavItems[i]
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
    return Row(
      children: [
        Container(
          width: 230.0,
          margin: const EdgeInsets.only(
            left: 125.0,
            top: 28.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Yapi',
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
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: _buildNavItems(),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Expanded(
          child: Container(
            margin: const EdgeInsets.only(right: 100.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    top: 25.0,
                    bottom: 10.0,
                  ),
                  child: Text(
                    _selectedNavItem,
                    style: const TextStyle(
                      color: ConstColors.textGreen,
                      fontSize: 32.0,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                const Text(
                  'YAPI SERVICES',
                  style: TextStyle(
                    color: ConstColors.navGray,
                    fontSize: 20.0,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(
                  height: 15.0,
                ),
                SizedBox(
                  height: 170.0,
                  child: Row(
                    children: [
                      YapiServiceItem(
                        icon: const Icon(
                          Icons.book_online_outlined,
                          color: ConstColors.highlightGreen,
                        ),
                        title: Values.yapiNavItems[1],
                        body:
                            'Go fully digital with online patient forms, electronic consents, and digital treatment plans.',
                      ),
                      YapiServiceItem(
                        icon: const Icon(
                          Icons.remember_me,
                          color: ConstColors.highlightGreen,
                        ),
                        title: Values.yapiNavItems[2],
                        body:
                            'Take great care of your patients and grow your practice with our automated dental appointment reminders and recall.',
                      ),
                      YapiServiceItem(
                        icon: const Icon(
                          Icons.thumb_up,
                          color: ConstColors.highlightGreen,
                        ),
                        title: Values.yapiNavItems[3],
                        body:
                            'Send automated review requests to your dental patients, directing them to sites that matter like Google, Facebook, and Healthgrades.',
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15.0,
                ),
                SizedBox(
                  height: 170.0,
                  child: Row(
                    children: [
                      YapiServiceItem(
                        icon: const Icon(
                          Icons.calendar_today,
                          color: ConstColors.highlightGreen,
                        ),
                        title: Values.yapiNavItems[4],
                        body:
                            'Provide your new and existing patients the convenience of booking an appointment hassle-free with an online patient booking system.',
                      ),
                      YapiServiceItem(
                        icon: const Icon(
                          Icons.message,
                          color: ConstColors.highlightGreen,
                        ),
                        title: Values.yapiNavItems[5],
                        body:
                            'Keep your dental team connected discreetly in real-time while discussing patient treatment with your very own dental office messaging system.',
                      ),
                      YapiServiceItem(
                        icon: const Icon(
                          Icons.phone,
                          color: ConstColors.highlightGreen,
                        ),
                        title: Values.yapiNavItems[6],
                        body:
                            'Enhance your dental phone system with YAPI Phone Assistant™.',
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

class YapiServiceItem extends StatelessWidget {
  const YapiServiceItem({
    Key? key,
    required this.icon,
    required this.title,
    required this.body,
  }) : super(key: key);

  final Icon icon;
  final String title;
  final String body;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.only(right: 15.0),
        padding: const EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          border: Border.all(
            color: ConstColors.divider,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                icon,
                const SizedBox(
                  width: 10.0,
                ),
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 15.0,
                left: 5.0,
                bottom: 15.0,
              ),
              child: Text(
                body,
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(left: 5.0),
              child: MouseRegion(
                cursor: SystemMouseCursors.click,
                child: GestureDetector(
                  onTap: () {},
                  child: const Text(
                    'Learn more',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w400,
                      color: Colors.blue,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
