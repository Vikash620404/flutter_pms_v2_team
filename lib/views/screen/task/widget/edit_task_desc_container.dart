import 'package:flutter/material.dart';

import '../../../widgets/global_app_color_widget.dart';



class EditTaskDescriptionContainer extends StatefulWidget {
  final String text2;

  const EditTaskDescriptionContainer({
    Key? key,
    required this.text2,
  }) : super(key: key);

  @override
  State<EditTaskDescriptionContainer> createState() => _EditTaskDescriptionContainerState();
}

class _EditTaskDescriptionContainerState extends State<EditTaskDescriptionContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
          border: Border.all(color: const Color(0xFFE9E8E8)),
          borderRadius: BorderRadius.circular(10)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[

          Text(
            widget.text2,
            style: const TextStyle(
              color: subTitleTextColor,
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}