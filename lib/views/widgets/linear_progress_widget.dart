import 'package:flutter/material.dart';

import 'const_color.dart';

class LinearProgressWidget extends StatelessWidget {
  final String labelText;
  final double progressValue;

  const LinearProgressWidget({
    required this.labelText,
    required this.progressValue,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 43.0),
              child: Text(labelText, style: TextStyle(fontSize: 15)),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 18.0),
              child: Text(
                '${(progressValue * 100).toInt()}%', // Convert progress to percentage
                style: const TextStyle(
                    color: AppColors.deepgreycolor,
                    fontSize: 15,
                    fontWeight: FontWeight.w600),
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 43.0, right: 18, top: 12),
          child: LinearProgressIndicator(
            backgroundColor: AppColors.greycolor,
            valueColor: const AlwaysStoppedAnimation<Color>(AppColors.deepgreycolor),
            value: progressValue,
          ),
        ),
      ],
    );
  }
}
