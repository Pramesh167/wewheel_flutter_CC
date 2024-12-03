// import 'package:final_assignment/screen/bottom_screen/brand_screen.dart';
// import 'package:final_assignment/screen/bottom_screen/cart_screen.dart';
// import 'package:final_assignment/screen/bottom_screen/home_screen.dart';
// import 'package:flutter/material.dart';

// class DashboardScreen extends StatefulWidget {
//   const DashboardScreen({super.key});

//   @override
//   State<DashboardScreen> createState() => _DashboardScreenState();
// }

// class _DashboardScreenState extends State<DashboardScreen> {
//   int _selectedIndex = 0;

//   List<Widget> lstBottomScreen = [
//     const HomeScreen(),
//     const BrandScreen(),
//     const CartScreen(),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: lstBottomScreen[_selectedIndex],
//       bottomNavigationBar: BottomNavigationBar(
//         backgroundColor: const Color.fromARGB(255, 53, 53, 53),
//         selectedItemColor: const Color.fromARGB(255, 135, 135, 135),
//         unselectedItemColor: const Color.fromARGB(255, 255, 255, 255),
//         type: BottomNavigationBarType.fixed,
//         items: const [
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home),
//             label: 'Home',
//           ),
//           BottomNavigationBarItem(
//               icon: Icon(Icons.branding_watermark), label: "Brand"),
//           BottomNavigationBarItem(
//               icon: Icon(Icons.shopping_bag), label: "Cart"),
//         ],
//         currentIndex: _selectedIndex,
//         onTap: (index) {
//           setState(() {
//             _selectedIndex = index;
//           });
//         },
//       ),
//     );
//   }
// }
