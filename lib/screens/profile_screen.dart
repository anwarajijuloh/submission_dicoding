import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

import '../core.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final User myUser = recentUser;
    final List<Favorited> myFavorite = favorites;
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Image.network(myUser.userImage),
            ),
            SizedBox(height: 20),
            Text(
              myUser.userName.toUpperCase(),
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            Container(
              alignment: Alignment.center,
              width: 240,
              height: 80,
              decoration: BoxDecoration(
                  border: Border.all(width: 2, color: Palette.primaryGreen),
                  borderRadius: BorderRadius.circular(20)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.favorite,
                    color: Palette.primaryGreen,
                  ),
                  SizedBox(width: 10),
                  Text(
                    '${myFavorite.length.toString()} Favorited',
                    style: TextStyle(
                      color: Palette.primaryGreen,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 80),
            ElevatedButton(
              onPressed: () {
                PersistentNavBarNavigator.pushNewScreen(context, screen: const StarterScreen(), withNavBar: false);
              },
              child: Text('Keluar'),
            ),
          ],
        ),
      ),
    );
  }
}
