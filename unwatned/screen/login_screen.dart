// import 'dart:ui';

// import 'package:final_assignment/core/common/my_button.dart';
// import 'package:final_assignment/screen/dashboard_screen.dart';
// import 'package:final_assignment/screen/signup_screen.dart';
// import 'package:flutter/material.dart';
// import 'package:rive/rive.dart';

// class LoginScreen extends StatefulWidget {
//   const LoginScreen({super.key});

//   @override
//   _LoginScreenState createState() => _LoginScreenState();
// }

// class _LoginScreenState extends State<LoginScreen> {
//   final _formKey = GlobalKey<FormState>();
//   final TextEditingController emailController = TextEditingController();
//   final TextEditingController passwordController = TextEditingController();
//   bool passwordVisible = false;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: [
//           const RiveAnimation.asset('assets/rive/obs.riv'),
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
//                         color: const Color.fromARGB(156, 255, 255, 255),
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
//                         'Welcome Back! Login to acess your account',
//                         style: TextStyle(
//                           fontFamily: 'Montserrat Bold Italic',
//                           fontSize: 24,
//                           // fontWeight: FontWeight.bold,
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
//                         key: _formKey,
//                         child: Column(
//                           mainAxisSize: MainAxisSize.min,
//                           children: [
//                             TextFormField(
//                               controller: emailController,
//                               decoration: const InputDecoration(
//                                 labelText: 'Email',
//                                 border: OutlineInputBorder(),
//                                 prefixIcon: Icon(Icons.email),
//                               ),
//                               validator: (value) {
//                                 if (value!.isEmpty) {
//                                   return 'Please enter your email';
//                                 }
//                                 return null;
//                               },
//                             ),
//                             const SizedBox(height: 20),
//                             TextFormField(
//                               controller: passwordController,
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
//                                   return 'Please enter your password';
//                                 }
//                                 return null;
//                               },
//                             ),
//                             const SizedBox(height: 20),
//                             SizedBox(
//                               width: double.infinity,
//                               child: MyButton(
//                                 onPressed: () {
//                                   if (_formKey.currentState!.validate()) {
//                                     if (emailController.text == "admin" &&
//                                         passwordController.text == "admin") {
//                                       Navigator.pushReplacement(
//                                           context,
//                                           MaterialPageRoute(
//                                               builder: (context) =>
//                                                   const DashboardScreen()));
//                                     } else {
//                                       ScaffoldMessenger.of(context)
//                                           .showSnackBar(
//                                         const SnackBar(
//                                             backgroundColor: Colors.red,
//                                             content: Text(
//                                               "Invalid Credentials",
//                                               style: TextStyle(
//                                                 color: Color.fromARGB(
//                                                     255, 255, 255, 255),
//                                               ),
//                                             )),
//                                       );
//                                     }

//                                     // Form is validated, proceed with login
//                                     // Implement your login functionality here
//                                   }
//                                 },
//                                 text: 'Login',
//                                 backgroundColor:
//                                     const Color.fromARGB(255, 45, 45, 45),
//                                 textColor: Colors.white,
//                                 borderColor:
//                                     const Color.fromARGB(255, 175, 175, 175),
//                               ),
//                             ),
//                             const SizedBox(height: 15),
//                             TextButton(
//                               onPressed: () {
//                                 // Implement your forgot password functionality here
//                               },
//                               child: const Text(
//                                 'Forgot Password?',
//                                 style: TextStyle(
//                                   decoration: TextDecoration.underline,
//                                   color: Color.fromARGB(255, 45, 45, 45),
//                                 ),
//                               ),
//                             ),
//                             const SizedBox(height: 15),
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
//                             const SizedBox(height: 5),
//                             TextButton(
//                               onPressed: () {
//                                 Navigator.push(
//                                   context,
//                                   MaterialPageRoute(
//                                     builder: (context) => const SignUpScreen(),
//                                   ),
//                                 );
//                               },
//                               child: const Text(
//                                 'Don\'t have an account?',
//                                 style: TextStyle(
//                                   decoration: TextDecoration.underline,
//                                   color: Color.fromARGB(255, 45, 45, 45),
//                                 ),
//                               ),
//                             ),
//                             const SizedBox(height: 5),
//                             SizedBox(
//                               width: double.infinity,
//                               child: MyButton(
//                                 onPressed: () {
//                                   Navigator.pushReplacement(
//                                     context,
//                                     MaterialPageRoute(
//                                       builder: (context) =>
//                                           const SignUpScreen(),
//                                     ),
//                                   );
//                                 },
//                                 text: 'Sign Up',
//                                 backgroundColor: Colors.red,
//                                 textColor: Colors.white,
//                                 borderColor: Colors.red,
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
