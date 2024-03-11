import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:submission_dicoding/core.dart';
import 'package:submission_dicoding/screens/detail_destination_screen.dart';

class PopularItem extends StatelessWidget {
  final Destionation desid;
  final String name;
  final String place;
  final String rate;
  final String image;
  const PopularItem(
      {super.key,
      required this.desid,
      required this.name,
      required this.place,
      required this.rate,
      required this.image});

  @override
  Widget build(BuildContext context) {
    Color gradientStart = Colors.transparent;
    Color gradientEnd = Colors.black;
    return GestureDetector(
      onTap: (){
        PersistentNavBarNavigator.pushNewScreen(context, screen: DetailDestinationScreen(desId: desid), withNavBar: false);
      },
      child: Container(
        width: 240,
        margin: const EdgeInsets.only(right: 10),
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: ShaderMask(
                shaderCallback: (rect) {
                  return LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [gradientStart, gradientEnd],
                  ).createShader(
                    Rect.fromLTRB(0, 30, rect.width, rect.height),
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
              child: SizedBox(
                width: 200,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.pin_drop,
                          color: Colors.white,
                          size: 20,
                        ),
                        const SizedBox(width: 10),
                        SizedBox(
                          width: 160,
                          child: Text(
                            place,
                            style: const TextStyle(
                              fontSize: 8,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
