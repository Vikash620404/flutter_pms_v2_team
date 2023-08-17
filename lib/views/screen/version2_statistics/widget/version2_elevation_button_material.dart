import 'package:flutter/material.dart';

class VersionItem extends StatelessWidget {
  final String versionTitle;
  final String imagePath2;
  final String moduleText2;
  final String imagePath3;
  final String moduleText;
  final String imagePath; // New property for the image
  final String versionStatus;

  const VersionItem({
    required this.versionTitle,
    required this.imagePath2,
    required this.moduleText2,
    required this.imagePath3,
    required this.moduleText,
    required this.imagePath,
    required this.versionStatus,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20.0),
      child: Container(


        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xFFEEEEEE),
          borderRadius: BorderRadius.circular(10), // Adjust the corner radius as needed
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 15.0,bottom: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Text(
                      versionTitle,
                      style: TextStyle(
                          color: Color(0xFF595454),
                          fontSize: 18,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20.0, top: 16),
                    child:  Image.asset(imagePath2),
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Row(
                children: [
                  Image.asset(imagePath3), // Display the custom image
                  SizedBox(width: 10),
                  Text(moduleText2),
                ],
              ),
            ),
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.only(left: 20.0,bottom: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.asset(imagePath), // Display the custom image
                      SizedBox(width: 10),
                      Text(moduleText),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20.0, top: 16),
                    child: Container(
                      height: 25,
                      width: 100,
                      child: Center(
                          child: Text(
                            versionStatus,
                            style: TextStyle(fontWeight: FontWeight.w500),
                          )),
                      decoration: BoxDecoration(
                        color: Color(0xFFFFFFFF),
                        borderRadius: BorderRadius.circular(13.0),
                        border: Border.all(color: Color(0xFFFFFFFF)),
                      ),
                    ),
                  ),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
