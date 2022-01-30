import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:refercare/core/_constants/_colors.dart';
import 'package:refercare/core/_constants/_values.dart';
import 'package:vrouter/vrouter.dart';

class IntegrationsScreen extends StatefulWidget {
  const IntegrationsScreen({Key? key}) : super(key: key);

  @override
  _IntegrationsScreenState createState() => _IntegrationsScreenState();
}

class _IntegrationsScreenState extends State<IntegrationsScreen> {
  String _selectedNavItem = 'All';

  List<Widget> _buildPlaceholderApps() {
    final List<Widget> widgets = [];

    if (_selectedNavItem != 'All') {
      String key = 'revenue-well';
      Map<String, dynamic> value = Values.placeholderAppInfos[key]!;
      widgets.add(
        IntegrationsItem(
          imageName:
              'assets/images/logos/$key-logo-1.${key == 'yapi' ? 'webp' : 'png'}',
          title: value['name'].toString(),
          description: value['description'].toString(),
          category: value['category'].toString(),
          padding: value['padding'] as EdgeInsets,
          fit: value['fit'] as BoxFit,
          starCount: value['starCount'] as int,
        ),
      );
      key = 'yapi';
      value = Values.placeholderAppInfos[key]!;
      widgets.add(
        IntegrationsItem(
          imageName:
              'assets/images/logos/$key-logo-1.${key == 'yapi' ? 'webp' : 'png'}',
          title: value['name'].toString(),
          description: value['description'].toString(),
          category: value['category'].toString(),
          padding: value['padding'] as EdgeInsets,
          fit: value['fit'] as BoxFit,
          starCount: value['starCount'] as int,
        ),
      );
      key = 'medchat';
      value = Values.placeholderAppInfos[key]!;
      widgets.add(
        IntegrationsItem(
          imageName:
              'assets/images/logos/$key-logo-1.${key == 'yapi' ? 'webp' : 'png'}',
          title: value['name'].toString(),
          description: value['description'].toString(),
          category: value['category'].toString(),
          padding: value['padding'] as EdgeInsets,
          fit: value['fit'] as BoxFit,
          starCount: value['starCount'] as int,
        ),
      );
      key = 'weave';
      value = Values.placeholderAppInfos[key]!;
      widgets.add(
        IntegrationsItem(
          imageName:
              'assets/images/logos/$key-logo-1.${key == 'yapi' ? 'webp' : 'png'}',
          title: value['name'].toString(),
          description: value['description'].toString(),
          category: value['category'].toString(),
          padding: value['padding'] as EdgeInsets,
          fit: value['fit'] as BoxFit,
          starCount: value['starCount'] as int,
        ),
      );
      key = 'zocdoc';
      value = Values.placeholderAppInfos[key]!;
      widgets.add(
        IntegrationsItem(
          imageName:
              'assets/images/logos/$key-logo-1.${key == 'yapi' ? 'webp' : 'png'}',
          title: value['name'].toString(),
          description: value['description'].toString(),
          category: value['category'].toString(),
          padding: value['padding'] as EdgeInsets,
          fit: value['fit'] as BoxFit,
          starCount: value['starCount'] as int,
        ),
      );

      key = 'adit';
      value = Values.placeholderAppInfos[key]!;
      widgets.add(
        IntegrationsItem(
          imageName:
              'assets/images/logos/$key-logo-1.${key == 'yapi' ? 'webp' : 'png'}',
          title: value['name'].toString(),
          description: value['description'].toString(),
          category: value['category'].toString(),
          padding: value['padding'] as EdgeInsets,
          fit: value['fit'] as BoxFit,
          starCount: value['starCount'] as int,
        ),
      );

      return widgets;
    }

    Values.placeholderAppInfos.forEach((key, value) {
      widgets.add(
        IntegrationsItem(
          imageName:
              'assets/images/logos/$key-logo-1.${key == 'yapi' ? 'webp' : 'png'}',
          title: value['name'].toString(),
          description: value['description'].toString(),
          category: value['category'].toString(),
          padding: value['padding'] as EdgeInsets,
          fit: value['fit'] as BoxFit,
          starCount: value['starCount'] as int,
        ),
      );
    });

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
                      child: AnimationLimiter(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: AnimationConfiguration.toStaggeredList(
                            duration: const Duration(milliseconds: 250),
                            childAnimationBuilder: (widget) => SlideAnimation(
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
              // Container(
              //   height: 170.0,
              //   margin: const EdgeInsets.only(
              //     top: 50.0,
              //     bottom: 12.0,
              //   ),
              //   decoration: BoxDecoration(
              //     color: ConstColors.lightGreen,
              //     border: Border.all(
              //       color: ConstColors.lightDivider,
              //     ),
              //     borderRadius: BorderRadius.circular(12.0),
              //     boxShadow: [
              //       BoxShadow(
              //         color: Colors.grey.withOpacity(0.3),
              //         spreadRadius: .5,
              //         blurRadius: .5,
              //         offset: const Offset(
              //           0,
              //           1,
              //         ), // changes position of shadow
              //       ),
              //     ],
              //   ),
              //   child: Column(
              //     children: [
              //       Padding(
              //         padding: const EdgeInsets.symmetric(
              //           horizontal: 30.0,
              //           vertical: 20.0,
              //         ),
              //         child: Row(
              //           children: [
              //             Column(
              //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //               crossAxisAlignment: CrossAxisAlignment.start,
              //               children: [
              //                 const Text(
              //                   'Eliminate threats, before they happen',
              //                   style: TextStyle(
              //                     fontSize: 20.0,
              //                     fontWeight: FontWeight.w600,
              //                     color: ConstColors.textGreen,
              //                   ),
              //                 ),
              //                 const SizedBox(
              //                   height: 8.0,
              //                 ),
              //                 const Text(
              //                   'Get the tools you need to make sure your team is secure',
              //                   style: TextStyle(
              //                     fontSize: 16.0,
              //                     fontWeight: FontWeight.w400,
              //                     color: ConstColors.textGreen,
              //                   ),
              //                 ),
              //                 MouseRegion(
              //                   cursor: SystemMouseCursors.click,
              //                   child: GestureDetector(
              //                     behavior: HitTestBehavior.opaque,
              //                     onTap: () {
              //                       showDialog<void>(
              //                         context: context,
              //                         builder: (context) => const AlertDialog(
              //                           content: Text('View all clicked'),
              //                         ),
              //                       );
              //                     },
              //                     child: Container(
              //                       width: 70.0,
              //                       height: 30.0,
              //                       margin: const EdgeInsets.only(
              //                         top: 42.0,
              //                       ),
              //                       decoration: BoxDecoration(
              //                         color: Colors.white,
              //                         border: Border.all(
              //                           color: Colors.grey,
              //                         ),
              //                       ),
              //                       child: Padding(
              //                         padding: const EdgeInsets.symmetric(
              //                             horizontal: 8.0),
              //                         child: Row(
              //                           children: const [
              //                             Text(
              //                               'View All',
              //                               style: TextStyle(
              //                                 fontSize: 15.0,
              //                                 fontWeight: FontWeight.w600,
              //                                 color: ConstColors.navGray,
              //                               ),
              //                             ),
              //                           ],
              //                         ),
              //                       ),
              //                     ),
              //                   ),
              //                 ),
              //               ],
              //             ),
              //             const Spacer(),
              //           ],
              //         ),
              //       ),
              //     ],
              //   ),
              // ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 25.0,
                      bottom: 20.0,
                    ),
                    child: Text(
                      _selectedNavItem.toString(),
                      style: const TextStyle(
                        color: ConstColors.textGreen,
                        fontSize: 32.0,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  // const Spacer(),
                  // MouseRegion(
                  //   cursor: SystemMouseCursors.click,
                  //   child: GestureDetector(
                  //     behavior: HitTestBehavior.opaque,
                  //     onTap: () {
                  //       showDialog<void>(
                  //         context: context,
                  //         builder: (context) => const AlertDialog(
                  //           content: Text('See all clicked'),
                  //         ),
                  //       );
                  //     },
                  //     child: Row(
                  //       children: const [
                  //         Padding(
                  //           padding: EdgeInsets.only(top: 12.0),
                  //           child: Text(
                  //             'See All',
                  //             style: TextStyle(
                  //               color: ConstColors.textGreen,
                  //               fontSize: 18.0,
                  //               fontWeight: FontWeight.w400,
                  //             ),
                  //           ),
                  //         ),
                  //         Padding(
                  //           padding: EdgeInsets.only(
                  //             top: 11.0,
                  //             left: 4.0,
                  //           ),
                  //           child: Icon(
                  //             Icons.arrow_forward,
                  //             size: 16.0,
                  //           ),
                  //         ),
                  //       ],
                  //     ),
                  //   ),
                  // ),
                ],
              ),
              const Divider(
                height: 1.0,
                color: ConstColors.divider,
              ),
              const SizedBox(
                height: 20.0,
              ),
              Container(
                height: 1800.0,
                margin: const EdgeInsets.only(right: 95.0),
                child: GridView.count(
                  // shrinkWrap: true,
                  // physics: NeverScrollableScrollPhysics(),
                  crossAxisCount: 3,
                  children: _buildPlaceholderApps(),
                ),
              ),
              // Row(
              //   children: _buildPlaceholderApps(),
              // ),
            ],
          ),
        ),
      ],
    );
  }
}

