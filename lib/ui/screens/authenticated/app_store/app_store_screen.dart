import 'package:flutter/material.dart';
import 'package:refercare/core/_constants/_colors.dart';
import 'package:refercare/core/_constants/_values.dart';
import 'package:vrouter/vrouter.dart';

class AppStoreScreen extends StatefulWidget {
  const AppStoreScreen({Key? key}) : super(key: key);

  @override
  _AppStoreScreenState createState() => _AppStoreScreenState();
}

class _AppStoreScreenState extends State<AppStoreScreen> {
  List<Widget> _buildPlaceholderApps() {
    final List<Widget> widgets = [];

    Values.placeholderAppInfos.forEach((key, value) {
      widgets.add(
        AppStoreItem(
          imageName:
              'assets/images/logos/$key-logo-1.${key == 'yapi' ? 'webp' : 'png'}',
          title: value['name'].toString(),
          padding: value['padding'] as EdgeInsets,
          fit: value['fit'] as BoxFit,
          starCount: value['starCount'] as int,
        ),
      );
    });

    return widgets;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 170.0,
          margin: const EdgeInsets.only(
            top: 50.0,
            bottom: 12.0,
          ),
          decoration: BoxDecoration(
            color: ConstColors.lightGreen,
            border: Border.all(
              color: ConstColors.lightDivider,
            ),
            borderRadius: BorderRadius.circular(12.0),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                spreadRadius: .5,
                blurRadius: .5,
                offset: const Offset(
                  0,
                  1,
                ), // changes position of shadow
              ),
            ],
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 30.0,
                  vertical: 20.0,
                ),
                child: Row(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Eliminate threats, before they happen',
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.w600,
                            color: ConstColors.textGreen,
                          ),
                        ),
                        const SizedBox(
                          height: 8.0,
                        ),
                        const Text(
                          'Get the tools you need to make sure your team is secure',
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.w400,
                            color: ConstColors.textGreen,
                          ),
                        ),
                        Container(
                          width: 70.0,
                          height: 30.0,
                          margin: const EdgeInsets.only(
                            top: 42.0,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                              color: Colors.grey,
                            ),
                          ),
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Row(
                              children: const [
                                Text(
                                  'View All',
                                  style: TextStyle(
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.w600,
                                    color: ConstColors.navGray,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    const Spacer(),
                  ],
                ),
              ),
            ],
          ),
        ),
        Row(
          children: const [
            Padding(
              padding: EdgeInsets.only(
                top: 40.0,
                bottom: 20.0,
              ),
              child: Text(
                'Most Popular',
                style: TextStyle(
                  color: ConstColors.textGreen,
                  fontSize: 22.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Spacer(),
            Padding(
              padding: EdgeInsets.only(top: 12.0),
              child: Text(
                'See All',
                style: TextStyle(
                  color: ConstColors.textGreen,
                  fontSize: 18.0,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 11.0,
                left: 4.0,
              ),
              child: Icon(
                Icons.arrow_forward,
                size: 16.0,
              ),
            ),
          ],
        ),
        const Divider(
          height: 1.0,
          color: ConstColors.divider,
        ),
        const SizedBox(
          height: 20.0,
        ),
        Row(
          children: _buildPlaceholderApps(),
        ),
      ],
    );
  }
}

class AppStoreItem extends StatelessWidget {
  const AppStoreItem({
    Key? key,
    required this.imageName,
    required this.title,
    this.fit = BoxFit.cover,
    this.padding = EdgeInsets.zero,
    this.starCount = 0,
  }) : super(key: key);

  final String imageName;
  final String title;
  final BoxFit fit;
  final EdgeInsets padding;
  final int starCount;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        child: InkWell(
          onTap: () {
            context.vRouter.to(
              '/authenticated/app-store/${title.replaceAll(' ', '-').toLowerCase()}',
            );
          },
          onHover: (isHovering) {},
          customBorder: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
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
                const SizedBox(
                  height: 12.0,
                ),
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(
                  height: 8.0,
                ),
                FiveStars(
                  count: starCount,
                ),
              ],
            ),
          ),
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
    List<Widget> widgets = [];

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
