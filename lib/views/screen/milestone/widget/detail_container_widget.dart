import 'package:flutter/cupertino.dart';

import '../../../widgets/const_color.dart';

class DetailContainerWidget extends StatefulWidget {
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

  DetailContainerWidget({
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
  _DetailContainerWidgetState createState() => _DetailContainerWidgetState();
}

class _DetailContainerWidgetState extends State<DetailContainerWidget> {
  late String statusTitle;
  late String statusText;
  late String durationTitle;
  late String durationText;
  late String dateCompletedTitle;
  late String dateCompletedText;
  late String managerTitle;
  late String managerText;
  late String assignedDateTitle;
  late String assignedDateText;

  @override
  void initState() {
    super.initState();
    statusTitle = widget.statusTitle;
    statusText = widget.statusText;
    durationTitle = widget.durationTitle;
    durationText = widget.durationText;
    dateCompletedTitle = widget.dateCompletedTitle;
    dateCompletedText = widget.dateCompletedText;
    managerTitle = widget.managerTitle;
    managerText = widget.managerText;
    assignedDateTitle = widget.assignedDateTitle;
    assignedDateText = widget.assignedDateText;
  }

  void updateValues({
    required String statusTitle,
    required String statusText,
    required String durationTitle,
    required String durationText,
    required String dateCompletedTitle,
    required String dateCompletedText,
    required String managerTitle,
    required String managerText,
    required String assignedDateTitle,
    required String assignedDateText,
  }) {
    setState(() {
      this.statusTitle = statusTitle ;
      this.statusText = statusText ;
      this.durationTitle = durationTitle ;
      this.durationText = durationText ;
      this.dateCompletedTitle = dateCompletedTitle ;
      this.dateCompletedText = dateCompletedText ;
      this.managerTitle = managerTitle ;
      this.managerText = managerText ;
      this.assignedDateTitle = assignedDateTitle ;
      this.assignedDateText = assignedDateText ;
    });
  }

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
              _buildRowWithTextAndImage(widget.statusTitle, statusText, "assets/images/status_icon.png"),
              const SizedBox(height: 30),
              _buildRowWithTextAndImage(widget.durationTitle, durationText, "assets/images/duration_icon.png"),
              const SizedBox(height: 30),
              _buildRowWithTextAndImage(widget.dateCompletedTitle, dateCompletedText, "assets/images/duration_icon.png"),
              const SizedBox(height: 30),
              _buildRowWithTextAndImage(widget.managerTitle, managerText, "assets/images/profile.png"),
              const SizedBox(height: 30),
              _buildRowWithTextAndImage(widget.assignedDateTitle, assignedDateText, "assets/images/duration_icon.png"),
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