class IntegrationsItem extends StatelessWidget {
  IntegrationsItem({
    Key? key,
    required this.imageName,
    required this.title,
    required this.description,
    required this.category,
    this.fit = BoxFit.cover,
    this.padding = EdgeInsets.zero,
    this.starCount = 0,
  }) : super(key: key);

  final String imageName;
  final String title;
  final String description;
  final String category;
  final BoxFit fit;
  final EdgeInsets padding;
  final int starCount;

  List<Icon> _icons = [
    const Icon(
      Icons.lightbulb_outline,
      color: ConstColors.highlightGreen,
    ),
    Icon(
      Icons.bolt_outlined,
      color: Colors.yellow[900],
    ),
    const Icon(
      Icons.connect_without_contact_outlined,
      color: Colors.blue,
    ),
  ];

  List<Widget> _buildFeatures() {
    final List<Widget> widgets = [];

    final random = Random();

    final int num = random.nextInt(3) + 1;

    for (var i = 0; i < num; i++) {
      widgets.add(
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: CircleAvatar(
            radius: 16.0,
            backgroundColor: ConstColors.lightGray,
            child: _icons[i],
          ),
        ),
      );
    }

    return widgets;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        right: 20.0,
        bottom: 20.0,
      ),
      decoration: BoxDecoration(
        border: Border.all(
          color: ConstColors.divider,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                      size: const Size.fromRadius(50), // Image radius
                      child: Padding(
                        padding: padding,
                        child: Image.asset(
                          imageName,
                          width: 100,
                          height: 100,
                          fit: fit,
                        ),
                      ),
                    ),
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: _buildFeatures(),
                ),
              ],
            ),
            const SizedBox(
              height: 12.0,
            ),
            Text(
              title,
              style: const TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(
              height: 8.0,
            ),
            FiveStars(
              count: starCount,
            ),
            const SizedBox(height: 15.0),
            Text(
              category,
              style: const TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(
              height: 4.0,
            ),
            Text(
              description,
              style: const TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.w400,
              ),
            ),
            const Spacer(),
            MouseRegion(
              cursor: SystemMouseCursors.click,
              child: GestureDetector(
                onTap: () {
                  context.vRouter.to(
                    '/authenticated/integrations/${title.replaceAll(' ', '-').toLowerCase()}',
                  );
                },
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
          ],
        ),
      ),
    );
  }
}

class FiveStars extends StatelessWidget {
  const FiveStars({
    Key? key,
    this.count = 0,
  }) : super(key: key);

  final int count;

  List<Widget> _buildStars() {
    final List<Widget> widgets = [];

    for (var i = 0; i < 5; i++) {
      widgets.add(
        Icon(
          i < count ? Icons.star : Icons.star_border,
          size: 16.0,
        ),
      );
    }

    return widgets;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: _buildStars(),
    );
  }
}
