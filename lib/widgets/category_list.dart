import 'package:flutter/material.dart';

import '../core.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final List<Categories> mycategories = categories;
    return SliverToBoxAdapter(
      child: SizedBox(
        height: 140,
        child: ListView.builder(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          scrollDirection: Axis.horizontal,
          itemCount: mycategories.length,
          itemBuilder: (ctx, i) {
            return CategoryItem(
              colors: mycategories[i].categoryColor,
              image: mycategories[i].categoryImage,
              title: mycategories[i].categoryName, id: mycategories[i],
            );
          },
        ),
      ),
    );
  }
}
