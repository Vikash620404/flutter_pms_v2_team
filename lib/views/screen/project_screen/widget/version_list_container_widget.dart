import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

class SegmentedButtonShowCard extends StatelessWidget {
  final String title;

  final String flagImage;
  final String mileText;
  final String dotImage;
  final String webText;

  const SegmentedButtonShowCard(
      {super.key,
      required this.title,
      required this.flagImage,
      required this.mileText,
      required this.webText,
      required this.dotImage,
      required TextStyle webTextStyle, required  onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: const Color(0xFFEEEEEE),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(title),
              //   Image.asset(arrowImage),
            ],
          ),
          const SizedBox(
            height: 18,
          ),
          Row(
            children: [
              Image.asset(flagImage),
              const SizedBox(
                width: 5,
              ),
              Text(mileText),
              const SizedBox(
                width: 5,
              ),
              Image.asset(dotImage),
              const SizedBox(
                width: 5,
              ),
              Text(webText)
            ],
          ),
        ],
      ),
    );
  }
}
