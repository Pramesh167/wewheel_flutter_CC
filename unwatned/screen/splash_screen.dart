// import 'dart:async';

// import 'package:final_assignment/screen/login_screen.dart';
// import 'package:flutter/material.dart';
// import 'package:rive/rive.dart';

// class SplashScreen extends StatefulWidget {
//   const SplashScreen({super.key});

//   @override
//   _SplashScreenState createState() => _SplashScreenState();
// }

// class _SplashScreenState extends State<SplashScreen> {
//   double _opacity = 1.0;

//   @override
//   void initState() {
//     super.initState();
//     // Start the fade-out animation after 5 seconds
//     Timer(const Duration(seconds: 5), () {
//       setState(() {
//         _opacity = 0.0;
//       });
//       // Navigate to LandingScreen after the fade-out animation completes
//       Timer(const Duration(milliseconds: 500), () {
//         Navigator.pushReplacement(
//           context,
//           MaterialPageRoute(builder: (context) => const LoginScreen()),
//         );
//       });
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     // Get the screen size and orientation
//     final screenSize = MediaQuery.of(context).size;
//     final orientation = MediaQuery.of(context).orientation;

//     // Determine the minimum dimension of the screen
//     final minDimension = orientation == Orientation.portrait
//         ? screenSize.width
//         : screenSize.height;

//     return Scaffold(
//       backgroundColor: Colors.white, // Set the background color
//       body: Center(
//         child: AnimatedOpacity(
//           duration: const Duration(milliseconds: 500),
//           opacity: _opacity,
//           child: SizedBox(
//             width: minDimension *
//                 0.8, // Adjust width based on the minimum dimension
//             height: minDimension *
//                 0.8, // Adjust height based on the minimum dimension
//             child: const RiveAnimation.asset(
//               'assets/rive/splash3.riv', // Path to your Rive animation file
//               fit: BoxFit.fitHeight,
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

// // import 'dart:async';

// // import 'package:final_assignment/screen/login_screen.dart';
// // import 'package:flutter/material.dart';
// // import 'package:just_audio/just_audio.dart';
// // import 'package:rive/rive.dart';

// // class SplashScreen extends StatefulWidget {
// //   const SplashScreen({super.key});

// //   @override
// //   _SplashScreenState createState() => _SplashScreenState();
// // }

// // class _SplashScreenState extends State<SplashScreen> {
// //   double _opacity = 1.0;
// //   final player = AudioPlayer();

// //   @override
// //   void initState() {
// //     super.initState();
// //     // Start the fade-out animation after 5 seconds
// //     Timer(const Duration(seconds: 6), () async {
// //       setState(() {
// //         _opacity = 0.0;
// //       });
// //       // Navigate to LoginScreen after the fade-out animation completes
// //       Timer(const Duration(milliseconds: 500), () {
// //         Navigator.pushReplacement(
// //           context,
// //           MaterialPageRoute(builder: (context) => const LoginScreen()),
// //         );
// //       });

// //       // Play the carsound.mp3 file
// //       await player.setAsset('assets/audio/carstart.mp3');
// //       await player.play();
// //     });
// //   }

// //   @override
// //   void dispose() {
// //     player.dispose();
// //     super.dispose();
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     // Get the screen size and orientation
// //     final screenSize = MediaQuery.of(context).size;
// //     final orientation = MediaQuery.of(context).orientation;

// //     // Determine the minimum dimension of the screen
// //     final minDimension = orientation == Orientation.portrait
// //         ? screenSize.width
// //         : screenSize.height;

// //     return Scaffold(
// //       backgroundColor: Colors.white, // Set the background color
// //       body: Center(
// //         child: AnimatedOpacity(
// //           duration: const Duration(milliseconds: 500),
// //           opacity: _opacity,
// //           child: SizedBox(
// //             width: minDimension *
// //                 0.8, // Adjust width based on the minimum dimension
// //             height: minDimension *
// //                 0.8, // Adjust height based on the minimum dimension
// //             child: const RiveAnimation.asset(
// //               'assets/rive/splash3.riv', // Path to your Rive animation file
// //               fit: BoxFit.fitHeight,
// //             ),
// //           ),
// //         ),
// //       ),
// //     );
// //   }
// // }
