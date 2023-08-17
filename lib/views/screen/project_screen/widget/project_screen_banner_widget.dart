import 'package:flutter/material.dart';

import '../../../widgets/const_color.dart';

class CustomRowWidget extends StatelessWidget {
  final String labelText;

  CustomRowWidget({required this.labelText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40.0),
      child: _buildCustomRow(),
    );
  }

  Widget _buildCustomRow() {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Container(
            height: 30,
            width: 30,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black26),
              borderRadius: BorderRadius.circular(5),
              color: Colors.white,
            ),
            child: Transform.scale(
              scale: 1.0,
              child: Image.asset("assets/images/arrow-left.png"),
            ),
          ),
        ),
        const SizedBox(width: 10),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(
              labelText, // Use the labelText parameter here
              style: const TextStyle(
                color: AppColors.deepgreycolor,// You can adjust the text color here
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ],
    );
  }
}
