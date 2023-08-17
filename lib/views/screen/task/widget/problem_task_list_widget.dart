import 'package:flutter/material.dart';
import 'package:flutter_pms_v2_team/views/screen/task/widget/read_more_widget.dart';

import 'package:roundcheckbox/roundcheckbox.dart';

import '../../../widgets/const_color.dart';
import '../../../widgets/global_app_color_widget.dart';
import '../../frontHomeScreen/widget/pop_up_menu_widget.dart';


class TCheckBoxList extends StatefulWidget {
  final String profile2Image;
  final String nameText;
  final String dotImage;
  final String dueText;
  final Color? dueTextColor; // Add a new parameter for dueText color

  const TCheckBoxList({
    Key? key,
    required this.profile2Image,
    required this.nameText,
    required this.dotImage,
    required this.dueText,
    this.dueTextColor, // Initialize the new parameter
  }) : super(key: key);

  @override
  State<TCheckBoxList> createState() => _TCheckBoxListState();
}

class _TCheckBoxListState extends State<TCheckBoxList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppColors.containerColor2,
          border: Border.all(color: AppColors.containerColor2)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            RoundCheckBox(checkedColor: checkedBoxCheckedColor,
              onTap: (selected) {},
              size: 25,
            ),
            Expanded(
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 12.0),
                    child: TReadMoreText(
                      readMoreText:
                      "Here's a rough sample text on the topic of Benefits of Regular Exercise Regular exercise offers numerous benefits for both physical and mental well-being. Engaging in physical activity on a consistent basis has been proven to enhance cardiovascular. Engaging in physical activity on a consistent basis has been proven to enhance cardiovascular",
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      const SizedBox(
                        width: 12,
                      ),
                      Image.asset(widget.profile2Image),
                      const SizedBox(
                        width: 8,
                      ),
                      Text(
                        widget.nameText,
                        style: const TextStyle(
                            color: AppColors.subTitleTextColor,
                            fontSize: 14,
                            fontWeight: FontWeight.w400),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Image.asset(widget.dotImage),
                      const SizedBox(
                        width: 8,
                      ),
                      Expanded(
                        child: Text(
                          widget.dueText,
                          style: TextStyle(
                            // Customize the dueText color
                              color: widget.dueTextColor,
                              // Use the specified color
                              fontWeight: FontWeight.w400,
                              fontSize: 14),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            const TaskPopupMenu(),
          ],
        ),
      ),
    );
  }
}
