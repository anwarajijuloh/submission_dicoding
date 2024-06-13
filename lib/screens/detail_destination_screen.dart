import 'package:flutter/material.dart';
import 'package:submission_dicoding/core.dart';

class DetailDestinationScreen extends StatefulWidget {
  final Destionation desId;
  const DetailDestinationScreen({super.key, required this.desId});

  @override
  State<DetailDestinationScreen> createState() =>
      _DetailDestinationScreenState();
}

class _DetailDestinationScreenState extends State<DetailDestinationScreen> {
  final List<Favorited> myfavorited = favorites;
  bool isFavo = false;
  @override
  Widget build(BuildContext context) {
    for (Favorited fav in myfavorited) {
      if (fav.desId.desId == widget.desId.desId) {
        if (fav.isFavorited!) {
          isFavo = true;
        }
      }
    }
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Stack(
              children: [
                Container(
                  height: 400,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(widget.desId.desImage),
                        fit: BoxFit.cover,),
                  ),
                ),
                Positioned(
                  top: 50,
                  left: 25,
                  child: Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                        color: Colors.black.withOpacity(.5),
                        borderRadius: BorderRadius.circular(50)),
                    child: IconButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      icon: const Icon(
                        Icons.chevron_left_rounded,
                        size: 34,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 40,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15),
                      ),
                    ),
                    child: Container(
                      width: 10,
                      height: 6,
                      margin: const EdgeInsets.only(left: 140, right: 140, top: 10, bottom: 25),
                      decoration: BoxDecoration(
                        color: Palette.darkGrey1,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),

                  ),
                ),
              ],
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _TitleDestination(
                      title: widget.desId.desName,
                      place: widget.desId.place,
                      price: widget.desId.price,
                    ),
                    _InfoDestination(
                      rating: widget.desId.desRating,
                      suhu: widget.desId.suhu,
                      depature: widget.desId.depature,
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
                        widget.desId.description,
                        textAlign: TextAlign.justify,
                        style: const TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                  ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        margin: const EdgeInsets.symmetric(horizontal: 22, vertical: 11),
        height: 56,
        width: MediaQuery.of(context).size.width - 40,
        child: ElevatedButton(
          style: const ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(Palette.primaryGreen),
          ),
          onPressed: () {
            isFavo = true;
            setState(() {});
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                isFavo ? Icons.favorite : Icons.favorite_outline,
                color: Palette.secondaryGrey1,
              ),
              const SizedBox(width: 10),
              Text(
                isFavo ? 'Favorited' : 'Add Favorited',
                style: const TextStyle(color: Palette.secondaryGrey1),
              ),
            ],
          ),
        ),
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
