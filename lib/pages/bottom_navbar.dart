import 'package:flutter/material.dart';
import 'package:ecommerce/pages/home.dart';
import 'package:ecommerce/pages/order.dart';
import 'package:ecommerce/pages/wallet.dart';
import 'package:ecommerce/pages/profile.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int curretTabIndex = 0;

  late List<Widget> pages;
  late Widget currentPage;
  late Home home;
  late Profile profile;
  late Wallet wallet;
  late Order order;

  @override
  void initState() {
    home = Home();
    order = Order();
    wallet = Wallet();
    profile = Profile();
    pages = [home, order, wallet, profile];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[curretTabIndex],
      bottomNavigationBar: CurvedNavigationBar(
        height: 65,
        backgroundColor: Colors.white,
        color: Colors.black,
        animationDuration: Duration(milliseconds: 500),
        onTap: (int index) {
          setState(() {
            curretTabIndex = index;
          });
        },
        index: curretTabIndex,
        items: [
          Icon(Icons.home_outlined, color: Colors.white),
          Icon(Icons.shopping_bag_outlined, color: Colors.white),
          Icon(Icons.wallet_outlined, color: Colors.white),
          Icon(Icons.person_outlined, color: Colors.white),
        ],
      ),
    );
  }
}
