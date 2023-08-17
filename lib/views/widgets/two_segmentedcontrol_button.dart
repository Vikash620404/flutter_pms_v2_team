import 'package:flutter/material.dart';

class TwoSegmentedControl extends StatefulWidget {
  const TwoSegmentedControl({super.key});

  @override
  State<TwoSegmentedControl> createState() => _TwoSegmentedControlState();
}

class _TwoSegmentedControlState extends State<TwoSegmentedControl> {
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
                border: Border.all(color: const Color(0xFFC6C6C6)),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Row(
                children: [
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
            color: _selectedIndex == index ? const Color(0xFFC6C6C6) : Colors.white,
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0), // Adjust this padding as needed
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
