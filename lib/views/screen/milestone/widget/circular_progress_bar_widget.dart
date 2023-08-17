import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../widgets/const_color.dart';

class CircularProgressBar extends StatelessWidget {
  final double value;
  final Color backgroundColor;
  final Color progressColor;
  final double strokeWidth;
  final String progressText;
  final String labelText;

  const CircularProgressBar({super.key,
    this.value = 0.2,
    this.backgroundColor = AppColors.lightgreycolor,
    this.progressColor = AppColors.deepgreycolor,
    this.strokeWidth = 4,
    this.progressText = '',
    this.labelText = '',
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 18.0, top: 20, bottom: 10),
      child: Stack(
        alignment: Alignment.center,
        children: [
          SizedBox(
            width: 90,
            height: 90,
            child: CircularProgressIndicator(
              value: value,
              backgroundColor: backgroundColor,
              valueColor: AlwaysStoppedAnimation<Color>(progressColor),
              strokeWidth: strokeWidth,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 40.0),
            child: Column(
              children: [
                Text(
                  progressText,
                  style: const TextStyle(
                    fontWeight: FontWeight.w500,
                    color: AppColors.blackcolor,
                  ),
                ),
                Text(
                  labelText,
                  style: const TextStyle(
                    color: AppColors.blackcolor,
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
