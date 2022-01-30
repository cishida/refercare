import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:refercare/core/_constants/_colors.dart';
import 'package:refercare/core/_constants/_values.dart';
import 'package:refercare/core/providers/integrations_provider.dart';
import 'package:refercare/ui/screens/authenticated/nav_row/components/nav_item.dart';

class NavRow extends StatelessWidget {
  const NavRow({
    Key? key,
  }) : super(key: key);

  List<Widget> _buildNavItems() {
    final List<Widget> widgets = [];

    for (final element in Values.routes) {
      widgets.add(
        NavItem(
          title: element['title'].toString(),
          routeName: '/authenticated/${element['routeName'].toString()}',
          secondaryRouteName: element['secondaryRouteName'].toString(),
        ),
      );
    }

    return widgets;
  }

  List<Widget> _buildNavIntegrations(
    IntegrationsProvider integrationsProvider,
  ) {
    final List<Widget> widgets = [];

    final integrations = integrationsProvider.integrations;
    if (integrations.length == 0) {
      return widgets;
    }

    widgets.add(
      Container(
        height: 20.0,
        margin: const EdgeInsets.only(
          right: 30.0,
        ),
        child: const VerticalDivider(
          width: 1.0,
          thickness: 1.0,
          color: ConstColors.divider,
        ),
      ),
    );

    for (final integration in integrations) {
      widgets.add(
        NavItem(
          title: integration.name,
          routeName: '/authenticated/${integration.name.toLowerCase()}',
        ),
      );
    }

    return widgets;
  }

  @override
  Widget build(BuildContext context) {
    IntegrationsProvider integrationsProvider =
        Provider.of<IntegrationsProvider>(
      context,
    );

    return Container(
      color: Colors.transparent,
      height: Values.navHeight,
      child: Column(
        children: [
          SizedBox(
            width: Values.screenWidth,
            child: ClipRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 8.0,
                    bottom: 10.0,
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          left: Values.screenMargin,
                        ),
                        child: Row(
                          children: _buildNavItems(),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 30.0,
                        ),
                        child: Row(
                          children: _buildNavIntegrations(
                            integrationsProvider,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          const Divider(
            height: 1.0,
            color: ConstColors.divider,
          ),
        ],
      ),
    );
  }
}
