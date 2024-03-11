import 'package:flutter/material.dart';

import '../core.dart';

class DestinationScreen extends StatelessWidget {
  static const routeName = '/destination';
  const DestinationScreen({super.key, required this.categoryId});
  final Categories categoryId;

  @override
  Widget build(BuildContext context) {
    List<Destionation> destination = [];
    for (Destionation destie in destinations) {
      if (destie.id.categoryId == categoryId.categoryId) {
        destination.add(destie);
      }
    }
    Color gradientStart = Colors.transparent;
    Color gradientEnd = Colors.black;
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 200,
            child: Stack(
              children: [
                ShaderMask(
                  shaderCallback: (rect) {
                    return LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [gradientStart, gradientEnd],
                    ).createShader(
                      Rect.fromLTRB(0, 10, rect.width, rect.height),
                    );
                  },
                  blendMode: BlendMode.darken,
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: ExactAssetImage(
                            categoryId.categoryImage.toString()),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 36,
                  left: 10,
                  child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                      size: 36,
                    ),
                  ),
                ),
                Positioned(
                    bottom: 20,
                    left: 40,
                    child: Text(
                      'Choose Your Favorite\n${categoryId.categoryName.toString()}',
                      style: const TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.w600),
                    ))
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: destination.length,
              itemBuilder: (ctx, i) {
                return CustomStackDestination(
                  name: destination[i].desName,
                  place: destination[i].place,
                  rate: destination[i].desRating.toString(),
                  image: destination[i].desImage,
                );
              },
            ),
          )
        ],
      ),
    );
  }
}


