import 'package:flutter/material.dart';

import '../../1st_row_all_task/widget/edit_task_topup_menu.dart';
import '../../1st_row_all_task/widget/task_details_pop_up_button.dart';
import '../../frontHomeScreen/widget/pop_up_menu_widget.dart';


class HeaderWidget2 extends StatefulWidget {
  final String text1;

  const HeaderWidget2({Key? key, required this.text1}) : super(key: key);

  @override
  State<HeaderWidget2> createState() => _HeaderWidget2State();
}

class _HeaderWidget2State extends State<HeaderWidget2> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          height: 25,
          width: 25,
          decoration: BoxDecoration(
              border: Border.all(color: Colors.black26),
              borderRadius: BorderRadius.circular(5),
              color: Colors.white),
          child: Transform.scale(
              scale: 1, child: Image.asset("assets/images/arrow-left.png")),
        ),
        Expanded(
          child: Text(
            widget.text1,
            textAlign: TextAlign.center,
            style: const TextStyle(
                fontSize: 17,
                color: Color(0xff595454),
                fontWeight: FontWeight.w700),
          ),
        ),
        const SizedBox(
          height: 55,
          width: 55,child: TaskDetailTopUpMenu(),
        ),
      ],
    );
  }
}