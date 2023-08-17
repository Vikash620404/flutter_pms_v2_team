import 'package:flutter/material.dart';

import 'const_color.dart';

class CustomContainer extends StatelessWidget {
  final String imagePath;
  final String count;
  final String label;

  CustomContainer({
    required this.imagePath,
    required this.count,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Expanded(
        child: Container(
          //height: 130,
          width: 170,
          // Adjust the width as needed
          decoration: BoxDecoration(
            color: Colors.white, // Set the container background color to white
            borderRadius: BorderRadius.circular(15.0),
            border: Border.all(
              color: AppColors.lightgreycolor, // Set the border color to grey
              width: 1.0, // Set the border width
            ),
          ),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10.0,right: 30,bottom: 20),
                  child: SizedBox(
                    height: 40,
                    width:40,
                    child: Image.asset(imagePath),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 40.0),
                  child: Text(
                    count,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: AppColors.deepgreycolor,
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 20.0,bottom: 10),
                  child: Text(label),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
