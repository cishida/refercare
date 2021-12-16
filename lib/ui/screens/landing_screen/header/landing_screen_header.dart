import 'package:flutter/material.dart';
import 'package:refercare/core/_constants/_colors.dart';
import 'package:refercare/core/_constants/_strings.dart';
import 'package:vrouter/vrouter.dart';

class LandingScreenHeader extends StatelessWidget {
  const LandingScreenHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 45,
        vertical: 38,
      ),
      child: buildHeader(context),
    );
  }

  Widget buildHeader(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        buildLogo(),
        buildHeaderLinks(context),
      ],
    );
  }

  //Builds navigation links at the right top of landing page
  Widget buildHeaderLinks(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: getLinksListing(context)
        ..add(
          buildLoginButton(context),
        ),
    );
  }

  //Builds navigation list for header
  List<Widget> getLinksListing(BuildContext context) {
    final links = [
      'Home',
      'How it works',
      'Videos',
      'Integrations',
      'Pricing',
    ];
    return links.map((link) {
      return Padding(
        padding: const EdgeInsets.only(left: 18),
        child: GestureDetector(
          onTap: () {
            context.vRouter.to('/${link.toLowerCase().replaceAll(' ', '_')}');
          },
          child: Text(
            link,
            style: const TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.normal,
              color: Colors.white,
            ),
          ),
        ),
      );
    }).toList();
  }

  //Builds and decorates login button
  Widget buildLoginButton(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {
          context.vRouter.to('/login');
        },
        child: Container(
          margin: const EdgeInsets.only(left: 20),
          width: 120,
          height: 40,
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              colors: [ConstColors.blue1, ConstColors.blue2],
              begin: Alignment.bottomRight,
              end: Alignment.topLeft,
            ),
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: ConstColors.blue3.withOpacity(0.3),
                offset: const Offset(0, 8), //Shadow starts at x=0, y=8
                blurRadius: 8,
              )
            ],
          ),
          child: const Material(
            color: Colors.transparent,
            child: Center(
              child: Text(
                Strings.loginButton,
                style: TextStyle(
                  color: ConstColors.white1,
                  fontSize: 18,
                  letterSpacing: 1,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  //Builds rectangle with circular corners and Text on it and next to it as title
  Widget buildLogo() {
    return Row(
      children: <Widget>[
        Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
            gradient: const LinearGradient(
              colors: [ConstColors.white1, ConstColors.blue2],
              begin: Alignment.bottomRight,
              end: Alignment.topLeft,
            ),
          ),
          child: const Center(
            child: Text(
              Strings.logoTitle,
              style: TextStyle(
                fontSize: 30,
                color: ConstColors.white1,
              ),
            ),
          ),
        ),
        //give some space between logo box and title
        const SizedBox(
          width: 16,
        ),
        const Text(
          Strings.appTitle,
          style: TextStyle(
            fontSize: 26,
            color: Colors.white,
          ),
        )
      ],
    );
  }
}
