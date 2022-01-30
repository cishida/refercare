import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:refercare/core/_constants/_colors.dart';
import 'package:refercare/core/_constants/_values.dart';
import 'package:refercare/core/models/integration.dart';
import 'package:refercare/core/providers/integrations_provider.dart';
import 'package:refercare/ui/screens/authenticated/integrations/integrations_screen.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:vrouter/vrouter.dart';

class AppScreen extends StatefulWidget {
  const AppScreen({Key? key}) : super(key: key);

  @override
  _AppScreenState createState() => _AppScreenState();
}

class _AppScreenState extends State<AppScreen> {
  String _selectedNavItem = 'Patient Tools';

  List<Widget> _buildOverallStars(int starCount) {
    final List<Widget> widgets = [];

    for (int i = 0; i < 5; i++) {
      double width = 2.0;

      switch (starCount) {
        case 5:
          if (i == 0) width = 50.0;
          if (i == 1) width = 8.0;
          if (i == 4) width = 8.0;
          break;
        case 4:
          if (i == 0) width = 40.0;
          if (i == 1) width = 30.0;
          if (i == 4) width = 12.0;
          break;
        case 3:
          if (i == 0) width = 35.0;
          if (i == 1) width = 30.0;
          if (i == 2) width = 20.0;
          if (i == 3) width = 23.0;
          if (i == 4) width = 20.0;
          break;
        default:
      }
      // (10 * (5 - i) - (i < 4 && i > 1 ? i * 3 : 0)).toDouble(),
      widgets.add(
        Row(
          children: [
            FiveStars(
              count: 5 - i,
            ),
            Container(
              height: 2.0,
              width: width,
              color: ConstColors.highlightGreen,
            ),
          ],
        ),
      );
    }

    return widgets;
  }

