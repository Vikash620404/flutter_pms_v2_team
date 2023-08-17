


import 'package:flutter/material.dart';

class Version2ProjectInfoWidget extends StatelessWidget {
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

  Version2ProjectInfoWidget({
    this.statusTitle = 'Status',
    this.statusText = 'In progress',
    this.durationTitle = 'Duration',
    this.durationText = 'May 12th - Aug 20th',
    this.dateCompletedTitle = 'Day Remaining',
    this.dateCompletedText = 'Due in 6 days',
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
          color: Color(0xFFFFFFFF),
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Color(0xFFE9E8E8)),
        ),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              _buildRowWithTextAndImage(statusTitle, statusText, "assets/images/status_Icon.png"),
              SizedBox(height: 30),
              _buildRowWithTextAndImage(durationTitle, durationText, "assets/images/duration_icon.png"),
              SizedBox(height: 30),
              _buildRowWithTextAndImage(dateCompletedTitle, dateCompletedText, "assets/images/duration_icon.png"),
              SizedBox(height: 30),
              _buildRowWithTextAndImage(managerTitle, managerText, "assets/images/profile.png"),
              SizedBox(height: 30),
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
              SizedBox(width: 10),
              Text(title, style: TextStyle(color: Color(0xFF595454))),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 20.0),
          child: Text(content, style: TextStyle(color: Color(0xFF595454), fontWeight: FontWeight.w600)),
        ),
      ],
    );
  }
}
