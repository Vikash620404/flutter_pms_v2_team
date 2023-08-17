import 'package:flutter/material.dart';
import 'package:flutter_pms_v2_team/views/screen/task/widget/banner_widget.dart';
import 'package:flutter_pms_v2_team/views/screen/task/widget/date_picker_widget.dart';
import 'package:flutter_pms_v2_team/views/screen/task/widget/drop_down_button_widget.dart';
import 'package:flutter_pms_v2_team/views/screen/task/widget/edit_task_desc_container.dart';
import 'package:flutter_pms_v2_team/views/screen/task/widget/elevation_button_widget.dart';

import '../../widgets/global_app_color_widget.dart';


class CreateTask extends StatefulWidget {
  const CreateTask({Key? key}) : super(key: key);

  @override
  State<CreateTask> createState() => _CreateTaskState();
}

class _CreateTaskState extends State<CreateTask> {
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
                const HeaderWidget(text1: "Create Task"),
                const SizedBox(
                  height: 10,
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
                const SizedBox(
                  height: 20,
                ),
                GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    childAspectRatio: 3/2,
                    crossAxisCount: 3,
                  ),
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: containerColor2,
                          ),
                        ),
                        Positioned(
                          top: 0,
                          right: 0,
                          child: Image.asset('assets/images/close.png'),
                        ),
                      ],
                    );
                  },
                ),
                const SizedBox(
                  height: 80,
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: const BottomButton(text1: "Create Task"),
    );
  }
}
