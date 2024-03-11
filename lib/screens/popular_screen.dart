import 'package:flutter/material.dart';
import 'package:submission_dicoding/core.dart';
import 'package:submission_dicoding/models/popular.dart';

class PopularScreen extends StatelessWidget {
  const PopularScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Popular> mypopular = populars;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 1,
        title: const Text(
          'Popular Destinations',
          style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w500,
              color: Palette.primaryGreen),
        ),
      ),
      body: ListView.builder(
        itemCount: mypopular.length,
        itemBuilder: (ctx, i) {
          return CustomStackDestination(
            name: mypopular[i].destId.desName,
            place: mypopular[i].destId.desName,
            rate: mypopular[i].destId.desRating.toString(),
            image: mypopular[i].destId.desImage,
            desId: mypopular[i].destId,
          );
        },
      ),
    );
  }
}