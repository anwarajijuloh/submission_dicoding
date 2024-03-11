import 'package:flutter/material.dart';
import 'package:submission_dicoding/core.dart';
import 'package:submission_dicoding/models/popular.dart';

class PopularList extends StatelessWidget {
  const PopularList({super.key});

  @override
  Widget build(BuildContext context) {
    List<Popular> mypopular = populars;
    return SliverToBoxAdapter(
      child: SizedBox(
        height: 160,
        child: ListView.builder(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          itemCount: mypopular.length - 3,
          scrollDirection: Axis.horizontal,
          itemBuilder: (ctx, i) {
            return PopularItem(
              desid: mypopular[i].destId,
              name: mypopular[i].destId.desName,
              place: mypopular[i].destId.place,
              rate: mypopular[i].destId.desRating.toString(),
              image: mypopular[i].destId.desImage,
            );
          },
        ),
      ),
    );
  }
}
