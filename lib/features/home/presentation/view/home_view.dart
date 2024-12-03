import 'package:final_assignment/features/home/presentation/view/bottom_view/brand_view.dart';
import 'package:final_assignment/features/home/presentation/view/bottom_view/cart_view.dart';
import 'package:final_assignment/features/home/presentation/view/bottom_view/menu_view.dart';
import 'package:final_assignment/features/home/presentation/view/bottom_view/shop_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeView extends ConsumerStatefulWidget {
  const HomeView({super.key});

  @override
  ConsumerState<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends ConsumerState<HomeView> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    const ShopView(),
    const BrandView(),
    const CartView(),
    const MenuView(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        clipBehavior: Clip.antiAlias,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              onPressed: () {
                _onItemTapped(0);
              },
              icon: Icon(
                Icons.home,
                color: _selectedIndex == 0
                    ? Theme.of(context).primaryColor
                    : Theme.of(context).disabledColor,
              ),
            ),
            IconButton(
              onPressed: () {
                _onItemTapped(1);
              },
              icon: Icon(
                Icons.business,
                color: _selectedIndex == 1
                    ? Theme.of(context).primaryColor
                    : Theme.of(context).disabledColor,
              ),
            ),
            IconButton(
              onPressed: () {
                _onItemTapped(2);
              },
              icon: Icon(
                Icons.shopping_cart,
                color: _selectedIndex == 2
                    ? Theme.of(context).primaryColor
                    : Theme.of(context).disabledColor,
              ),
            ),
            IconButton(
              onPressed: () {
                _onItemTapped(3);
              },
              icon: Icon(
                Icons.menu,
                color: _selectedIndex == 3
                    ? Theme.of(context).primaryColor
                    : Theme.of(context).disabledColor,
              ),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        shape: const CircleBorder(),
        backgroundColor: Theme.of(context).primaryColor,
        onPressed: () {},
        child: const Icon(
          Icons.calculate_rounded,
          color: Colors.white,
        ),
      ),
    );
  }
}
