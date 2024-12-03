import 'package:final_assignment/features/splash/presentation/viewmodel/splash_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:rive/rive.dart';

class SplashView extends ConsumerStatefulWidget {
  const SplashView({super.key});

  @override
  ConsumerState<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends ConsumerState<SplashView> {
  double _opacity = 1.0;

  @override
  void initState() {
    
      ref.read(splashViewModelProvider.notifier).openLoginView(context);
      super.initState();
    
    // WidgetsBinding.instance.addPostFrameCallback((_) {
    //   ref.read(splashViewModelProvider.notifier).openLoginView(context);
    // });
    // Start the fade-out animation after 5 seconds
    Future.delayed(const Duration(seconds: 5), () {
      setState(() {
        _opacity = 0.0;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    // Get the screen size and orientation
    final screenSize = MediaQuery.of(context).size;
    final orientation = MediaQuery.of(context).orientation;

    // Determine the minimum dimension of the screen
    final minDimension = orientation == Orientation.portrait
        ? screenSize.width
        : screenSize.height;

    return Scaffold(
      backgroundColor: Colors.white, // Set the background color
      body: Center(
        child: AnimatedOpacity(
          duration: const Duration(milliseconds: 500),
          opacity: _opacity,
          child: SizedBox(
            width: minDimension *
                0.8, // Adjust width based on the minimum dimension
            height: minDimension *
                0.8, // Adjust height based on the minimum dimension
            child: const RiveAnimation.asset(
              'assets/rive/splash3.riv', // Path to your Rive animation file
              fit: BoxFit.fitHeight,
            ),
          ),
        ),
      ),
    );
  }
}
