import 'package:flutter/material.dart';

class MultipleDropDownsRow extends StatefulWidget {
  const MultipleDropDownsRow({super.key});

  @override
  _MultipleDropDownsRowState createState() => _MultipleDropDownsRowState();
}

class _MultipleDropDownsRowState extends State<MultipleDropDownsRow> {
  String selectedVersion = 'version 1';
  String selectedStatus = 'status 1';
  String selectedPeriod = 'period 1';

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Container(
            height: 30,
            width: 120,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              border: Border.all(color: Colors.grey), // Add border color
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: DropdownButtonHideUnderline(
                child: DropdownButton<String>(
                  value: selectedVersion,
                  items: ['version 1', 'version 2', 'version 3']
                      .map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  })
                      .toList(),
                  onChanged: (String? newValue) {
                    if (newValue != null) {
                      setState(() {
                        selectedVersion = newValue;
                      });
                    }
                  },
                ),
              ),
            ),
          ),
          const SizedBox(width: 20),
          Container(
            width: 110,
            height: 30,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              border: Border.all(color: Colors.grey), // Add border color
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: DropdownButtonHideUnderline(
                child: DropdownButton<String>(
                  value: selectedStatus,
                  items: ['status 1', 'status 2', 'status 3']
                      .map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  })
                      .toList(),
                  onChanged: (String? newValue) {
                    if (newValue != null) {
                      setState(() {
                        selectedStatus = newValue;
                      });
                    }
                  },
                ),
              ),
            ),
          ),
          const SizedBox(width: 20),
          Container(
            width: 110,
            height: 30,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              border: Border.all(color: Colors.grey), // Add border color
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: DropdownButtonHideUnderline(
                child: DropdownButton<String>(
                  value: selectedPeriod,
                  items: ['period 1', 'period 2', 'period 3']
                      .map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  })
                      .toList(),
                  onChanged: (String? newValue) {
                    if (newValue != null) {
                      setState(() {
                        selectedPeriod = newValue;
                      });
                    }
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
