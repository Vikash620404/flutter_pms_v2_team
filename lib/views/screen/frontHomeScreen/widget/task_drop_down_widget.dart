import 'package:flutter/material.dart';
import 'package:flutter_pms_v2_team/views/widgets/const_color.dart';

class TaskDropDownWidget extends StatefulWidget {
  final String labelText;

  const TaskDropDownWidget({super.key, required this.labelText});

  @override
  _TaskDropDownWidgetState createState() => _TaskDropDownWidgetState();
}

class _TaskDropDownWidgetState extends State<TaskDropDownWidget> {
  String selectedValue = 'version 1'; // Set default selected value here

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 22.0),
          child: Text(
            widget.labelText, // Use the provided labelText here
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 21.0),
          child: Container(
            height: 35,
            width: 100, // Adjust the width as needed
            decoration: BoxDecoration(
              color: AppColors.greycolor,
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Row(
              children: [
                const Spacer(),
                DropdownButton<String>(
                  value: selectedValue,
                  items: <String>['version 1', 'version 2', 'version 3']
                      .map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    if (newValue != null) {
                      setState(() {
                        selectedValue = newValue;
                      });
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
