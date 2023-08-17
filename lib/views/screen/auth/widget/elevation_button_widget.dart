import 'package:flutter/material.dart';
import 'package:flutter_pms_v2_team/views/widgets/const_color.dart';

class ElevationButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color buttonColor; // Add a property for the button color
  final BorderRadius borderRadius;

  const ElevationButton({super.key,
    required this.text,
    required this.onPressed,
    this.buttonColor = AppColors.greycolor,  // Default color if not provided
    this.borderRadius = const BorderRadius.all(Radius.circular(15.0)),
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: SizedBox(
        height: 50,
        width: double.infinity,
        child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            primary: buttonColor, // Set the button color here
            shape: RoundedRectangleBorder(
              borderRadius: borderRadius, // Set the border radius here
            ),
          ),
          child: Text(text,style: const TextStyle(fontWeight: FontWeight.w400,fontSize: 17),),
        ),
      ),
    );
  }
}
