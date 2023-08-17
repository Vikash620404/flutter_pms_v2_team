import 'package:flutter/material.dart';
import 'package:flutter_pms_v2_team/views/screen/task/problem_task_list_screen.dart';
import 'package:flutter_pms_v2_team/views/screen/task/widget/banner_widget.dart';
import 'package:flutter_pms_v2_team/views/screen/task/widget/read_more_widget.dart';
import 'package:flutter_pms_v2_team/views/screen/task/widget/task_status2_widget.dart';
import 'package:flutter_pms_v2_team/views/screen/task/widget/task_status_widget.dart';


import '../../widgets/global_app_color_widget.dart';


class ProblemTaskDetailScreen extends StatefulWidget {
  const ProblemTaskDetailScreen({Key? key}) : super(key: key);

  @override
  State<ProblemTaskDetailScreen> createState() => _ProblemTaskDetailScreenState();
}

class _ProblemTaskDetailScreenState extends State<ProblemTaskDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                          builder: (context) => const ProblemTaskListScreen(),
                        ),
                      );
                    },
                    child: const HeaderWidget(text1: 'Task Details')),
                const SizedBox(
                  height: 40,
                ),
                const TaskStatus(
                  text1: "Task Status:",
                  text2: "In progress",
                  text3: "Edit",
                  text4: "Task Percentage:",
                  image1: "assets/images/edit_icon.png",
                  text5: "50%",
                  text6: 'Mark task as solved',
                ),
                const SizedBox(
                  height: 40,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: boxErrorColor,
                      border: Border.all(color: redColor),
                      borderRadius: BorderRadius.circular(8)),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          children: [
                            Image.asset('assets/images/danger.png'),
                            const SizedBox(
                              width: 2,
                            ),
                            const Text(
                              'Problem Details:',
                              style: TextStyle(
                                color: titleTextColor,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const TReadMoreText(
                          readMoreText:
                          'Lorem ipsum dolor sit amet consectetur. Commodo varius iaculis in imperdiet faucibus pretium sem adipiscing, A.c enim netus dignissim enim diam Ridiculos Cras dolorurna hac- Vulputate ornare eu dolor erat in sitmorbi laoreet Lorem ipsum dolor sit amet\n\nconsectetur, Commodo varius iaculis in imperdiet faucibus pretium sem adipiscing. Ac enim netus dignissim enim diam ac ac- Ridiculus cras dolor urna hac- Vulputate ornare eu dolor erat in sit morbi laoreet.Lorem ipsum dolor sit amet consectetur. Commodo varius iaculis in\n\nimperdiet faucibus pretfum Sem adipiscing_ AC enim netus dignissim enim diam ac ac. Ridiculus cras dolor urna hat. Vulputate ornare eu dolor enat in Sit morbi laoreet.',
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        GestureDetector(
                          onTap: () {
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(
                            //     builder: (context) => const
                            //     SuggestionsScreen(),
                            //   ),
                            // );
                          },
                          child: Container(
                            height: 49,
                            decoration: BoxDecoration(
                              color: whiteColor,
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(color: containerBorderColor),
                            ),
                            child: const Center(
                              child: Text(
                                "View suggestions",
                                style: TextStyle(
                                    color: taskTextColor2,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                const TStatusCard(
                  statusImage: "assets/images/status.png",
                  statusText: "Status:",
                  statusText2: "In progress",
                  overDueContainerBorderColor: containerBorderColor,
                  overDueContainerColor: whiteColor,
                  overDueColor: subTitleTextColor,
                  layerImage: "assets/images/layer2.png",
                  projectTitleText: "project Title:",
                  serviceText: "I-service",
                  calendarImage: "assets/images/calendar.png",
                  durationText: "Duration:",
                  dateText: "May 12th - Aug 20th",
                  timerImage: "assets/images/timer1.png",
                  daysRemainingText: "Days Remaining:",
                  overdueText: "Due in 6 days",
                  overDueTextColor: subTitleTextColor,
                  profileImage: "assets/images/profile.png",
                  assignedManagerText: "Assigned Manger:",
                  nameText: "Vikram Jha",
                  calendarImage2: "assets/images/calendar.png",
                  assignDateText: "Assigned Date:",
                  yearText: "August 20th 2023",
                ),
                const SizedBox(
                  height: 40,
                ),
                 Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Description:',
                      style: TextStyle(
                        color: titleTextColor,
                        fontSize: 14,
                      ),
                    ),
                    SizedBox(height: 12),
                    TReadMoreText(
                      readMoreText:
                      'Lorem ipsum dolor sit amet consectetur. Commodo varius iaculis in imperdiet faucibus pretium sem adipiscing, A.c enim netus dignissim enim diam Ridiculos Cras dolorurna hac- Vulputate ornare eu dolor erat in sitmorbi laoreet Lorem ipsum dolor sit amet\n\nconsectetur, Commodo varius iaculis in imperdiet faucibus pretium sem adipiscing. Ac enim netus dignissim enim diam ac ac- Ridiculus cras dolor urna hac- Vulputate ornare eu dolor erat in sit morbi laoreet.Lorem ipsum dolor sit amet consectetur. Commodo varius iaculis in\n\nimperdiet faucibus pretfum Sem adipiscing_ AC enim netus dignissim enim diam ac ac. Ridiculus cras dolor urna hat. Vulputate ornare eu dolor enat in Sit morbi laoreet.',
                    ),
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
                          child: Image.asset("assets/images/photo.png")),
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
                          child: Image.asset("assets/images/photo.png")),
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
                          child: Image.asset("assets/images/photo.png")),
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
