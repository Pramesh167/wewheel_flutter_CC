import 'package:flutter/material.dart';

class BrandView extends StatelessWidget {
  const BrandView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false, // Removes the back arrow
        backgroundColor: Colors.white, // Makes the AppBar background white
        title: const Text(
          'Brands',
          style: TextStyle(
              color: Color.fromARGB(
                  255, 38, 38, 38)), // Sets the title color to grey
        ),
        elevation: 0, // Optional: Remove the shadow under the AppBar
      ),
      body: const Center(
        child: Text('Brand View Content'),
      ),
    );
  }
}
