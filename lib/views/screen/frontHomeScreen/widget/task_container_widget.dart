import 'package:flutter/material.dart';
import 'package:flutter_pms_v2_team/views/widgets/toggle_checked_box.dart';

import '../../../widgets/const_color.dart';

class TaskContainer extends StatefulWidget {
  const TaskContainer({super.key});

  @override
  _TaskContainerState createState() => _TaskContainerState();
}

class _TaskContainerState extends State<TaskContainer> {
  bool isContainer1Selected = false;
  bool isContainer2Selected = false;
  bool isContainer3Selected = false;

  void _toggleContainerColor(int containerIndex) {
    setState(() {
      if (containerIndex == 1) {
        isContainer1Selected =!isContainer1Selected;
       isContainer2Selected = false;
        isContainer3Selected = false;
      } else if (containerIndex == 1) {
        isContainer1Selected = false;
       isContainer2Selected = !isContainer2Selected;
        isContainer3Selected = false;
      } else if (containerIndex == 1) {
        isContainer1Selected = false;
      isContainer2Selected = false;
        isContainer3Selected = !isContainer3Selected;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          GestureDetector(
            onTap: () {
              _toggleContainerColor(1);
            },
            child: Container(
              height: 165,
              width: 190,
              decoration: BoxDecoration(
                color: isContainer1Selected ? const Color(0xFFC6C6C6) : const Color(0xFFE6E6E6),
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 18.0,top: 18),
                    child: Row(
                      children: [
                        Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                            color: AppColors.whitecolor,
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: Transform.scale(
                            scale: 0.7, // Adjust the scale factor as needed
                            child: Image.asset('assets/images/message_icon.png'),
                          ),
                        ),
                        const SizedBox(width: 10,),
                        const Text("All Task",style: TextStyle(fontWeight: FontWeight.bold,color:AppColors.whitecolor,fontSize: 18),)

                      ],
                    ),
                  ),
                  const SizedBox(height: 15,),
                  const Padding(
                    padding: EdgeInsets.only(right: 100.0),
                    child: Text("60 task",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 15,color: AppColors.whitecolor),),

                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15.0,left: 23),
                    child: Row(
                      children: [
                        ToggleableCheckBox(
                            borderColor: AppColors.whitecolor
                        ),
                        const SizedBox(width: 10,),
                        const Text("26/60 completed",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 15,color: AppColors.whitecolor),),
                      ],

                    ),
                  ),
                  const SizedBox(height: 15,),
                  const Padding(
                    padding: EdgeInsets.only(right: 25.0),
                    child: Text("10th Apr-20th Apr",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 15,color: AppColors.whitecolor),),
                  ),

                ],
              ),
              // ... rest of the container's content
            ),
          ),
          const SizedBox(width: 20),
          GestureDetector(
            onTap: () {
              _toggleContainerColor(3);
            },
            child: Container(
              height: 165,
              width: 190,
              decoration: BoxDecoration(
                color: isContainer3Selected ? const Color(0xFFC6C6C6) : const Color(0xFFE6E6E6),
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 18.0,top: 18),
                    child: Row(
                      children: [
                        Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                            color:  AppColors.greycolor,
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: Transform.scale(
                            scale: 0.8, // Adjust the scale factor as needed
                            child: Padding(
                              padding: const EdgeInsets.only(right: 2.0),
                              child: Image.asset('assets/images/ui_update_icon.png'),
                            ),
                          ),
                        ),
                        const SizedBox(width: 10,),
                        const Text("UI Update",style: TextStyle(fontWeight: FontWeight.bold,color: AppColors.deepgreycolor,fontSize: 18),)

                      ],
                    ),
                  ),
                  const SizedBox(height: 15,),
                  const Padding(
                    padding: EdgeInsets.only(right: 100.0),
                    child: Text("6 task",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 15,color: AppColors.deepgreycolor),),

                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15.0,left: 23),
                    child: Row(
                      children: [
                        ToggleableCheckBox(
                            borderColor: AppColors.whitecolor
                        ),
                        const SizedBox(width: 10,),
                        const Text("6/6 completed",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 15,color: AppColors.deepgreycolor),),
                      ],

                    ),
                  ),
                  const SizedBox(height: 15,),
                  const Padding(
                    padding: EdgeInsets.only(right: 35.0),
                    child: Text("10th Apr-20th Apr",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 15,color: AppColors.deepgreycolor),),
                  ),

                ],
              ),
              // ... rest of the container's content
            ),
          ),
          const SizedBox(width: 20),
          GestureDetector(
            onTap: () {
              _toggleContainerColor(3);
            },
            child: Container(
              height: 165,
              width: 190,
              decoration: BoxDecoration(
                color: isContainer3Selected ? const Color(0xFFC6C6C6) : const Color(0xFFE6E6E6),
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 18.0,top: 18),
                    child: Row(
                      children: [
                        Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                            color:  AppColors.greycolor,
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: Transform.scale(
                            scale: 0.8, // Adjust the scale factor as needed
                            child: Padding(
                              padding: const EdgeInsets.only(right: 2.0),
                              child: Image.asset('assets/images/ui_update_icon.png'),
                            ),
                          ),
                        ),
                        const SizedBox(width: 10,),
                        const Text("UI Update",style: TextStyle(fontWeight: FontWeight.bold,color: AppColors.deepgreycolor,fontSize: 18),)

                      ],
                    ),
                  ),
                  const SizedBox(height: 15,),
                  const Padding(
                    padding: EdgeInsets.only(right: 100.0),
                    child: Text("6 task",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 15,color: AppColors.deepgreycolor),),

                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15.0,left: 23),
                    child: Row(
                      children: [
                        ToggleableCheckBox(
                            borderColor: AppColors.whitecolor
                        ),
                        const SizedBox(width: 10,),
                        const Text("6/6 completed",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 15,color: AppColors.deepgreycolor),),
                      ],

                    ),
                  ),
                  const SizedBox(height: 15,),
                  const Padding(
                    padding: EdgeInsets.only(right: 35.0),
                    child: Text("10th Apr-20th Apr",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 15,color: AppColors.deepgreycolor),),
                  ),

                ],
              ),
              // ... rest of the container's content
            ),
          ),
        ],
      ),
    );
  }
}
