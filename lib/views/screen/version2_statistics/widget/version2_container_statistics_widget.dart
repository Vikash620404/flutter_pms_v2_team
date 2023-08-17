import 'package:flutter/material.dart';

import '../../milestone/widget/circular_progress_bar_widget.dart';

class Version2ContainerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, right: 20, top: 20),
      child: Container(
        height: 120,
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
                  padding: const EdgeInsets.only(left: 20.0,top: 35),
                  child: Text(
                    'Version 2 Statistics',
                    style: TextStyle(
                        color: Color(0xFF000000),
                        fontWeight: FontWeight.bold,
                        fontSize: 13),
                  ),
                ),
                SizedBox(height: 20),

                ProjectStatusWidget(
                  color: Color(0xFF000000),
                  label: 'l-service project',
                ),
              ],
            ),
            SizedBox(
              height: 110,
              width: 100,
              child: CircularProgressBar(

                value: 0.75,
                backgroundColor: Color(0xFFE2D5D5),
                progressColor: Color(0xFF5A5859),
                strokeWidth: 4,
                progressText: "75%",

              ),
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
    return Row(
      children: [

        SizedBox(width: 10),
        Text(
          label,
          style: TextStyle(
              color: Color(0xFF595454),
              fontWeight: FontWeight.w600,
              fontSize: 13),
        )
      ],
    );
  }
}

