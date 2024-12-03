// import 'package:final_assignment/core/common/my_button.dart';
// import 'package:final_assignment/screen/login_screen.dart';
// import 'package:final_assignment/screen/signup_screen.dart';
// import 'package:flutter/material.dart';
// import 'package:lottie/lottie.dart';

// class LandingScreen extends StatefulWidget {
//   const LandingScreen({super.key});

//   @override
//   State<LandingScreen> createState() => _LandingScreenState();
// }

// class _LandingScreenState extends State<LandingScreen> {
//   double _opacity = 0.0;

//   @override
//   void initState() {
//     super.initState();
//     // Start the fade-in animation after a short delay
//     Future.delayed(const Duration(milliseconds: 500), () {
//       setState(() {
//         _opacity = 1.0;
//       });
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.transparent,
//       ),
//       extendBodyBehindAppBar: true,
//       body: Stack(
//         fit: StackFit.expand,
//         children: [
//           AnimatedOpacity(
//             duration: const Duration(seconds: 1),
//             opacity: _opacity,
//             child: Image.asset(
//               "assets/images/myland.png",
//               fit: BoxFit.cover,
//               width: double.infinity,
//               height: double.infinity,
//             ),
//           ),
//           SingleChildScrollView(
//             child: Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 10),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   const SizedBox(height: 65),
//                   const Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text(
//                         'Welcome to,',
//                         style: TextStyle(
//                           color: Colors.white,
//                           fontSize: 24,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                       SizedBox(height: 3),
//                       Text(
//                         'WeWheels',
//                         style: TextStyle(
//                           color: Color.fromARGB(255, 35, 35, 35),
//                           fontSize: 30,
//                           fontWeight: FontWeight.w900,
//                         ),
//                       ),
//                       SizedBox(height: 8),
//                       Text(
//                         "An online retail application",
//                         style: TextStyle(
//                           color: Colors.white,
//                           fontSize: 14,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                       SizedBox(height: 0.1),
//                       Text(
//                         "for your vehicle",
//                         style: TextStyle(
//                           color: Colors.white,
//                           fontSize: 14,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                     ],
//                   ),
//                   const SizedBox(height: 200),
//                   Align(
//                     alignment: Alignment.center,
//                     child: Card(
//                       color: const Color.fromARGB(255, 255, 255, 255)
//                           .withOpacity(0.8),
//                       child: const Padding(
//                         padding: EdgeInsets.all(8.0),
//                         child: Text(
//                           '"Your source of Top-Tier-Tire"',
//                           style: TextStyle(
//                             color: Color.fromARGB(255, 31, 31, 31),
//                             fontSize: 18,
//                             fontStyle: FontStyle.italic,
//                             fontWeight: FontWeight.bold,
//                             fontFamily: 'IntelOneMono',
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                   const SizedBox(height: 20),
//                   Align(
//                     alignment: Alignment.center,
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.stretch,
//                       children: [
//                         MyButton(
//                           onPressed: () {
//                             Navigator.push(
//                               context,
//                               PageRouteBuilder(
//                                 transitionDuration:
//                                     const Duration(milliseconds: 300),
//                                 transitionsBuilder: (
//                                   context,
//                                   animation,
//                                   secondaryAnimation,
//                                   child,
//                                 ) {
//                                   return FadeTransition(
//                                     opacity: animation,
//                                     child: child,
//                                   );
//                                 },
//                                 pageBuilder: (
//                                   context,
//                                   animation,
//                                   secondaryAnimation,
//                                 ) {
//                                   return const LoginScreen();
//                                 },
//                               ),
//                             );
//                           },
//                           text: 'Login',
//                           backgroundColor:
//                               const Color.fromARGB(255, 45, 45, 45),
//                           textColor: Colors.white,
//                           borderColor: const Color.fromARGB(255, 175, 175, 175),
//                         ),
//                         const SizedBox(height: 10),
//                         MyButton(
//                           onPressed: () {
//                             Navigator.push(
//                               context,
//                               PageRouteBuilder(
//                                 transitionDuration:
//                                     const Duration(milliseconds: 300),
//                                 transitionsBuilder: (
//                                   context,
//                                   animation,
//                                   secondaryAnimation,
//                                   child,
//                                 ) {
//                                   return FadeTransition(
//                                     opacity: animation,
//                                     child: child,
//                                   );
//                                 },
//                                 pageBuilder: (
//                                   context,
//                                   animation,
//                                   secondaryAnimation,
//                                 ) {
//                                   return  SignUpScreen();
//                                 },
//                               ),
//                             );
//                           },
//                           text: 'Signup',
//                           backgroundColor:
//                               const Color.fromARGB(255, 255, 17, 0),
//                           textColor: Colors.white,
//                           borderColor: const Color.fromARGB(255, 160, 160, 160),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           Positioned(
//             bottom: 200,
//             left: 8,
//             right: 0,
//             child: SizedBox(
//               height: 100,
//               child: Lottie.asset(
//                 'assets/animations/tyrerun.json',
//                 fit: BoxFit.cover,
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
