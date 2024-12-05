import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyBottmNavBar extends StatelessWidget {
  void Function(int)? onTabChange;
  MyBottmNavBar({super.key, required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GNav(
          padding: const EdgeInsets.symmetric(vertical: 20),
          color: const Color.fromARGB(255, 163, 157, 157),
          activeColor: const Color.fromARGB(255, 88, 88, 88),
          tabActiveBorder: Border.all(color: Colors.white),
          tabBackgroundColor: Colors.grey.shade100,
          mainAxisAlignment: MainAxisAlignment.center,
          tabBorderRadius: 16,
          onTabChange: (value) => onTabChange!(value),
          tabs: const [
            GButton(
              icon: Icons.home,
              text: "Shop",
            ),
            GButton(
              icon: Icons.shopping_bag_rounded,
              text: "Cart",
            )
          ]),
    );
  }
}
