import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

import '../core.dart';
class StarterScreen extends StatelessWidget {
  static const routeName = '/starter';
  const StarterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(child: Image.asset('assets/images/Trip-pana.png')),
          const Text(
            'Enjoy Your Vacation,\nOnly Here',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 18,
              color: Palette.darkGrey1,
            ),
          ),
          Container(
            padding: const EdgeInsets.all(18.0),
            child: const Text(
              'vocation to all destionation\nyou like, only here',
              textAlign: TextAlign.center,
              style: TextStyle(color: Palette.darkGrey2),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          CustomButton(action: () { 
            PersistentNavBarNavigator.pushNewScreen(context, screen: const MainScreen(), withNavBar: false);
           }, name: 'Start',),
          const SizedBox(height: 10),
          TextButton(
            onPressed: () {},
            child: const Text(
              'Do you have account?',
              style: TextStyle(
                fontSize: 12,
                color: Palette.darkGrey2,
              ),
            ),
          ),
        ],
      ),
    );
  }
}


