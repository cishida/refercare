import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:refercare/core/_constants/_values.dart';
import 'package:refercare/core/services/auth/firebase_auth_service.dart';
import 'package:refercare/theme.dart';
import 'package:refercare/ui/screens/auth/auth_widget.dart';
import 'package:refercare/ui/screens/auth/auth_widget_builder.dart';
import 'package:refercare/ui/screens/authenticated/authenticated.dart';
import 'package:refercare/ui/screens/authenticated/home/home_screen.dart';
import 'package:vrouter/vrouter.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
  runApp(
    ReferCare(),
  );
}

class ReferCare extends StatelessWidget {
  ReferCare({Key? key}) : super(key: key);

  final Future<FirebaseApp> _initialization = Firebase.initializeApp();

  List<VWidget> _buildNavWidgets() {
    final List<VWidget> widgets = [];

    widgets.add(
      VWidget(
        path: null,
        widget: const HomeScreen(),
      ),
    );

    Values.navWidgets.forEach((key, value) {
      widgets.add(
        VWidget(
          path: key.toLowerCase(),
          widget: value,
        ),
      );
    });

    return widgets;
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      // Initialize FlutterFire:
      future: _initialization,
      builder: (context, snapshot) {
        // Check for errors
        if (snapshot.hasError) {
          debugPrint('Initialization error with firebase');
        }

        // Once complete, show your application
        if (snapshot.connectionState == ConnectionState.done) {
          return MultiProvider(
            providers: [
              Provider(
                create: (_) => FirebaseAuthService(),
              ),
              // StreamProvider<User?>(
              //   create: (context) =>
              //       context.read<FirebaseAuthService>().onAuthStateChanged,
              //   initialData: null,
              // ),
            ],
            child: AuthWidgetBuilder(
              builder: (
                BuildContext context,
                AsyncSnapshot<User?> userSnapshot,
              ) {
                return VRouter(
                  theme: theme(),
                  mode: VRouterMode.history,
                  buildTransition: (animation1, _, child) {
                    return FadeTransition(opacity: animation1, child: child);
                  },
                  transitionDuration: const Duration(milliseconds: 50),
                  routes: [
                    VWidget(
                      path: '/',
                      widget: AuthWidget(
                        userSnapshot: userSnapshot,
                      ),
                      stackedRoutes: [
                        VNester(
                          path: '/authenticated',
                          widgetBuilder: (child) {
                            return Authenticated(
                              child: child,
                            );
                          }, // Child is the widget from nestedRoutes
                          nestedRoutes: _buildNavWidgets(),
                        ),
                        // VWidget(
                        //   path: '/home',
                        //   widget: const HomeScreen(),
                        // ),
                        // VWidget(
                        //   path: '/landing',
                        //   widget: const LandingScreen(),
                        // ),
                        // VWidget(
                        //   path: '/login',
                        //   widget: const LoginScreen(),
                        // ),
                        // VWidget(
                        //   path: '/how_it_works',
                        //   widget: const HowItWorksScreen(),
                        // ),
                        // VWidget(
                        //   path: '/videos',
                        //   widget: const VideosScreen(),
                        // ),
                        // VWidget(
                        //   path: '/integrations',
                        //   widget: const IntegrationsScreen(),
                        // ),
                        // VWidget(
                        //   path: '/pricing',
                        //   widget: const PricingScreen(),
                        // ),
                        // VWidget(
                        //   path: '/home',
                        //   widget: const HomeScreen(),
                        // ),
                        // VGuard protects the routes in stackedRoutes
                        // VGuard(
                        //   beforeEnter: (vRedirector) async {
                        //     // if (context.read<User?>() == null) {

                        //     // }
                        //     if (userSnapshot.connectionState !=
                        //             ConnectionState.active ||
                        //         !userSnapshot.hasData ||
                        //         userSnapshot.data!.uid.isEmpty) {
                        //       vRedirector.to('/landing');
                        //     }
                        //   },
                        //   // beforeEnter: (vRedirector) => authenticationCheck(
                        //   //   context,
                        //   //   vRedirector: vRedirector,
                        //   // ),
                        //   stackedRoutes: [
                        //     VWidget(
                        //       path: '/home',
                        //       widget: const HomeScreen(),
                        //     ),
                        //   ],
                        // ),
                        // // :_ is a path parameters named _
                        // //               // .+ is a regexp to match any path
                        // VRouteRedirector(path: ':_(.+)', redirectTo: '/home')
                      ],
                    ),
                    // .+ is a regexp to match any path
                    VRouteRedirector(
                      path: ':_(.+)',
                      redirectTo: '/authenticated',
                    ),
                  ],
                );
                // return MaterialApp(
                //   title: 'ReferCare',
                //   home: AuthWidget(userSnapshot: userSnapshot),
                // );
              },
            ),
          );
        }

        // Otherwise, show something whilst waiting for initialization to complete
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );

    // return MultiProvider(
    //   providers: [
    //     Provider(
    //       create: (_) => FirebaseAuthService(),
    //     ),
    //     StreamProvider<UserProfile?>(
    //       create: (context) =>
    //           context.read<FirebaseAuthService>().onAuthStateChanged,
    //       initialData: null,
    //     ),
    //   ],
    //   child: Consumer<UserProfile?>(
    //     builder: (context, userProfile, child) {
    //       print(userProfile);
    //       return VRouter(
    //         mode: VRouterMode.history,
    //         buildTransition: (animation1, _, child) {
    //           return FadeTransition(opacity: animation1, child: child);
    //         },
    //         transitionDuration: const Duration(milliseconds: 200),
    //         routes: [
    //           VWidget(
    //             path: '/',
    //             widget: const LandingScreen(),
    //             stackedRoutes: [
    //               VWidget(
    //                 path: '/login',
    //                 widget: const LoginScreen(),
    //               ),
    //               // VWidget(
    //               //   path: '/how_it_works',
    //               //   widget: const HowItWorksScreen(),
    //               // ),
    //               // VWidget(
    //               //   path: '/videos',
    //               //   widget: const VideosScreen(),
    //               // ),
    //               // VWidget(
    //               //   path: '/integrations',
    //               //   widget: const IntegrationsScreen(),
    //               // ),
    //               // VWidget(
    //               //   path: '/pricing',
    //               //   widget: const PricingScreen(),
    //               // ),
    //               // VGuard protects the routes in stackedRoutes
    //               VGuard(
    //                 // beforeEnter: (vRedirector) async =>
    //                 //     userProfile != null ? null : vRedirector.to('/login'),
    //                 beforeEnter: (vRedirector) =>
    //                     authenticationCheck(context, vRedirector: vRedirector),
    //                 stackedRoutes: [
    //                   VWidget(
    //                     path: '/home',
    //                     widget: const HomeScreen(),
    //                   ),
    //                 ],
    //               ),

    //               // :_ is a path parameters named _
    //               // .+ is a regexp to match any path
    //               VRouteRedirector(path: ':_(.+)', redirectTo: '/home')
    //             ],
    //           ),
    //         ],
    //       );
    //     },
    //   ),
    //   // MaterialApp(
    //   //   routes: {
    //   //     '/': (context) => const LandingScreen(),
    //   //     '/home': (context) => const HomeScreen(),
    //   //     '/login': (context) => const LoginScreen(),
    //   //   },
    //   // ),
    // );
  }

