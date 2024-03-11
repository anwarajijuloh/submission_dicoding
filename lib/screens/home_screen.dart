import 'package:flutter/material.dart';

import '../core.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = '/home';
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverPadding(
            padding: const EdgeInsets.only(top: 20),
            sliver: SliverAppBar(
              floating: true,
              expandedHeight: 80,
              leadingWidth: 80,
              leading: Container(
                alignment: Alignment.centerRight,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Image.network(
                    'https://randomuser.me/api/portraits/women/24.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              title: const Text(
                'Hai, Jessica',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
              ),
              actions: [
                Container(
                  width: 64,
                  alignment: Alignment.centerLeft,
                  child: Stack(children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.notifications,
                        size: 32,
                        color: Palette.darkGrey1,
                      ),
                    ),
                    Positioned(
                      top: 10,
                      right: 10,
                      child: Container(
                        width: 12,
                        height: 12,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                            width: 2,
                            color: Colors.white,
                            strokeAlign: BorderSide.strokeAlignOutside,
                          ),
                        ),
                      ),
                    ),
                  ]),
                ),
              ],
            ),
          ),
          const SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                'Find Your Favorite Place!',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
            ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 26,
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Container(
                height: 62,
                alignment: Alignment.center,
                padding: const EdgeInsets.only(left: 20, right: 8),
                decoration: BoxDecoration(
                    color: Palette.secondaryGrey1,
                    borderRadius: BorderRadius.circular(10)),
                child: const TextField(
                  decoration: InputDecoration(
                    hintText: 'Search Your Place',
                    border: InputBorder.none,
                    suffixIcon: Icon(
                      Icons.search,
                      color: Palette.darkGrey2,
                    ),
                    hintStyle: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: Palette.darkGrey2,
                    ),
                  ),
                ),
              ),
            ),
          ),
          TitleActionButton(
            myAction: () {},
            myTitle: 'Categories',
          ),
          const CategoryList(),
          TitleActionButton(
            myAction: () {},
            myTitle: 'Popular',
          ),
          PopularList(),
        ],
      ),
    );
  }
}


