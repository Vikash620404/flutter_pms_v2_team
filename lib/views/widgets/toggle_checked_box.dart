import 'package:flutter/material.dart';

class ToggleableCheckBox extends StatefulWidget {
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
        height: 15,
        width: 15,
        decoration: BoxDecoration(
          color: _isChecked ? Colors.white : Color(0xFFFFFFFF),
          borderRadius: BorderRadius.circular(3.0),
        ),
        child: _isChecked
            ? Center(
          child: Icon(
            Icons.check,
            color: Colors.black,
            size: 17.0,
          ),
        )
            : null,
      ),
    );
  }
}
