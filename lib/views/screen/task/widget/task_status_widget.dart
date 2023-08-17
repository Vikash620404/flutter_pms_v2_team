import 'package:flutter/material.dart';

import '../../../widgets/global_app_color_widget.dart';


class TStatusCard extends StatefulWidget {
  final String statusImage;
  final String statusText;
  final String statusText2;
  final Color? overDueContainerBorderColor;
  final Color? overDueContainerColor;
  final Color? overDueColor;
  final String layerImage;
  final String projectTitleText;
  final String serviceText;
  final String calendarImage;
  final String durationText;
  final String dateText;
  final String timerImage;
  final String daysRemainingText;
  final String overdueText;
  final Color? overDueTextColor;
  final String profileImage;
  final String assignedManagerText;
  final String nameText;
  final String calendarImage2;
  final String assignDateText;
  final String yearText;

  const TStatusCard({
    Key? key,
    this.overDueContainerBorderColor,
    this.overDueContainerColor,
    this.overDueColor,
    required this.statusImage,
    required this.statusText,
    required this.statusText2,
    required this.layerImage,
    required this.projectTitleText,
    required this.serviceText,
    required this.calendarImage,
    required this.durationText,
    required this.dateText,
    required this.timerImage,
    required this.daysRemainingText,
    required this.overdueText,
    this.overDueTextColor,
    required this.profileImage,
    required this.assignedManagerText,
    required this.nameText,
    required this.calendarImage2,
    required this.assignDateText,
    required this.yearText,
  }) : super(key: key);

  @override
  State<TStatusCard> createState() => _TStatusCardState();
}

class _TStatusCardState extends State<TStatusCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        decoration: BoxDecoration(
          border: Border.all(color: containerBorderColor),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(children: [
            Row(
              children: [
                Image.asset(widget.statusImage),
                const SizedBox(
                  width: 8,
                ),
                Expanded(
                  child: Text(
                    widget.statusText,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(color: titleTextColor),
                  ),
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: segmentedBoxColor),
                        borderRadius: BorderRadius.circular(40),
                        color: whiteColor),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          overflow: TextOverflow.ellipsis,
                          widget.statusText2,
                          style: const TextStyle(color: subTitleTextColor),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            Row(
              children: [
                Image.asset(widget.layerImage),
                const SizedBox(
                  width: 8,
                ),
                Expanded(
                  child: Text(
                    overflow: TextOverflow.ellipsis,
                    widget.projectTitleText,
                    style: const TextStyle(color: titleTextColor),
                  ),
                ),
                Expanded(
                    child: Text(
                      overflow: TextOverflow.ellipsis,
                      widget.serviceText,
                      textAlign: TextAlign.end,
                      style: const TextStyle(color: subTitleTextColor),
                    )),
              ],
            ),
            const SizedBox(
              height: 14,
            ),
            Row(
              children: [
                Image.asset(widget.calendarImage),
                const SizedBox(
                  width: 8,
                ),
                Expanded(
                  child: Text(
                    overflow: TextOverflow.ellipsis,
                    widget.durationText,
                    style: const TextStyle(color: titleTextColor),
                  ),
                ),
                Expanded(
                    child: Text(
                      overflow: TextOverflow.ellipsis,
                      widget.dateText,
                      textAlign: TextAlign.end,
                      style: const TextStyle(color: subTitleTextColor),
                    )),
              ],
            ),
            const SizedBox(
              height: 14,
            ),
            Row(
              children: [
                Image.asset(widget.timerImage),
                const SizedBox(
                  width: 8,
                ),
                Expanded(
                  child: Text(
                    overflow: TextOverflow.ellipsis,
                    widget.daysRemainingText,
                    style: const TextStyle(color: titleTextColor),
                  ),
                ),
                Expanded(
                    child: Text(
                      overflow: TextOverflow.ellipsis,
                      widget.overdueText,
                      textAlign: TextAlign.end,
                      style: TextStyle(color: widget.overDueColor),
                    )),
              ],
            ),
            const SizedBox(
              height: 14,
            ),
            Row(
              children: [
                Image.asset(widget.profileImage),
                const SizedBox(
                  width: 8,
                ),
                Expanded(
                  child: Text(
                    overflow: TextOverflow.ellipsis,
                    widget.assignedManagerText,
                    style: const TextStyle(color: titleTextColor),
                  ),
                ),
                Expanded(
                    child: Text(
                      overflow: TextOverflow.ellipsis,
                      widget.nameText,
                      textAlign: TextAlign.end,
                      style: const TextStyle(color: subTitleTextColor),
                    )),
              ],
            ),
            const SizedBox(
              height: 14,
            ),
            Row(
              children: [
                Image.asset(widget.calendarImage2),
                const SizedBox(
                  width: 8,
                ),
                Expanded(
                  child: Text(
                    overflow: TextOverflow.ellipsis,
                    widget.assignDateText,
                    style: const TextStyle(color: titleTextColor),
                  ),
                ),
                Expanded(
                    child: Text(
                      overflow: TextOverflow.ellipsis,
                      widget.yearText,
                      textAlign: TextAlign.end,
                      style: const TextStyle(color: subTitleTextColor),
                    )),
              ],
            ),
          ]),
        ));
  }
}