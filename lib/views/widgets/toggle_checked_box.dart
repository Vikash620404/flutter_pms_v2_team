import 'package:flutter/material.dart';

import 'const_color.dart';

class ToggleableCheckBox extends StatefulWidget {
  final Color borderColor; // Add this line to define the parameter

  ToggleableCheckBox({required this.borderColor}); // Add this constructor

  @override
  _ToggleableCheckBoxState createState() => _ToggleableCheckBoxState();
}

class _ToggleableCheckBoxState extends State<ToggleableCheckBox> {
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _isChecked = !_isChecked;
        });
      },
      child: Container(
        height: 20,
        width: 20,
        decoration: BoxDecoration(
          color: _isChecked ? AppColors.whitecolor : const Color(0xFFFFFFFF),
          border: Border.all(color: widget.borderColor), // Use the borderColor parameter here
          borderRadius: BorderRadius.circular(3.0),
        ),
        child: _isChecked
            ? const Center(
          child: Icon(
            Icons.check,
            color: Colors.black,
            size: 20.0,
          ),
        )
            : null,
      ),
    );
  }
}
