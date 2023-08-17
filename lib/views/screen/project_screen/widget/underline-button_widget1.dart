import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../widgets/const_color.dart';

class UnderlineButtonWidget1 extends StatelessWidget {
  const UnderlineButtonWidget1({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          _buildButton('Pending'),
          _buildButton('In-Progress'),
          _buildButton('Completed'),
        ],
      ),
    );
  }

  Widget _buildButton(String text) {
    return Container(
      margin: EdgeInsets.only(right: 10.0),
      constraints: BoxConstraints(minWidth: 100), // Add this line
      decoration: BoxDecoration(
        color: AppColors.whitecolor,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.transparent),
      ),
      child: TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(
          primary: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: Text(
          text,
          style: const TextStyle(
            color: AppColors.deepgreycolor,
            decoration: TextDecoration.underline,
          ),
        ),
      ),
    );
  }
}
