import 'package:flutter/material.dart';
import 'package:flutter_pms_v2_team/views/screen/task/performance_screen.dart';
import 'package:flutter_pms_v2_team/views/screen/task/task_completed_details_screen.dart';
import 'package:flutter_pms_v2_team/views/screen/task/widget/banner_widget.dart';
import 'package:flutter_pms_v2_team/views/screen/task/widget/check_linethrough_widget.dart';

import '../../widgets/global_app_color_widget.dart';

class TaskCompletedScreen extends StatefulWidget {
  const TaskCompletedScreen({Key? key}) : super(key: key);

  @override
  State<TaskCompletedScreen> createState() => _TaskCompletedScreenState();
}

class _TaskCompletedScreenState extends State<TaskCompletedScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(
                  height: 20,
                ),
                GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const PerformanceScreen()),
                      );
                    },
                    child: const HeaderWidget(text1: 'Task Completed')),
                const SizedBox(
                  height: 20,
                ),
                // Wrap the ListView.builder with Expanded here
                ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 6,
                  itemBuilder: (context, index) {
                    return  GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const TaskCompletedDetailsScreen(),
                          ),
                        );
                      },
                      child: const Padding(
                        padding: EdgeInsets.only(top: 40.0),
                        child: TCheckBoxLineThrough(
                          profile2Image: 'assets/images/profile-2user.png',
                          nameText: 'Vikram Jha',
                          dotImage: 'assets/images/dot.png',
                          dueText: 'Due in 10 Days',
                          dueTextColor: subTitleTextColor,
                        ),
                      ),
                    );

                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
