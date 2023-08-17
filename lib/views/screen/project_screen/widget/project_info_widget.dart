import 'package:flutter/material.dart';

import '../../../widgets/const_color.dart';

class ProjectInfoWidget extends StatelessWidget {
  final String statusTitle;
  final String statusText;
  final String durationTitle;
  final String durationText;
  final String dateCompletedTitle;
  final String dateCompletedText;
  final String managerTitle;
  final String managerText;
  final String assignedDateTitle;
  final String assignedDateText;

  ProjectInfoWidget({
    this.statusTitle = 'Status',
    this.statusText = 'In progress',
    this.durationTitle = 'Duration',
    this.durationText = 'May 12th - Aug 20th',
    this.dateCompletedTitle = 'Date Completed',
    this.dateCompletedText = 'August 20th 2023',
    this.managerTitle = 'Manager',
    this.managerText = 'Vikram Jha',
    this.assignedDateTitle = 'Assigned Date',
    this.assignedDateText = 'August 20th 2023',
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: AppColors.whitecolor,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: AppColors.mediumgrey),
        ),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              _buildRowWithTextAndImage(statusTitle, statusText, "assets/images/status_icon.png"),
              const SizedBox(height: 30),
              _buildRowWithTextAndImage(durationTitle, durationText, "assets/images/duration_icon.png"),
              const SizedBox(height: 30),
              _buildRowWithTextAndImage(dateCompletedTitle, dateCompletedText, "assets/images/duration_icon.png"),
              const SizedBox(height: 30),
              _buildRowWithTextAndImage(managerTitle, managerText, "assets/images/profile.png"),
              const SizedBox(height: 30),
              _buildRowWithTextAndImage(assignedDateTitle, assignedDateText, "assets/images/duration_icon.png"),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildRowWithTextAndImage(String title, String content, String imagePath) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Row(
            children: [
              Image.asset(imagePath),
              const SizedBox(width: 10),
              Text(title, style: const TextStyle(color: Color(0xFF595454))),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 20.0),
          child: Text(content, style: const TextStyle(color: Color(0xFF595454), fontWeight: FontWeight.w600)),
        ),
      ],
    );
  }
}
