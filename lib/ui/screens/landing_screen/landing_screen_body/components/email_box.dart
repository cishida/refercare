// import 'package:flutter/material.dart';
// import 'package:refercare/core/_constants/_colors.dart';
// import 'package:refercare/core/_constants/_strings.dart';
// import 'package:refercare/ui/screens/landing_screen/landing_screen_body/components/subscribe_button.dart';

// class EmailBox extends StatelessWidget {
//   const EmailBox({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.only(left: 4.0, right: 74, top: 10, bottom: 40),
//       child: Container(
//         height: 60,
//         width: 800,
//         decoration: BoxDecoration(
//           color: ConstColors.white1,
//           borderRadius: BorderRadius.circular(20),
//           boxShadow: const [
//             BoxShadow(
//               color: Colors.black12,
//               offset: Offset(0, 8),
//               blurRadius: 8,
//             )
//           ],
//         ),
//         child: Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 20),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: const <Widget>[
//               Expanded(
//                 flex: 8,
//                 child: TextField(
//                   decoration: InputDecoration(
//                     border: InputBorder.none,
//                     hintText: Strings.emailHint,
//                   ),
//                 ),
//               ),
//               Expanded(
//                 flex: 2,
//                 child: SubscribeButton(),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
