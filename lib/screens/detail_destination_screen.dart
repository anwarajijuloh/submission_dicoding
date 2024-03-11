import 'package:flutter/material.dart';
import 'package:submission_dicoding/core.dart';

class DetailDestinationScreen extends StatelessWidget {
  final Destionation desId;
  const DetailDestinationScreen({super.key, required this.desId});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: 360,
            child: Image(
              image: AssetImage(desId.desImage),
              fit: BoxFit.cover,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.only(top: 50, left: 25),
                width: 42,
                height: 42,
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(.4),
                  borderRadius: BorderRadius.circular(40),
                ),
                child: IconButton(
                  icon: const Icon(
                    Icons.chevron_left_rounded,
                    color: Colors.white,
                  ),
                  onPressed: () => Navigator.pop(context),
                ),
              ),
              Container(
                height: 540,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _TitleDestination(
                      title: desId.desName,
                      place: desId.place,
                      price: desId.price,
                    ),
                    _InfoDestination(
                      rating: desId.desRating,
                      suhu: desId.suhu,
                      depature: desId.depature,
                    ),
                    const SizedBox(height: 20),
                    Container(
                      margin: const EdgeInsets.only(left: 22),
                      child: const Text(
                        'Description',
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 22),
                      child: Text(
                        desId.description,
                        maxLines: 8,
                        textAlign: TextAlign.justify,
                        style: const TextStyle(
                            fontWeight: FontWeight.w400, fontSize: 12, overflow: TextOverflow.ellipsis, ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 22),
                      height: 56,
                      child: ElevatedButton(
                        style: const ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(Palette.primaryGreen),
                        ),
                        onPressed: () {},
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.favorite_outline,
                              color: Palette.secondaryGrey1,
                            ),
                            SizedBox(width: 10),
                            Text(
                              'Add Favorite',
                              style: TextStyle(color: Palette.secondaryGrey1),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _InfoDestination extends StatelessWidget {
  final double rating;
  final double suhu;
  final String depature;
  const _InfoDestination({
    required this.rating,
    required this.suhu,
    required this.depature,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 22),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        border: Border.all(width: 2, color: Palette.secondaryGrey2),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              Row(
                children: [
                  const Icon(
                    Icons.star_rounded,
                    color: Palette.yellowStar,
                  ),
                  const SizedBox(
                    width: 6,
                  ),
                  Text(
                    '$rating',
                    style: const TextStyle(fontWeight: FontWeight.w700),
                  ),
                ],
              ),
              const SizedBox(height: 6),
              const Text(
                '237 Reviews',
                style: TextStyle(
                    fontSize: 8,
                    fontWeight: FontWeight.w500,
                    color: Palette.darkGrey2),
              ),
            ],
          ),
          const SizedBox(
              height: 34,
              child:
                  VerticalDivider(thickness: 2, color: Palette.secondaryGrey2)),
          Column(
            children: [
              Row(
                children: [
                  const Icon(
                    Icons.cloud,
                    color: Palette.pinkCloud,
                  ),
                  const SizedBox(
                    width: 6,
                  ),
                  Text(
                    '$suhu℃',
                    style: const TextStyle(fontWeight: FontWeight.w700),
                  ),
                ],
              ),
              const SizedBox(height: 6),
              const Text(
                'Sunny',
                style: TextStyle(
                    fontSize: 8,
                    fontWeight: FontWeight.w500,
                    color: Palette.darkGrey2),
              ),
            ],
          ),
          const SizedBox(
              height: 34,
              child:
                  VerticalDivider(thickness: 2, color: Palette.secondaryGrey2)),
          Column(
            children: [
              Row(
                children: [
                  const Icon(
                    Icons.flight_takeoff_rounded,
                    color: Colors.blueAccent,
                  ),
                  const SizedBox(
                    width: 6,
                  ),
                  Text(
                    depature,
                    style: const TextStyle(fontWeight: FontWeight.w700),
                  ),
                ],
              ),
              const SizedBox(height: 6),
              const Text(
                'Depature',
                style: TextStyle(
                  fontSize: 8,
                  fontWeight: FontWeight.w500,
                  color: Palette.darkGrey2,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _TitleDestination extends StatelessWidget {
  final String title;
  final String place;
  final double price;
  const _TitleDestination({
    required this.title,
    required this.place,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 22.0, vertical: 18.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width - 120,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Palette.darkGreen),
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    const Icon(
                      Icons.pin_drop_rounded,
                      color: Palette.pinkCloud,
                    ),
                    const SizedBox(width: 6.0),
                    SizedBox(
                      width: 200,
                      child: Text(
                        place,
                        style: const TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w600,
                          color: Palette.darkGrey2,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Text(
            '${price}Jt',
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: Palette.darkGreen,
            ),
          ),
        ],
      ),
    );
  }
}
