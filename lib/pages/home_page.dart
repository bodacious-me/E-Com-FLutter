import 'package:flutter/material.dart';
import 'package:sneakers_app/components/bottom_nav_bar.dart';
import 'package:sneakers_app/pages/cart_page.dart';
import 'package:sneakers_app/pages/shop_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  void navigateBottmBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> pages = [
    const ShopPage(),
    const CartPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      bottomNavigationBar: MyBottmNavBar(
        onTabChange: (Index) => navigateBottmBar(Index),
      ),
      body: pages[_selectedIndex],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Builder(builder: (context) {
          return IconButton(
            onPressed: Scaffold.of(context).openDrawer,
            icon: const Padding(
              padding: EdgeInsets.only(left: 12.0),
              child: Icon(
                Icons.menu,
                color: Colors.black,
              ),
            ),
          );
        }),
      ),
      drawer: Drawer(
        backgroundColor: Colors.grey[900],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: DrawerHeader(
                      child: Image.asset(
                    './lib/images/nike.png',
                    color: Colors.white,
                  )),
                ),
                // Divider(
                //   color: Colors.grey[800],
                // ),
                const Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 10.0),
                      child: ListTile(
                        leading: Icon(Icons.home),
                        title: Text(
                          "Home",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10.0),
                      child: ListTile(
                        leading: Icon(Icons.info),
                        title: Text(
                          "About",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(left: 10.0,bottom: 25),
              child: ListTile(
                leading: Icon(Icons.logout),
                title: Text(
                  "Logout",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
