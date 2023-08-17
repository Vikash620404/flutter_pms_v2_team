import 'package:flutter/material.dart';

import '../../../widgets/global_app_color_widget.dart';


class TaskPopupMenu extends StatefulWidget {
  const TaskPopupMenu({Key? key}) : super(key: key);

  @override
  State<TaskPopupMenu> createState() => _TaskPopupMenuState();
}

class _TaskPopupMenuState extends State<TaskPopupMenu> {
  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<int>(
      icon: Image.asset('assets/images/more.png'),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: const BorderSide(color: popupBorderColor)),
      surfaceTintColor: boxShadowColor,
      onSelected: (item) => handleClick(item),
      itemBuilder: (context) => [
        PopupMenuItem<int>(
          value: 0,
          child: Row(
            children: [
              Image.asset('assets/images/edit-2.png'),
              const SizedBox(
                width: 8,
              ),
              const Text('Edit task'),
            ],
          ),
        ), PopupMenuItem<int>(
          value: 0,
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
        PopupMenuItem<int>(
            value: 1,
            child: Row(
              children: [
                Image.asset('assets/images/trash.png'),
                const SizedBox(
                  width: 8,
                ),
                const Text('Delete task'),
              ],
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
