// import 'package:flutter/material.dart';
// import 'package:refercare/core/_constants/_colors.dart';
// import 'package:refercare/core/_constants/_strings.dart';
// import 'package:refercare/ui/screens/landing_screen/landing_screen_body/components/email_box.dart';

// class LandingScreenBody extends StatelessWidget {
//   const LandingScreenBody({
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: 600,
//       width: MediaQuery.of(context).size.width,
//       child: Stack(
//         fit: StackFit.expand,
//         children: <Widget>[
//           // addBackground(),
//           addWelcomeText(),
//         ],
//       ),
//     );
//   }

//   //Adds background Image
//   Widget addBackground() {
//     return FractionallySizedBox(
//       alignment: Alignment.centerRight, //to keep images aligned to right
//       widthFactor: .4,
//       child: Image.network(
//         'https://raw.githubusercontent.com/biocarl/img/master/drawing_animation/met_dynamic_1.gif',
//         scale: .75,
//         fit: BoxFit.contain,
//       ),
//     );
//   }

//   //Adds welcome text
//   Widget addWelcomeText() {
//     return FractionallySizedBox(
//       alignment: Alignment.centerLeft, //text aligned to left side
//       // widthFactor: .6, //covers about half of the screen
//       child: Padding(
//         padding: const EdgeInsets.only(left: 48),
//         child: Column(
//           // crossAxisAlignment: CrossAxisAlignment.start,
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             RichText(
//               text: const TextSpan(
//                 text: 'Prefix ',
//                 style: TextStyle(fontSize: 60, color: ConstColors.white2),
//                 children: [
//                   TextSpan(
//                     text: Strings.landingTitle,
//                     style: TextStyle(
//                       fontSize: 60,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.white,
//                     ),
//                   )
//                 ],
//               ),
//             ),
//             const Padding(
//               padding: EdgeInsets.only(
//                 left: 12.0,
//                 top: 20,
//               ),
//               child: Text(
//                 Strings.landingSubtitle,
//               ),
//             ),
//             const SizedBox(
//               height: 40,
//             ), //Give some spacing
//             const Center(
//               child: EmailBox(),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
