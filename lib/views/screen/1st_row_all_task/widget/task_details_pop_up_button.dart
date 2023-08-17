import 'package:flutter/material.dart';
import 'package:flutter_pms_v2_team/views/screen/1st_row_all_task/delete_task_dialogue_screen.dart';
import 'package:flutter_pms_v2_team/views/screen/1st_row_all_task/task_status_dialogue_screen.dart';

import '../../../widgets/const_color.dart';
import '../../1st_row_all_task/edit_task_screen.dart';
import '../../taskDetail/create_task_screen.dart';



class TaskDetailTopUpMenu extends StatefulWidget {
  const TaskDetailTopUpMenu({Key? key}) : super(key: key);

  @override
  State<TaskDetailTopUpMenu> createState() => _TaskDetailTopUpMenuState();
}

class _TaskDetailTopUpMenuState extends State<TaskDetailTopUpMenu> {
  get boxShadowColor => null;

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<int>(
      icon: Image.asset('assets/images/more.png'),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: const BorderSide(color: AppColors.deepgreycolor)),
      surfaceTintColor: boxShadowColor,
      onSelected: (item) => handleClick(item),
      itemBuilder: (context) => [
        PopupMenuItem<int>(
          value: 0,
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const EditTask(), // Assuming EditTaskPage is the name of your page
                ),
              );
            },
            child: Row(
              children: [
                Image.asset('assets/images/pencil.png'),
                const SizedBox(width: 8),
                const Text('Edit task'),
              ],
            ),
          ),
        ),

        PopupMenuItem<int>(
          value: 0,
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const TaskStatusScreen()),
              );
            },
            child: Row(
              children: [
                Image.asset('assets/images/tick-circle.png'),
                const SizedBox(
                  width: 8,
                ),
                const Text('Mark as completed'),
              ],
            ),
          ),
        ),
        PopupMenuItem<int>(
            value: 1,
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const DeleteTaskDialogScreen()),
                );
              },
              child: Row(
                children: [
                  Image.asset('assets/images/trash.png'),
                  const SizedBox(
                    width: 8,
                  ),
                  const Text('Delete task'),
                ],
              ),
            )),
      ],
    );
  }

  void handleClick(int item) {
    switch (item) {
      case 0:
        debugPrint("");
        break;
      case 1:
        debugPrint("");
        break;
    }
  }
}