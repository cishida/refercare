import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:refercare/ui/screens/authenticated/authenticated.dart';
import 'package:refercare/ui/screens/landing_screen/landing_screen.dart';
import 'package:refercare/ui/screens/unauthenticated/unauthenticated.dart';
import 'package:vrouter/vrouter.dart';

class AuthWidget extends StatefulWidget {
  const AuthWidget({
    Key? key,
    required this.userSnapshot,
  }) : super(key: key);
  final AsyncSnapshot<User?> userSnapshot;

  @override
  State<AuthWidget> createState() => _AuthWidgetState();
}

class _AuthWidgetState extends State<AuthWidget> {
  void _handleAuthentication() {
    if (context.vRouter.path != '/') {
      return;
    }

    context.vRouter.to('/authenticated');

    // if (widget.userSnapshot.connectionState == ConnectionState.active &&
    //     widget.userSnapshot.hasData &&
    //     widget.userSnapshot.data!.uid.isNotEmpty) {
    //   context.vRouter.to('/home');
    // } else {
    //   context.vRouter.to('/landing');
    // }
  }

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 200), () {
      _handleAuthentication();
    });
  }

  @override
  Widget build(BuildContext context) {
    // if (widget.userSnapshot.connectionState == ConnectionState.active) {
    //   return widget.userSnapshot.hasData && widget.userSnapshot.data!.uid.isNotEmpty
    //       ? const Authenticated()
    //       : const Unauthenticated();
    // }

    return Container(
      color: Colors.white,
      child: const Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
