import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:submission_dicoding/screens/detail_destination_screen.dart';

import '../core.dart';

class CustomStackDestination extends StatelessWidget {
  final Destionation desId;
  final String name;
  final String place;
  final String rate;
  final String image;
  const CustomStackDestination(
      {super.key,
      required this.name,
      required this.place,
      required this.rate,
      required this.image, required this.desId});

  @override
  Widget build(BuildContext context) {
    Color gradientStart = Colors.transparent;
    Color gradientEnd = Colors.black;
    return GestureDetector(
      onTap: (){
        PersistentNavBarNavigator.pushNewScreen(context, screen: DetailDestinationScreen(desId: desId), withNavBar: false);
      },
      child: Expanded(
        child: Container(
          height: 140,
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: ShaderMask(
                  shaderCallback: (rect) {
                    return LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                      colors: [gradientStart, gradientEnd],
                    ).createShader(
                      Rect.fromLTRB(0, -20, rect.width, rect.height),
                    );
                  },
                  blendMode: BlendMode.darken,
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: ExactAssetImage(image),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      flex: 2,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            name,
                            style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: Colors.white),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Row(
                            children: [
                              const Icon(
                                Icons.pin_drop,
                                color: Colors.white,
                                size: 20,
                              ),
                              const SizedBox(width: 10),
                              Text(
                                place,
                                style: const TextStyle(
                                  fontSize: 8,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          const SizedBox(
                            height: 8,
                          ),
                          const Icon(
                            Icons.star,
                            color: Palette.yellowStar,
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Text(
                            '$rate/5',
                            style: const TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}