import 'package:flutter/material.dart';
import 'package:flutter_pms_v2_team/views/screen/1st_row_all_task/task_details_screen.dart';
import 'package:flutter_pms_v2_team/views/screen/milestone/milestone_detail_pending_screen2.dart';
import 'package:flutter_pms_v2_team/views/screen/milestone/widget/segmented_control_widget.dart';
import 'package:flutter_pms_v2_team/views/screen/project_screen/widget/project_screen_banner_widget.dart';
import 'package:flutter_pms_v2_team/views/screen/project_screen/widget/segmented_control_versionlist_widget.dart';
import '../../widgets/const_color.dart';
import '../taskDetail/create_task_screen.dart';
 // Import the TaskDetailScreen

class TaskListScreen extends StatefulWidget {
  const TaskListScreen({Key? key});

  @override
  State<TaskListScreen> createState() => _TaskListScreenState();
}

class _TaskListScreenState extends State<TaskListScreen> {
  void _navigateToTaskDetailScreen() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const TaskDetailsScreen()), // Navigate to TaskDetailScreen
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const MilestoneDetailPendingScreen(),
                          ),
                        );
                      },
                      child: CustomRowWidget(labelText: 'Tasks',)),
                  const SizedBox(height: 25,),
                  GestureDetector(
                    onTap: _navigateToTaskDetailScreen, // Call the navigation function on tap
                    child: const SegemntedControlTaskList(),
                  ),
                ],
              ),
            ),
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: Align(
                alignment: Alignment.bottomCenter,
                child: ButtonBar(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(
                      height:45,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const CreateTaskScreen()),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          primary: AppColors.deepgreycolor, // Set background color to grey
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0), // Set circular corners
                          ),
                        ),
                        child: const Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(Icons.add), // Plus icon
                            SizedBox(width: 6.0), // Add some space between icon and text
                            Text('Create Task'), // Text
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
