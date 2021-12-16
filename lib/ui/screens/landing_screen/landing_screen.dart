// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'package:refercare/core/_constants/_colors.dart';
// import 'package:refercare/core/_utils/context_utils.dart';
// import 'package:refercare/ui/screens/landing_screen/header/landing_screen_header.dart';
// import 'package:refercare/ui/screens/landing_screen/landing_screen_body/landing_screen_body.dart';

// class LandingScreen extends StatelessWidget {
//   const LandingScreen({
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.transparent,
//       body: SingleChildScrollView(
//         physics: const AlwaysScrollableScrollPhysics(),
//         child: Column(
//           children: [
//             SizedBox(
//               height: getSize(context).height - 250,
//               width: getSize(context).width,
//               child: Stack(
//                 children: [
//                   ClipPath(
//                     clipper: CustomClipPath(),
//                     child: Container(
//                       width: MediaQuery.of(context).size.width,
//                       color: ConstColors.primary,
//                       // decoration: BoxDecoration(
//                       //   gradient: LinearGradient(
//                       //     colors: [
//                       //       // Colors.blue2.withOpacity(.9),
//                       //       Colors.primary,
//                       //       Colors.blue3.withOpacity(.7),
//                       //     ],
//                       //   ),
//                       // ),
//                     ),
//                   ),
//                   const LandingScreenHeader(),
//                   const LandingScreenBody(),
//                 ],
//               ),
//             ),
//             const TripleBoxContainer(),
//             const SizedBox(
//               height: 400,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class CustomClipPath extends CustomClipper<Path> {
//   double radius = 10.0;
//   @override
//   Path getClip(Size size) {
//     final Path path = Path();
//     path.lineTo(size.width, 0);
//     path.lineTo(size.width, size.height * .25);
//     path.lineTo(0, size.height * .66);

//     return path;
//   }

//   @override
//   bool shouldReclip(CustomClipper<Path> oldClipper) => false;
// }

// class TripleBoxContainer extends StatelessWidget {
//   const TripleBoxContainer({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//       children: const [
//         TripleBoxItem(),
//         TripleBoxItem(),
//         TripleBoxItem(),
//       ],
//     );
//   }
// }

// class TripleBoxItem extends StatelessWidget {
//   const TripleBoxItem({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 400.0,
//       width: getSize(context).width / 4,
//       color: Colors.blue[50],
//     );
//   }
// }
