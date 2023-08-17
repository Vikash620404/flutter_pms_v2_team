import 'package:flutter/material.dart';
import 'package:flutter_pms_v2_team/views/screen/task/widget/header_widget2.dart';
import 'package:flutter_pms_v2_team/views/screen/task/widget/read_more_widget.dart';
import 'package:flutter_pms_v2_team/views/screen/task/widget/task_status2_widget.dart';
import 'package:flutter_pms_v2_team/views/screen/task/widget/task_status_widget.dart';

import '../../widgets/global_app_color_widget.dart';
import '../frontHomeScreen/front_home_page.dart';


class TaskDetailsScreen extends StatefulWidget {
  const TaskDetailsScreen({Key? key}) : super(key: key);

  @override
  State<TaskDetailsScreen> createState() => _TaskDetailsScreenState();
}

class _TaskDetailsScreenState extends State<TaskDetailsScreen> {
  bool? showList;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                onTap: () {
              Navigator.push(
              context,
              MaterialPageRoute(
              builder: (context) => const FrontHomePage(),
              ),
              );
              },
                    child:
                const HeaderWidget2(text1: "Task Details")),
                const SizedBox(
                  height: 40,
                ),
                const TaskStatus(
                  text1: "Task Status:",
                  text2: "In progress",
                  text3: "Edit",
                  text4: "Task Percentage:",
                  image1: "assets/images/pencil.png",
                  text5: "0%",
                  text6: 'Mark task as solved',
                ),
                const SizedBox(
                  height: 40,
                ),
                const TStatusCard(
                  statusImage: "assets/images/status_icon.png",
                  statusText: "Status:",
                  statusText2: "Pending",
                  overDueContainerBorderColor: containerBorderColor,
                  overDueContainerColor: whiteColor,
                  overDueColor: subTitleTextColor,
                  layerImage: "assets/images/layer2.png",
                  projectTitleText: "project Title:",
                  serviceText: "I-service",
                  calendarImage: "assets/images/calendar-2.png",
                  durationText: "Duration:",
                  dateText: "May 12th - Aug 20th",
                  timerImage: "assets/images/watch.png",
                  daysRemainingText: "Days Remaining:",
                  overdueText: "Due in 6 days",
                  overDueTextColor: subTitleTextColor,
                  profileImage: "assets/images/profile.png",
                  assignedManagerText: "Assigned Manger:",
                  nameText: "Vikram Jha",
                  calendarImage2: "assets/images/calendar-2.png",
                  assignDateText: "Assigned Date:",
                  yearText: "August 20th 2023",
                ),
                const SizedBox(
                  height: 40,
                ),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Description:',
                      style: TextStyle(
                        color: titleTextColor,
                        fontSize: 14,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TReadMoreText(
                      readMoreText:
                      'Lorem ipsum dolor sit amet consectetur. Commodo varius iaculis in imperdiet faucibus pretium sem adipiscing, A.c enim netus dignissim enim diam Ridiculos Cras dolorurna hac- Vulputate ornare eu dolor erat in sitmorbi laoreet Lorem ipsum dolor sit amet\n\nconsectetur, Commodo varius iaculis in imperdiet faucibus pretium sem adipiscing. Ac enim netus dignissim enim diam ac ac- Ridiculus cras dolor urna hac- Vulputate ornare eu dolor erat in sit morbi laoreet.Lorem ipsum dolor sit amet consectetur. Commodo varius iaculis in\n\nimperdiet faucibus pretfum Sem adipiscing_ AC enim netus dignissim enim diam ac ac. Ridiculus cras dolor urna hat. Vulputate ornare eu dolor enat in Sit morbi laoreet.',
                    )
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                const Text(
                  'Images:',
                  style: TextStyle(
                    color: titleTextColor,
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: containerColor2),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: containerColor2,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: containerColor2,
                        ),
                      ),
                    ),

                  ],
                ),
                const SizedBox(
                  height: 50,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}