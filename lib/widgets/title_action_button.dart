import 'package:flutter/material.dart';

import '../core.dart';

class TitleActionButton extends StatelessWidget {
  final Function() myAction;
  final String myTitle;
  const TitleActionButton({
    super.key, required this.myAction, required this.myTitle,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding:
            const EdgeInsets.symmetric(horizontal: 20.0, vertical: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              myTitle,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Palette.darkGrey1,
              ),
            ),
            TextButton(
              onPressed: myAction,
              child: const Text(
                'See all',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  color: Palette.primaryGreen,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
