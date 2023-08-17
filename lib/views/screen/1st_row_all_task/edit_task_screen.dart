import 'package:flutter/material.dart';
import 'package:flutter_pms_v2_team/views/screen/task/widget/date_picker_widget.dart';
import 'package:flutter_pms_v2_team/views/screen/task/widget/drop_down_button_widget.dart';
import 'package:flutter_pms_v2_team/views/screen/task/widget/edit_task_desc_container.dart';
import 'package:flutter_pms_v2_team/views/screen/task/widget/edit_task_status_card_widget.dart';
import 'package:flutter_pms_v2_team/views/screen/task/widget/elevation_button_widget.dart';
import 'package:flutter_pms_v2_team/views/screen/task/widget/header_widget2.dart';

import '../../widgets/global_app_color_widget.dart';

class EditTask extends StatefulWidget {
  const EditTask({Key? key}) : super(key: key);

  @override
  State<EditTask> createState() => _EditTaskState();
}

class _EditTaskState extends State<EditTask> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                const HeaderWidget2(
                  text1: "Edit Task",
                ),
                const SizedBox(
                  height: 40,
                ),
                const EditTaskStatus(
                  text1: "Task Status:",
                  text2: "Completed",
                  text3: "Edit",
                  text4: "Set Task Status:",
                  image1: "assets/images/edit_icon.png",
                  text5: "50%",
                ),
                const SizedBox(
                  height: 40,
                ),
                const Text(
                  "Task Description",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: blackColor),
                ),
                const SizedBox(
                  height: 10,
                ),
                const EditTaskDescriptionContainer(
                  text2:
                  'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Least sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
                ),
                const SizedBox(
                  height: 40,
                ),
                const Text(
                  "Start Date",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: blackColor),
                ),
                const SizedBox(
                  height: 10,
                ),
                const TDatePicker(),
                const SizedBox(
                  height: 40,
                ),
                const Text(
                  "Estimated Date",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: blackColor),
                ),
                const SizedBox(
                  height: 10,
                ),
                const EditTaskDescriptionContainer(text2: "20"),
                const SizedBox(
                  height: 40,
                ),
                RichText(
                  text: const TextSpan(
                    children: [
                      TextSpan(text: "Assigned Member"),
                      WidgetSpan(
                        child: SizedBox(
                          width: 4,
                        ),
                      ),
                      TextSpan(text: "(optional)"),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const MyDropDownButton(),
                const SizedBox(
                  height: 40,
                ),
                RichText(
                  text: const TextSpan(
                    children: [
                      TextSpan(text: "Add Photo"),
                      WidgetSpan(
                        child: SizedBox(
                          width: 4,
                        ),
                      ),
                      TextSpan(text: "(optional)"),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Flexible(
                  fit: FlexFit.loose,
                  child: Container(
                    height: 128,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: containerColor2,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("assets/images/gallery-add.png"),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          "Upload Image",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                              color: subTitleTextColor),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: const BottomButton(
        text1: 'Save Changes',
      ),
    );
  }
}
