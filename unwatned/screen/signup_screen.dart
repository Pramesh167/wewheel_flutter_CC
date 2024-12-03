// import 'dart:ui';

// import 'package:final_assignment/core/common/my_button.dart';
// import 'package:flutter/material.dart';
// import 'package:rive/rive.dart';

// import 'login_screen.dart'; // Import LoginScreen

// class SignUpScreen extends StatefulWidget {
//   const SignUpScreen({super.key});

//   @override
//   _SignUpScreenState createState() => _SignUpScreenState();
// }

// class _SignUpScreenState extends State<SignUpScreen> {
//   final GlobalKey<FormState> formKey = GlobalKey<FormState>();
//   bool passwordVisible = false;
//   bool confirmPasswordVisible = false;

//   bool validateForm() {
//     if (formKey.currentState!.validate()) {
//       // Form is valid
//       return true;
//     } else {
//       // Form is invalid
//       return false;
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: [
//           const RiveAnimation.asset('assets/rive/obs.riv'), // Rive animation
//           Positioned.fill(
//             child: BackdropFilter(
//               filter: ImageFilter.blur(sigmaX: 20, sigmaY: 10),
//               child: Container(
//                 color: Colors.black.withOpacity(0),
//               ),
//             ),
//           ),
//           Center(
//             child: Padding(
//               padding: const EdgeInsets.only(top: 100),
//               child: SingleChildScrollView(
//                 child: Column(
//                   mainAxisSize: MainAxisSize.min,
//                   children: [
//                     Container(
//                       padding: const EdgeInsets.symmetric(
//                           vertical: 20, horizontal: 40),
//                       margin: const EdgeInsets.only(bottom: 20),
//                       decoration: BoxDecoration(
//                         color: const Color.fromARGB(161, 255, 255, 255),
//                         borderRadius: BorderRadius.circular(15),
//                         boxShadow: [
//                           BoxShadow(
//                             color: Colors.black.withOpacity(0.1),
//                             blurRadius: 10,
//                             spreadRadius: 5,
//                           ),
//                         ],
//                       ),
//                       child: const Text(
//                         'Welcome Aboard! Create your account here',
//                         style: TextStyle(
//                           fontSize: 24,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                     ),
//                     Container(
//                       margin: const EdgeInsets.symmetric(horizontal: 20),
//                       padding: const EdgeInsets.all(20),
//                       decoration: BoxDecoration(
//                         color: Colors.white.withOpacity(0.8),
//                         borderRadius: BorderRadius.circular(15),
//                         boxShadow: [
//                           BoxShadow(
//                             color: Colors.black.withOpacity(0.1),
//                             blurRadius: 10,
//                             spreadRadius: 5,
//                           ),
//                         ],
//                       ),
//                       child: Form(
//                         key: formKey,
//                         child: Column(
//                           mainAxisSize: MainAxisSize.min,
//                           children: [
//                             TextFormField(
//                               decoration: const InputDecoration(
//                                 labelText: 'User Name',
//                                 border: OutlineInputBorder(),
//                                 prefixIcon: Icon(Icons.person),
//                               ),
//                               validator: (value) {
//                                 if (value!.isEmpty) {
//                                   return 'Please enter a username';
//                                 }
//                                 return null;
//                               },
//                             ),
//                             const SizedBox(height: 20),
//                             TextFormField(
//                               decoration: const InputDecoration(
//                                 labelText: 'Email',
//                                 border: OutlineInputBorder(),
//                                 prefixIcon: Icon(Icons.email),
//                               ),
//                               validator: (value) {
//                                 if (value!.isEmpty) {
//                                   return 'Please enter an email address';
//                                 }
//                                 return null;
//                               },
//                             ),
//                             const SizedBox(height: 20),
//                             TextFormField(
//                               decoration: InputDecoration(
//                                 labelText: 'Password',
//                                 border: const OutlineInputBorder(),
//                                 prefixIcon: const Icon(Icons.lock),
//                                 suffixIcon: IconButton(
//                                   icon: Icon(
//                                     passwordVisible
//                                         ? Icons.visibility
//                                         : Icons.visibility_off,
//                                   ),
//                                   onPressed: () {
//                                     setState(() {
//                                       passwordVisible = !passwordVisible;
//                                     });
//                                   },
//                                 ),
//                               ),
//                               obscureText: !passwordVisible,
//                               validator: (value) {
//                                 if (value!.isEmpty) {
//                                   return 'Please enter a password';
//                                 }
//                                 return null;
//                               },
//                             ),
//                             const SizedBox(height: 20),
//                             TextFormField(
//                               decoration: InputDecoration(
//                                 labelText: 'Confirm Password',
//                                 border: const OutlineInputBorder(),
//                                 prefixIcon: const Icon(Icons.lock),
//                                 suffixIcon: IconButton(
//                                   icon: Icon(
//                                     confirmPasswordVisible
//                                         ? Icons.visibility
//                                         : Icons.visibility_off,
//                                   ),
//                                   onPressed: () {
//                                     setState(() {
//                                       confirmPasswordVisible =
//                                           !confirmPasswordVisible;
//                                     });
//                                   },
//                                 ),
//                               ),
//                               obscureText: !confirmPasswordVisible,
//                               validator: (value) {
//                                 if (value!.isEmpty) {
//                                   return 'Please confirm your password';
//                                 }
//                                 return null;
//                               },
//                             ),
//                             const SizedBox(height: 20),
//                             SizedBox(
//                               width: double.infinity,
//                               child: MyButton(
//                                 onPressed: () {
//                                   if (validateForm()) {
//                                     // Form is valid, implement signup functionality here
//                                   }
//                                 },
//                                 text: 'Signup',
//                                 backgroundColor:
//                                     const Color.fromARGB(255, 255, 51, 51),
//                                 textColor: Colors.white,
//                                 borderColor:
//                                     const Color.fromARGB(255, 175, 175, 175),
//                               ),
//                             ),
//                             const SizedBox(height: 15), // Reduced spacing
//                             Row(
//                               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                               children: [
//                                 IconButton(
//                                   icon: const Icon(Icons.g_mobiledata_rounded,
//                                       size: 70),
//                                   onPressed: () {
//                                     // Implement Google login functionality here
//                                   },
//                                 ),
//                                 IconButton(
//                                   icon: const Icon(Icons.facebook_rounded,
//                                       size: 50),
//                                   onPressed: () {
//                                     // Implement Facebook login functionality here
//                                   },
//                                 ),
//                               ],
//                             ),
//                             const SizedBox(height: 5), // Reduced spacing
//                             TextButton(
//                               onPressed: () {
//                                 // Navigate to the LoginScreen and dispose of the SignUpScreen
//                                 Navigator.pushReplacement(
//                                   context,
//                                   MaterialPageRoute(
//                                     builder: (context) => const LoginScreen(),
//                                   ),
//                                 );
//                               },
//                               child: const Text(
//                                 'Already have an account?',
//                                 style: TextStyle(
//                                   decoration: TextDecoration.underline,
//                                   color: Color.fromARGB(255, 45, 45, 45),
//                                 ),
//                               ),
//                             ),
//                             const SizedBox(height: 5), // Reduced spacing
//                             SizedBox(
//                               width: double.infinity,
//                               child: MyButton(
//                                 onPressed: () {
//                                   // Navigate to the LoginScreen and dispose of the SignUpScreen
//                                   Navigator.pushReplacement(
//                                     context,
//                                     MaterialPageRoute(
//                                       builder: (context) => const LoginScreen(),
//                                     ),
//                                   );
//                                 },
//                                 text: 'Login',
//                                 backgroundColor:
//                                     const Color.fromARGB(255, 47, 47, 47),
//                                 textColor: Colors.white,
//                                 borderColor:
//                                     const Color.fromARGB(255, 160, 160, 160),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
