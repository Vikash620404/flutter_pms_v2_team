import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SegmentedControl extends StatefulWidget {
  const SegmentedControl({super.key});

  @override
  State<SegmentedControl> createState() => _SegmentedControlState();
}

class _SegmentedControlState extends State<SegmentedControl> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        children: [
          Expanded(
            child: Container(
              height: 40,
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xFFC6C6C6)),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Row(
                children: [
                  _buildButton(0, 'Upcoming'),
                  _buildButton(1, 'In progress'),
                  _buildButton(2, 'Completed'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildButton(int index, String label) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          setState(() {
            _selectedIndex = index;
          });
        },
        child: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: _selectedIndex == index ? Color(0xFFC6C6C6) : Colors.white,
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Padding(
            padding: EdgeInsets.all(8.0), // Adjust this padding as needed
            child: Text(
              label,
              style: TextStyle(
                fontWeight: FontWeight.w500,
                color: _selectedIndex == index ? Colors.white : Colors.black,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
