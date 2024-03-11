import 'package:flutter/material.dart';

import '../core.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Favorited> myfavorited = favorites;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 1,
        title: const Text(
          'Favorited Destinations',
          style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w500,
              color: Palette.primaryGreen),
        ),
      ),
      body: ListView.builder(
        itemCount: myfavorited.length,
        itemBuilder: (ctx, i) {
          return CustomStackDestination(
            name: myfavorited[i].desId.desName,
            place: myfavorited[i].desId.desName,
            rate: myfavorited[i].desId.desRating.toString(),
            image: myfavorited[i].desId.desImage,
            desId: myfavorited[i].desId,
          );
        },
      ),
    );
  }
}
