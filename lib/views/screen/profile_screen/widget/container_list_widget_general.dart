import 'package:flutter/material.dart';

class CustomListItem extends StatelessWidget {
  final String imageAsset;
  final String text;

  const CustomListItem({required this.imageAsset, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15.0),
      child: Container(
        color: Color(0xFFF9F9F9),
        height: 45,
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Image.asset(imageAsset),
                SizedBox(width: 10),
                Text(text),
              ],
            ),
            Icon(Icons.arrow_right),
          ],
        ),
      ),
    );
  }
}
