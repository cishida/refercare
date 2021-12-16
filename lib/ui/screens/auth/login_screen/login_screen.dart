// import 'package:flutter/material.dart';
// import 'package:refercare/core/_constants/_colors.dart';
// import 'package:refercare/ui/screens/landing_screen/sign_up_form/sign_up_form.dart';

// class LoginScreen extends StatefulWidget {
//   const LoginScreen({Key? key}) : super(key: key);

//   @override
//   _LoginScreenState createState() => _LoginScreenState();
// }

// class _LoginScreenState extends State<LoginScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.grey[200],
//       body: Container(
//         decoration: const BoxDecoration(
//           gradient: LinearGradient(
//             colors: [
//               Colors.white1,
//               Colors.white2,
//             ],
//           ),
//         ),
//         child: const Center(
//           child: SizedBox(
//             width: 400.0,
//             child: SignUpForm(),
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:refercare/core/services/auth/firebase_auth_service.dart';
import 'package:vrouter/vrouter.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  //Controllers for e-mail and password textfields.
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  //Handling signup and signin
  bool signUp = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          OutlinedButton(
            onPressed: () async {
              await context.read<FirebaseAuthService>().signInWithGoogle();
              context.vRouter.to('/home');
            },
            child: const Text('Google Sign In'),
          ),

          //e-mail textfield
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: emailController,
              decoration: const InputDecoration(
                labelText: 'Email',
              ),
            ),
          ),

          //password textfield
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: passwordController,
              decoration: const InputDecoration(
                labelText: 'Password',
              ),
            ),
          ),

          //Sign in / Sign up button
          ElevatedButton(
            onPressed: () async {
              if (signUp) {
                //TODO: Error handling on sign up and login
                //Provider sign up method
                await context.read<FirebaseAuthService>().signUp(
                      email: emailController.text.trim(),
                      password: passwordController.text.trim(),
                    );
                context.vRouter.to('/home');
              } else {
                //Provider sign in method
                await context.read<FirebaseAuthService>().signIn(
                      email: emailController.text.trim(),
                      password: passwordController.text.trim(),
                    );

                context.vRouter.to('/home');
                //   context.vRouter.queryParameters['redirectedFrom'] == null
                //       ? '/home'
                //       : context.vRouter.queryParameters['redirectedFrom']!,
                // );
              }
            },
            child: signUp ? const Text('Sign Up') : const Text('Sign In'),
          ),

          //Sign up / Sign In toggler
          OutlinedButton(
            onPressed: () {
              setState(() {
                signUp = !signUp;
              });
            },
            child: signUp
                ? const Text('Have an account? Sign In')
                : const Text('Create an account'),
          ),
        ],
      ),
    );
  }
}
