import 'package:flutter/material.dart';

class VersionItem extends StatelessWidget {
  final String versionTitle;
  final String versionStatus;
  final String moduleText;
  final String imagePath; // New property for the image

  const VersionItem({
    required this.versionTitle,
    required this.versionStatus,
    required this.moduleText,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(


      width: double.infinity,
      decoration: BoxDecoration(
        color: Color(0xFFEEEEEE),
        borderRadius: BorderRadius.circular(10), // Adjust the corner radius as needed
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 15.0),
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
          SizedBox(height: 80),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Row(
              children: [
                Image.asset(imagePath), // Display the custom image
                SizedBox(width: 10),
                Text(moduleText),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
