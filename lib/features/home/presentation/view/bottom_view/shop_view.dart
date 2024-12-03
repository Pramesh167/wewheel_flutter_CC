import 'package:flutter/material.dart';

class ShopView extends StatelessWidget {
  const ShopView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false, // Removes the back arrow
        backgroundColor: Colors.white, // Makes the AppBar background white
        title: const TextField(
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white, // Makes the TextField background white
            hintText: 'Search for your necessity',
            prefixIcon:
                Icon(Icons.search, color: Colors.grey), // Grey search icon
            suffixIcon:
                Icon(Icons.filter_list, color: Colors.grey), // Grey filter icon
            border: OutlineInputBorder(
              borderRadius:
                  BorderRadius.all(Radius.circular(8.0)), // Rounded corners
              borderSide: BorderSide.none, // No border
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                  ),
                  child: const Text('Tyres'),
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey,
                  ),
                  child: const Text('Tubes'),
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey,
                  ),
                  child: const Text('Others'),
                ),
              ],
            ),
          ),
          // Add the rest of the ShopView body content here
        ],
      ),
    );
  }
}
