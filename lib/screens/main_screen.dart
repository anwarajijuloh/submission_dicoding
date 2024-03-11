import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

import '../core.dart';

class MainScreen extends StatefulWidget {
  static const routeName = '/';
  const MainScreen({super.key,});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  PersistentTabController _controller = PersistentTabController();

  @override
  void initState() {
    super.initState();
    _controller = PersistentTabController();
  }

  List<Widget> _buildScreens() => [
        const HomeScreen(),
        const FavoriteScreen(),
        const ProfileScreen(),
      ];

  List<PersistentBottomNavBarItem> _navBarsItems() => [
        PersistentBottomNavBarItem(
          icon: const Icon(Icons.home_rounded),
          title: "Home",
          textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          activeColorPrimary: Palette.primaryGreen,
          inactiveColorPrimary: Palette.secondaryGrey2,
          iconSize: 32,
        ),
        PersistentBottomNavBarItem(
          icon: const Icon(Icons.favorite),
          title: "Favorite",
          textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          activeColorPrimary: Palette.primaryGreen,
          inactiveColorPrimary: Palette.secondaryGrey2,
          iconSize: 32,
        ),
        PersistentBottomNavBarItem(
          icon: const Icon(Icons.person),
          title: "Profile",
          textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          activeColorPrimary: Palette.primaryGreen,
          inactiveColorPrimary: Palette.secondaryGrey2,
          iconSize: 32,
        ),
      ];
  
  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
        context,
        controller: _controller,
        screens: _buildScreens(),
        items: _navBarsItems(),
        navBarHeight: 80,
        decoration: NavBarDecoration(
          borderRadius: BorderRadius.circular(10.0),
          colorBehindNavBar: Colors.white,
        ),
        itemAnimationProperties: const ItemAnimationProperties(
          duration: Duration(milliseconds: 200),
          curve: Curves.ease,
        ),
        screenTransitionAnimation: const ScreenTransitionAnimation(
          animateTabTransition: true,
          curve: Curves.ease,
          duration: Duration(milliseconds: 200),
        ),
        navBarStyle: NavBarStyle.style9,
    );
  }
}