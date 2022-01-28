import 'package:flutter/material.dart';
import 'package:refercare/core/_constants/_colors.dart';

class ReportsScreen extends StatefulWidget {
  const ReportsScreen({Key? key}) : super(key: key);

  @override
  _ReportsScreenState createState() => _ReportsScreenState();
}

class _ReportsScreenState extends State<ReportsScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 72.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Reports',
                style: TextStyle(
                  fontSize: 38.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
              MouseRegion(
                cursor: SystemMouseCursors.click,
                child: GestureDetector(
                  behavior: HitTestBehavior.opaque,
                  onTap: () {
                    showDialog<void>(
                      context: context,
                      builder: (context) => const AlertDialog(
                        content: Text('Select clicked'),
                      ),
                    );
                  },
                  child: Container(
                    width: 300.0,
                    height: 40.0,
                    margin: const EdgeInsets.only(
                      bottom: 12.0,
                      top: 20.0,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: ConstColors.divider,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            'Select',
                            style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.w600,
                              color: ConstColors.navGray,
                            ),
                          ),
                          Icon(Icons.arrow_drop_down),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 150.0,
              child: Column(
                children: const [
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      'Shared with Me',
                      style: TextStyle(
                        color: ConstColors.textGreen,
                        fontSize: 16.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Divider(
                    color: ConstColors.highlightGreen,
                    height: 3.0,
                    thickness: 3.0,
                  ),
                ],
              ),
            ),
            const Divider(
              color: ConstColors.divider,
              height: 1.0,
              thickness: 1.0,
            ),
          ],
        ),
        Container(
          height: 400.0,
          margin: const EdgeInsets.only(
            top: 50.0,
            bottom: 12.0,
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(
              color: ConstColors.divider,
            ),
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 30.0,
                  vertical: 20.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Shared with Me',
                      style: TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const Spacer(),
                    MouseRegion(
                      cursor: SystemMouseCursors.click,
                      child: GestureDetector(
                        behavior: HitTestBehavior.opaque,
                        onTap: () {
                          showDialog<void>(
                            context: context,
                            builder: (context) => const AlertDialog(
                              content: Text('Sort clicked'),
                            ),
                          );
                        },
                        child: Row(
                          children: const [
                            Text(
                              'Sort By:',
                              style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            SizedBox(
                              width: 4.0,
                            ),
                            Text(
                              'Recently updated',
                              style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 75.0),
              Icon(
                Icons.info_outline,
                size: 50.0,
                color: Colors.grey[400],
              ),
              const SizedBox(
                height: 12.0,
              ),
              const Text(
                'Nothing here',
                style: TextStyle(
                  fontSize: 26.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                height: 12.0,
              ),
              const Text(
                'No reports are shared with you',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
