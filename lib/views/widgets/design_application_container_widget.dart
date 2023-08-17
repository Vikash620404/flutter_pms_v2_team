// custom_widgets.dart
import 'package:flutter/material.dart';
import 'package:flutter_pms_v2_team/views/widgets/toggle_checked_box.dart';

import 'const_color.dart';
import 'linear_progress_widget.dart';

class CustomContentWidget extends StatelessWidget {
  final String imagePath;
  final String text;
  final String styleGuideText;
  final String arrowImage; // Add this property for the arrow image
  final String progressBarText; // Add this property for progress bar text
  final double progressBarValue;

  CustomContentWidget({
    required this.imagePath,
    required this.text,
    required this.styleGuideText,
    required this.arrowImage,
    required this.progressBarText,
    required this.progressBarValue,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0,bottom: 20),
      child: Container(
        height: 140,
        decoration: BoxDecoration(
          color: AppColors.bluegreycolor,
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: ToggleableCheckBox(
                          borderColor: AppColors.whitecolor,
                        ),
                      ),
                      const SizedBox(width: 10),
                      Text(
                        styleGuideText,
                        style: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 18.0),
                    child: Image.asset(arrowImage), // Use the arrow image here
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0, left: 40.0),
              child: Row(
                children: [
                  Image.asset(imagePath),
                  SizedBox(width: 10),
                  Text(
                    text,
                    style: const TextStyle(
                      color: AppColors.deepgreycolor,
                      fontWeight: FontWeight.w400,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 25),
            LinearProgressWidget(
              labelText: progressBarText,
              progressValue: progressBarValue,
            ),
          ],
        ),
      ),
    );
  }
}
