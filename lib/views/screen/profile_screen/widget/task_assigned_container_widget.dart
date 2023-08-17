import 'package:flutter/material.dart';

import '../../milestone/widget/circular_progress_bar_widget.dart';

class TaskAssignedWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, right: 20, top: 20),
      child: Container(
        height: 140,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xFFF9F9F9),
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Color(0xFFDFDCDC)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 5.0, top: 25),
                  child: Text(
                    'Task Assigned(34)',
                    style: TextStyle(
                        color: Color(0xFF000000),
                        fontWeight: FontWeight.bold,
                        fontSize: 13),
                  ),
                ),
                SizedBox(height: 15),
                Padding(
                  padding: const EdgeInsets.only(left: 5.0),
                  child: ProjectStatusWidget(
                    color: Color(0xFFE2D5D5),
                    label: 'In - progress(4%)',
                  ),
                ),
                SizedBox(height: 15),
                ProjectStatusWidget(
                  color: Color(0xFF000000),
                  label: 'Completed(30%)',
                ),
              ],
            ),
            CircularProgressBar(
              value: 0.9,
              backgroundColor: Color(0xFFE2D5D5),
              progressColor: Color(0xFF5A5859),
              strokeWidth: 4,
              progressText: "90%",
              labelText: "Completed",
            )
          ],
        ),
      ),
    );
  }
}

class ProjectStatusWidget extends StatelessWidget {
  final Color color;
  final String label;

  ProjectStatusWidget({required this.color, required this.label});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30.0),
      child: Row(
        children: [
          Container(
            height: 10,
            width: 10,
            color: color,
          ),
          SizedBox(width: 10),
          Text(
            label,
            style: TextStyle(
                color: Color(0xFF595454),
                fontWeight: FontWeight.w600,
                fontSize: 13),
          )
        ],
      ),
    );
  }
}

