import 'package:flutter/material.dart';

class ElevationButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color buttonColor; // Add a property for the button color
  final BorderRadius borderRadius;

  ElevationButton({
    required this.text,
    required this.onPressed,
    this.buttonColor = const Color(0xFFB7B7B7),  // Default color if not provided
    this.borderRadius = const BorderRadius.all(Radius.circular(15.0)),
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 55,
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            primary: buttonColor, // Set the button color here
            shape: RoundedRectangleBorder(
              borderRadius: borderRadius, // Set the border radius here
            ),
          ),
          child: Text(text,style: TextStyle(fontWeight: FontWeight.w500,fontSize: 20),),
        ),
      ),
    );
  }
}
