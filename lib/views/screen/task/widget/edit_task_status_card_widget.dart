import 'package:flutter/material.dart';

import '../../../widgets/global_app_color_widget.dart';
import 'my_separate_widget.dart';


class EditTaskStatus extends StatefulWidget {
  final String text1;
  final String text2;
  final String text3;
  final String text4;
  final String image1;
  final String text5;


  const EditTaskStatus({
    Key? key,
    required this.text1,
    required this.text2,
    required this.text3,
    required this.text4,
    required this.image1,
    required this.text5,
  }) : super(key: key);

  @override
  State<EditTaskStatus> createState() => _EditTaskStatusState();
}

class _EditTaskStatusState extends State<EditTaskStatus> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: taskContainerColor,
          border: Border.all(color: taskBorderContainerColor),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      overflow: TextOverflow.ellipsis,
                      widget.text1,
                      style: const TextStyle(
                          color: taskTextColor,
                          fontSize: 10,
                          fontWeight: FontWeight.w400),
                    ),
                    Text(
                      overflow: TextOverflow.ellipsis,
                      widget.text2,
                      style: const TextStyle(
                          fontSize: 14,
                          color: taskTextColor2,
                          fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
                Expanded(
                    child: Text(
                      overflow: TextOverflow.ellipsis,
                      widget.text3,
                      style: const TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                          color: taskTextColor),
                      textAlign: TextAlign.end,
                    )),
                Container(
                  height: 25,
                  width: 25,
                  decoration: const BoxDecoration(color: Colors.white),
                  child: Transform.scale(
                      scale: 1, child: Image.asset(widget.image1)),
                ),
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            const MySeparator(),
            const SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  overflow: TextOverflow.ellipsis,
                  widget.text4,
                  style: const TextStyle(
                      color: taskTextColor,
                      fontWeight: FontWeight.w400,
                      fontSize: 14),
                ),
                Text(
                    overflow: TextOverflow.ellipsis,
                    widget.text5,
                    style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        color: taskTextColor2)),
              ],
            ),
          ]),
        ));
  }
}