  List<Widget> _buildNavItems() {
    final List<Widget> widgets = [];

    for (var i = 0; i < Values.integrationNavItems.length; i++) {
      widgets.add(
        MouseRegion(
          cursor: SystemMouseCursors.click,
          child: GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTap: () {
              if (mounted) {
                setState(() {
                  _selectedNavItem = Values.integrationNavItems[i];
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
                      bottom: i == Values.integrationNavItems.length - 1
                          ? 4.0
                          : 14.0,
                    ),
                    child: Row(
                      children: [
                        if (_selectedNavItem == Values.integrationNavItems[i])
                          const VerticalDivider(
                            width: 2.0,
                            thickness: 2.0,
                            color: ConstColors.highlightGreen,
                          ),
                        Padding(
                          padding: EdgeInsets.only(
                            // top: 4.0,
                            left: _selectedNavItem ==
                                    Values.integrationNavItems[i]
                                ? 12.0
                                : 14.0,
                          ),
                          child: Text(
                            Values.integrationNavItems[i],
                            style: TextStyle(
                              fontSize: 14.0,
                              color: _selectedNavItem ==
                                      Values.integrationNavItems[i]
                                  ? ConstColors.highlightGreen
                                  : ConstColors.textGreen,
                              fontWeight: _selectedNavItem ==
                                      Values.integrationNavItems[i]
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
    final String param = context.vRouter.pathParameters['name']!;
    final Map<String, dynamic> appInfo = Values.placeholderAppInfos[param]!;

    return Row(
      children: [
        Container(
          width: 188.0,
          margin: const EdgeInsets.only(
            left: 125.0,
            top: 28.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Integrations',
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

                    // Column(
                    //   crossAxisAlignment: CrossAxisAlignment.start,
                    //   children: _buildNavItems(),
                    // ),
                  ),
                ],
              ),
              // const SizedBox(
              //   height: 18.0,
              // ),
              // OutlinedButton(
              //   onPressed: () {
              //     showDialog<void>(
              //       context: context,
              //       builder: (context) => const AlertDialog(
              //         content: Text('Preview profile clicked'),
              //       ),
              //     );
              //   },
              //   style: OutlinedButton.styleFrom(
              //     shape: RoundedRectangleBorder(
              //       borderRadius: BorderRadius.circular(4.0),
              //     ),
              //     side: const BorderSide(
              //       color: ConstColors.lightDivider,
              //     ),
              //   ),
              //   child: const Text(
              //     'Preview Profile',
              //     style: TextStyle(
              //       color: ConstColors.textGray,
              //       fontSize: 14.0,
              //       fontWeight: FontWeight.w600,
              //     ),
              //   ),
              // ),
            ],
          ),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 40.0),
                child: Row(
                  children: [
                    MouseRegion(
                      cursor: SystemMouseCursors.click,
                      child: GestureDetector(
                        behavior: HitTestBehavior.opaque,
                        onTap: () {
                          context.vRouter.to('/authenticated/integrations');
                        },
                        child: const Text(
                          'All',
                          style: TextStyle(
                            fontSize: 15.0,
                            color: Colors.blue,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 15.0,
                    ),
                    Icon(
                      Icons.arrow_forward_ios_rounded,
                      size: 15.0,
                      color: Colors.grey[400],
                    ),
                    const SizedBox(
                      width: 15.0,
                    ),
                    MouseRegion(
                      cursor: SystemMouseCursors.click,
                      child: GestureDetector(
                        behavior: HitTestBehavior.opaque,
                        onTap: () {
                          context.vRouter.to('/authenticated/integrations');
                        },
                        child: const Text(
                          'Patient Tools',
                          style: TextStyle(
                            fontSize: 15.0,
                            color: Colors.blue,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 15.0,
                    ),
                    Icon(
                      Icons.arrow_forward_ios_rounded,
                      size: 15.0,
                      color: Colors.grey[400],
                    ),
                    const SizedBox(
                      width: 15.0,
                    ),
                    Text(
                      appInfo['name']!.toString(),
                      style: const TextStyle(
                        fontSize: 15.0,
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 50.0,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20.0),
                      border: Border.all(
                        color: ConstColors.lightDivider,
                      ),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20.0),
                      child: SizedBox.fromSize(
                        size: const Size.fromRadius(65), // Image radius
                        child: Padding(
                          padding: appInfo['padding'] as EdgeInsetsGeometry,
                          child: Image.asset(
                            'assets/images/logos/$param-logo-1.${param == 'yapi' ? 'webp' : 'png'}',
                            width: 130,
                            height: 130,
                            fit: appInfo['fit']! as BoxFit,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 30.0,
                  ),
                  SizedBox(
                    width: 500.0,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 8.0,
                            bottom: 4.0,
                          ),
                          child: Text(
                            appInfo['name']!.toString(),
                            style: const TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            FiveStars(
                              count: appInfo['starCount'] as int,
                            ),
                            Text(
                              ((appInfo['starCount'] as int) * 17).toString(),
                              style: const TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 13.0,
                              ),
                            ),
                          ],
                        ),
                        MouseRegion(
                          cursor: SystemMouseCursors.click,
                          child: GestureDetector(
                            behavior: HitTestBehavior.opaque,
                            onTap: () async {
                              final url = appInfo['website'] as String;
                              if (await canLaunch(url)) {
                                await launch(
                                  url,
                                  forceSafariVC: false,
                                );
                              }
                            },
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 8.0),
                              child: Text(
                                appInfo['website'] as String,
                                style: const TextStyle(
                                  color: Colors.blue,
                                  fontSize: 14.0,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Text(
                          appInfo['description'] as String,
                          style: const TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
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
                          builder: (context) => AlertDialog(
                            content: Column(
                              children: [
                                Text('Connect account clicked'),
                                MouseRegion(
                                  cursor: SystemMouseCursors.click,
                                  child: GestureDetector(
                                    behavior: HitTestBehavior.opaque,
                                    onTap: () {
                                      Provider.of<IntegrationsProvider>(
                                        context,
                                        listen: false,
                                      ).addIntegration(
                                        Integration(
                                          name: 'Yapi',
                                        ),
                                      );
                                      setState(() {});
                                      context.vRouter.pop();
                                      context.vRouter.to('/authenticated/yapi');
                                    },
                                    child: Container(
                                      width: 140.0,
                                      height: 40.0,
                                      margin: const EdgeInsets.only(
                                        bottom: 12.0,
                                        top: 30.0,
                                      ),
                                      decoration: BoxDecoration(
                                        color: ConstColors.highlightGreen,
                                        border: Border.all(
                                          color: ConstColors.divider,
                                        ),
                                      ),
                                      child: const Center(
                                        child: Text(
                                          'Connect Account',
                                          style: TextStyle(
                                            fontSize: 15.0,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                      child: Container(
                        width: 140.0,
                        height: 40.0,
                        margin: const EdgeInsets.only(
                          bottom: 12.0,
                          top: 30.0,
                        ),
                        decoration: BoxDecoration(
                          color: ConstColors.highlightGreen,
                          border: Border.all(
                            color: ConstColors.divider,
                          ),
                        ),
                        child: const Center(
                          child: Text(
                            'Connect Account',
                            style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 50.0,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 200.0,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Integration Quick Look',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 14.0,
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(vertical: 20.0),
                          child: Divider(
                            height: 1.0,
                            color: ConstColors.divider,
                          ),
                        ),
                        Row(
                          children: [
                            Image.asset(
                              'assets/images/online-checkmark.png',
                              width: 20.0,
                            ),
                            const SizedBox(
                              width: 4.0,
                            ),
                            const Text(
                              'Single Sign-on (RPASS)',
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 14.0,
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 50.0),
                          child: Text(
                            'Overall rating: ${(appInfo['starCount'] as int).toString()}.0',
                            style: const TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 14.0,
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(vertical: 20.0),
                          child: Divider(
                            height: 1.0,
                            color: ConstColors.divider,
                          ),
                        ),
                        Column(
                          children:
                              _buildOverallStars(appInfo['starCount'] as int),
                        ),
                        MouseRegion(
                          cursor: SystemMouseCursors.click,
                          child: GestureDetector(
                            behavior: HitTestBehavior.opaque,
                            onTap: () {
                              showDialog<void>(
                                context: context,
                                builder: (context) => const AlertDialog(
                                  content: Text('Write a review clicked'),
                                ),
                              );
                            },
                            child: const Padding(
                              padding: EdgeInsets.only(top: 20.0),
                              child: Text(
                                'Write a review',
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14.0,
                                  color: Colors.blue,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: 1.0,
                          width: 87.0,
                          color: Colors.blue,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 40.0,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Column(
                            children: [
                              const MouseRegion(
                                cursor: SystemMouseCursors.click,
                                child: Padding(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 8.0,
                                    vertical: 4.0,
                                  ),
                                  child: Text(
                                    'Integration Description',
                                    style: TextStyle(
                                      fontSize: 15.0,
                                      fontWeight: FontWeight.w600,
                                      color: ConstColors.highlightGreen,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                height: 2.0,
                                width: 164.0,
                                color: ConstColors.highlightGreen,
                              ),
                            ],
                          ),
                          const MouseRegion(
                            cursor: SystemMouseCursors.click,
                            child: Padding(
                              padding: EdgeInsets.only(
                                left: 8.0,
                                bottom: 4.0,
                              ),
                              child: Text(
                                'Product Description',
                                style: TextStyle(
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.w400,
                                  color: ConstColors.highlightGreen,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        height: 1.0,
                        width: 660,
                        color: ConstColors.divider,
                      ),
                      Container(
                        height: 144.0,
                        width: 660,
                        margin: const EdgeInsets.only(
                          top: 20.0,
                          bottom: 12.0,
                        ),
                        padding: const EdgeInsets.symmetric(
                          vertical: 15.0,
                          horizontal: 30.0,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            color: ConstColors.divider,
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "${appInfo['name'].toString()} integrates with ReferCare for automated access to your account. ReferCare's integration with ${appInfo['name'].toString()} includes the following capabilities:",
                              style: const TextStyle(
                                fontSize: 15.0,
                                fontWeight: FontWeight.w600,
                                color: ConstColors.textGreen,
                              ),
                            ),
                            const SizedBox(
                              height: 15.0,
                            ),
                            Text(
                              '-- ${appInfo['name'].toString()} Single Sign-on RPass',
                              style: const TextStyle(
                                fontSize: 15.0,
                                fontWeight: FontWeight.w600,
                                color: ConstColors.textGreen,
                              ),
                            ),
                            const SizedBox(
                              height: 5.0,
                            ),
                            Container(
                              height: 1.0,
                              color: ConstColors.divider,
                            ),
                            const SizedBox(
                              height: 15.0,
                            ),
                            MouseRegion(
                              cursor: SystemMouseCursors.click,
                              child: GestureDetector(
                                behavior: HitTestBehavior.opaque,
                                onTap: () {
                                  showDialog<void>(
                                    context: context,
                                    builder: (context) => const AlertDialog(
                                      content: Text('Expand clicked'),
                                    ),
                                  );
                                },
                                child: const Center(
                                  child: Text(
                                    'Expand',
                                    style: TextStyle(
                                      fontSize: 15.0,
                                      fontWeight: FontWeight.w700,
                                      color: ConstColors.textGreen,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
