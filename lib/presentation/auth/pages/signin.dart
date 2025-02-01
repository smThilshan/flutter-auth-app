// import 'package:auth_app/common/widgets/buttons/basic_app_btn.dart';
// import 'package:auth_app/service_locator.dart';
// import 'package:flutter/gestures.dart';
// import 'package:flutter/material.dart';

// import 'signup.dart';

// class SigninPage extends StatefulWidget {
//   const SigninPage({super.key});

//   @override
//   _SigninPageState createState() => _SigninPageState();
// }

// class _SigninPageState extends State<SigninPage> {
//   final TextEditingController _emailCon = TextEditingController();
//   final TextEditingController _passwordCon = TextEditingController();
//   bool _isLoading = false;

//   Future<void> _login() async {
//     setState(() {
//       _isLoading = true;
//     });

//     try {
//       // Replace the following line with the actual sign-in use case call.
//       final result = await sl<SigninUseCase>().execute(
//         SigninReqParams(
//           email: _emailCon.text,
//           password: _passwordCon.text,
//         ),
//       );

//       // If successful, navigate to the HomePage.
//       if (result.isSuccessful) {
//         Navigator.pushReplacement(
//           context,
//           MaterialPageRoute(builder: (context) => const HomePage()),
//         );
//       } else {
//         // If there's an error, show a SnackBar.
//         ScaffoldMessenger.of(context).showSnackBar(
//           SnackBar(content: Text(result.errorMessage ?? 'Login failed')),
//         );
//       }
//     } catch (error) {
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(content: Text(error.toString())),
//       );
//     } finally {
//       setState(() {
//         _isLoading = false;
//       });
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         minimum: const EdgeInsets.only(top: 100, right: 16, left: 16),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.start,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             _signin(),
//             const SizedBox(height: 50),
//             _emailField(),
//             const SizedBox(height: 20),
//             _password(),
//             const SizedBox(height: 60),
//             _createAccountButton(),
//             const SizedBox(height: 20),
//             _signupText(context),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _signin() {
//     return const Text(
//       'Sign In',
//       style: TextStyle(
//         color: Color(0xff2A4ECA),
//         fontWeight: FontWeight.bold,
//         fontSize: 32,
//       ),
//     );
//   }

//   Widget _emailField() {
//     return TextField(
//       controller: _emailCon,
//       decoration: const InputDecoration(
//         hintText: 'Email',
//       ),
//     );
//   }

//   Widget _password() {
//     return TextField(
//       controller: _passwordCon,
//       decoration: const InputDecoration(
//         hintText: 'Password',
//       ),
//       obscureText: true,
//     );
//   }

//   Widget _createAccountButton() {
//     return BasicAppButton(
//       title: 'Login',
//       isLoading: _isLoading,
//       onPressed: _isLoading ? null : () => _login(),
//     );
//   }

//   Widget _signupText(BuildContext context) {
//     return Text.rich(
//       TextSpan(
//         children: [
//           const TextSpan(
//             text: "Don't you have an account?",
//             style: TextStyle(
//               color: Color(0xff3B4054),
//               fontWeight: FontWeight.w500,
//             ),
//           ),
//           TextSpan(
//             text: ' Sign Up',
//             style: const TextStyle(
//               color: Color(0xff3461FD),
//               fontWeight: FontWeight.w500,
//             ),
//             recognizer: TapGestureRecognizer()
//               ..onTap = () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (context) => Signup()),
//                 );
//               },
//           ),
//         ],
//       ),
//     );
//   }
// }
