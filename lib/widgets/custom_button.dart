import 'package:flutter/material.dart';

import '../constans.dart';

class CustomButton extends StatelessWidget {
  final Function() action;
  final String name;
  const CustomButton({
    super.key, required this.action, required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: action,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 38),
        alignment: Alignment.center,
        height: 60,
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Palette.primaryGreen,
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        child: ButtonTheme(
          child: Text(
            name,
            style: const TextStyle(
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}