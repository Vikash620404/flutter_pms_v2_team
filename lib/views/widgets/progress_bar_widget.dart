import 'package:flutter/material.dart';

class CustomProgressBar extends StatelessWidget {
  final double progress;
  final double indicatorSize;
  final Color indicatorColor;
  final Color backgroundColor;

  CustomProgressBar({
    required this.progress,
    this.indicatorSize = 8.0,
    this.indicatorColor = Colors.blue, // Color of the rounded indicator
    this.backgroundColor = Colors.grey,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: indicatorSize,
          color: backgroundColor,
        ),
        Container(
          height: indicatorSize,
          width: MediaQuery.of(context).size.width * progress,
          color: indicatorColor,
        ),
        Positioned(
          right: 0,
          top: 0,
          child: Container(
            width: indicatorSize,
            height: indicatorSize,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: indicatorColor,
            ),
          ),
        ),
      ],
    );
  }
}