  // Future<void> authenticationCheck(
  //   BuildContext context, {
  //   required VRedirector vRedirector,
  // }) async {
  //   if (context.read<UserProfile?>() == null) {
  //     vRedirector.to(
  //       '/landing',
  //       queryParameters: {'redirectedFrom': '${vRedirector.toUrl}'},
  //     );
  //   }
  // }
}

// abstract class BaseWidget extends StatelessWidget {
//   const BaseWidget({
//     Key? key,
//   }) : super(key: key);

//   String get title;
//   String get buttonText;
//   String get to;

//   @override
//   Widget build(BuildContext context) {
//     return Material(
//       child: Column(
//         children: [
//           // const LandingScreenHeader(),
//           Center(
//             child: Column(
//               mainAxisSize: MainAxisSize.min,
//               children: [
//                 Text(title),
//                 const SizedBox(height: 50),
//                 ElevatedButton(
//                   onPressed: () => context.vRouter.to(to),
//                   child: Text(buttonText),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class HowItWorksScreen extends BaseWidget {
//   const HowItWorksScreen({Key? key}) : super(key: key);

//   @override
//   String get title => 'How It Works';
//   @override
//   String get buttonText => 'Landing';
//   @override
//   String get to => '/';
// }

// class VideosScreen extends BaseWidget {
//   const VideosScreen({Key? key}) : super(key: key);

//   @override
//   String get title => 'Videos';
//   @override
//   String get buttonText => 'Landing';
//   @override
//   String get to => '/';
// }

// class IntegrationsScreen extends BaseWidget {
//   const IntegrationsScreen({Key? key}) : super(key: key);

//   @override
//   String get title => 'Integrations';
//   @override
//   String get buttonText => 'Landing';
//   @override
//   String get to => '/';
// }

// class PricingScreen extends BaseWidget {
//   const PricingScreen({Key? key}) : super(key: key);

//   @override
//   String get title => 'Pricing';
//   @override
//   String get buttonText => 'Landing';
//   @override
//   String get to => '/';
// }
